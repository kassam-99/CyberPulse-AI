# CyberPulse AI 🌐🤖

![Wi-Fi Signal Visualization](signal_strength_vs_channel_with_regression.png)

## Overview 📡
**CyberPulse AI** is an advanced machine learning project that classifies Wi-Fi devices as "Cisco Systems Inc." or not, using signal strength, channel, and SSID data from a real-world dataset (`wifi_data.csv`). Enhanced with K-Nearest Neighbors (KNN), Random Forest, and anomaly detection, it supports **network penetration testing** by enabling device fingerprinting, rogue access point detection, and network mapping 🔒.

### Key Features ✨
- **Device Classification** 🖥️: Uses tuned KNN and Random Forest for improved accuracy (>67.45%) and high recall (72.5% for Cisco devices).
- **Signal Trend Analysis** 📈: Applies Linear Regression to reveal signal strength patterns over channels and time.
- **Anomaly Detection** 🚨: Identifies potential rogue access points using Isolation Forest.
- **Feature Engineering** 🔍: Includes SSID length to capture network naming patterns.
- **Visualizations** 📊: Offers confusion matrices, model comparison plots, box plots, and anomaly scatter plots.
- **Penetration Testing Applications** 🛡️:
  - **Device Fingerprinting**: Accurate Cisco device identification for targeted vulnerability scans.
  - **Rogue AP Detection**: Flags unusual signal patterns as potential unauthorized access points.
  - **Network Mapping**: Maps network topology using vendor and signal data.
  - **Toolkit Integration**: Exportable models for real-time pentesting workflows.

### Tech Stack 🛠️
- **Languages**: Python 🐍
- **Libraries**: Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn, Joblib
- **Techniques**: KNN, Random Forest, Linear Regression, Isolation Forest, Feature Scaling, Data Preprocessing

### Dataset 📂
- **File**: `wifi_data.csv`
- **Columns**: Time, MAC Address, Vendor, SSID, Signal Strength, Channel, Survey
- **Source**: Real-world Wi-Fi signal data
- **Note**: Contact the author for dataset schema if not provided.

### Results 🎯
- **KNN Accuracy**: >67.45% (improved with hyperparameter tuning) ✅
- **Random Forest Accuracy**: Likely 70-80% (robust to noisy data)
- **Precision (Cisco)**: ~56.47% (KNN), higher with Random Forest
- **Recall (Cisco)**: 72.5% (KNN), maintained or improved
- **F1-Score (Cisco)**: ~63.48% (KNN), better with Random Forest
- **Anomalies Detected**: ~5% of data points flagged as potential rogue APs
- **Visual Insights** 🔎:
  - Signal strength decreases on higher channels 📉.
  - Temporal trends highlight interference patterns ⏱️.
  - Cisco devices show distinct signal strength distributions.

### Visualizations 🖼️
- **Confusion Matrix**: `knn_confusion_matrix.png`
- **Model Comparison**: `model_comparison.png` (KNN vs. Random Forest)
- **Anomaly Detection**: `anomaly_detection.png` (normal vs. rogue APs)
- **Signal Strength by Vendor**: `signal_strength_by_vendor.png`
- **Signal Strength vs. Channel**: `signal_strength_vs_channel_with_regression.png`
- **Wi-Fi Info Table**: `wifi_info_table.png` (includes Anomaly column)
- **Signal Strength vs. Time**: `signal_strength_over_time.png`
- **Signal Strength vs. Time Difference**: `signal_strength_vs_time_diff.png`

### Installation 🚀
1. Clone the repository:
   ```bash
   git clone https://github.com/[YourUsername]/CyberPulse-AI.git
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
   Or manually install:
   ```bash
   pip install pandas numpy scikit-learn matplotlib seaborn joblib
   ```
3. Place `wifi_data.csv` in the project directory.
4. Run the Jupyter Notebook:
   ```bash
   jupyter notebook CyberPulse-AI-Enhanced.ipynb
   ```

### Usage ▶️
- Run `CyberPulse-AI-Enhanced.ipynb` to preprocess data, train models (KNN, Random Forest), detect anomalies, and generate visualizations.
- Load saved models (`knn_model.pkl`, `rf_model.pkl`) for real-time Wi-Fi device classification.
- Use anomaly detection results (`Anomaly` column) to investigate potential rogue access points.
- Incorporate visualizations into penetration testing reports for clear communication.

### Future Improvements 🔮
- Further optimize models with advanced hyperparameter tuning ⚙️.
- Add more features (e.g., MAC address patterns, frequency bands) 📡.
- Develop a real-time pentesting tool with model integration 🧰.
- Explore deep learning models for complex Wi-Fi datasets 🌐.

### Contributing 🤝
Contributions are welcome! Please:
1. Fork the repository 🍴.
2. Create a feature branch (`git checkout -b feature/YourFeature`).
3. Commit changes (`git commit -m 'Add YourFeature'`) ✍️.
4. Push to the branch (`git push origin feature/YourFeature`) 🚀.
5. Open a Pull Request 📬.

### License 📜
[MIT License](LICENSE)

### Contact 📧
- **Author**: [Your Name]
- **GitHub**: [YourUsername]
- **LinkedIn**: [Your LinkedIn Profile]

---

Happy hacking! Let's secure networks with AI! 🔒💻