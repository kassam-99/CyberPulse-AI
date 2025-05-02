# CyberPulse AI 🌐🤖

![Wi-Fi Signal Visualization](signal_strength_vs_channel_with_regression.png)

## Overview 📡
**CyberPulse AI** is a machine learning project designed to classify Wi-Fi devices as "Cisco Systems Inc." or not, using signal strength and channel data from a real-world dataset (`wifi_data.csv`). By leveraging K-Nearest Neighbors (KNN) and Linear Regression, the project identifies devices and analyzes signal trends, with applications in **network penetration testing** 🔒.

### Key Features ✨
- **Device Classification** 🖥️: Uses KNN to achieve 67.45% accuracy and 72.5% recall for Cisco devices.
- **Signal Trend Analysis** 📈: Applies Linear Regression to uncover patterns in signal strength over channels and time.
- **Visualizations** 📊: Includes confusion matrix heatmaps, scatter plots, and data tables for intuitive insights.
- **Penetration Testing Applications** 🛡️:
  - **Device Fingerprinting**: Identifies Cisco hardware for targeted vulnerability assessments 🔍.
  - **Rogue AP Detection**: Detects anomalies in signal patterns 🚨.
  - **Network Mapping**: Maps network topology for security audits 🗺️.

## Tech Stack 🛠️
- **Languages**: Python 🐍
- **Libraries**: Pandas, Scikit-learn, Matplotlib, Seaborn
- **Techniques**: KNN, Linear Regression, Feature Scaling, Data Preprocessing

## Dataset 📂
- **File**: `wifi_data.csv`
- **Columns**: Time, MAC Address, Vendor, SSID, Signal Strength, Channel, Survey
- **Source**: Real-world Wi-Fi signal data

## Results 🎯
- **Accuracy**: 67.45% ✅
- **Precision (Cisco)**: 56.47%
- **Recall (Cisco)**: 72.5%
- **F1-Score (Cisco)**: 63.48%
- **Visual Insights** 🔎:
  - Signal strength decreases on higher channels 📉.
  - Temporal trends reveal potential interference patterns ⏱️.

## Visualizations 🖼️
- **Confusion Matrix**: `knn_confusion_matrix.png`
- **Signal Strength vs. Channel**: `signal_strength_vs_channel_with_regression.png`
- **Wi-Fi Info Table**: `wifi_info_table.png`
- **Signal Strength vs. Time Difference**: `signal_strength_vs_time_diff.png`

## Installation 🚀
1. Clone the repository:
   ```bash
   git clone https://github.com/kassam-99/CyberPulse-AI.git
