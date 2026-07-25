# CyberPulse AI - reproducible ML notebook environment
# Pure Jupyter/scikit-learn workload. No network privileges required.
FROM python:3.12-slim

# - No .pyc files, unbuffered logs, no pip cache (smaller image)
# - Agg backend so matplotlib works headless (nbconvert) without a display
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    MPLBACKEND=Agg

WORKDIR /app

# Python dependencies first so the layer caches across notebook edits
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Non-root user (owns /app so notebook outputs are writable)
RUN useradd --create-home --uid 1000 appuser

# Bake the notebook in so the image runs standalone; mounting your project
# dir over /app at runtime (see README) supplies wifi_data.csv and persists
# the generated .pkl/.png artifacts back to the host.
COPY CyberPulse-AI.ipynb ./
RUN chown -R appuser:appuser /app

USER appuser

# Jupyter Lab
EXPOSE 8888

# Default: interactive Jupyter Lab. Override the command (see README) to run
# the notebook headless via nbconvert.
CMD ["jupyter", "lab", \
     "--ip=0.0.0.0", "--port=8888", "--no-browser", \
     "--ServerApp.token=", "--ServerApp.password="]
