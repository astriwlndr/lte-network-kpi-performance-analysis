# 📊 LTE Network KPI Performance Analysis

This project analyzes LTE network performance across multiple regions in Indonesia using **simulated (dummy) telecom data**. It demonstrates how data analytics can monitor and evaluate key LTE KPIs such as signal quality, throughput, latency, and network congestion.

---

## Project Overview
Telecom networks generate large volumes of performance data. Analyzing these KPIs helps identify issues, understand congestion, and improve service quality. Key KPIs explored:

- **RSRP** – Signal strength  
- **SINR** – Signal quality  
- **Downlink/Uplink throughput** – Data rates  
- **Latency** – Network responsiveness  
- **Active users** – Network load  

---

## Dataset
- **Size:** 10,000 simulated measurements  
- **Columns:**

| Column                | Description                             |
|-----------------------|-----------------------------------------|
| timestamp             | Time of network measurement             |
| operator              | Mobile network operator                 |
| region                | Geographic region in Indonesia          |
| province              | Province                                |
| city                  | City                                    |
| latitude              | Geographic latitude                     |
| longitude             | Geographic longitude                    |
| enodeb_id             | Base station ID                          |
| cell_id               | Cell sector ID                           |
| rsrp_dbm              | Signal strength (dBm)                   |
| sinr_db               | Signal quality (dB)                     |
| dl_throughput_mbps    | Downlink throughput (Mbps)              |
| ul_throughput_mbps    | Uplink throughput (Mbps)                |
| latency_ms            | Network latency (ms)                     |
| active_users          | Number of active users                  |
| bandwidth_mhz         | LTE bandwidth                            |

> **Note:** All data is **dummy/simulated**, not from live networks.

---

## Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn  
- **SQL:** KPI aggregation and analysis  
- **Tableau:** Interactive dashboard for KPI visualization  

---

## Key Analysis
- **Signal vs Throughput:** Higher SINR → higher downlink throughput  
- **Congestion Analysis:** Latency increases with more active users  
- **Operator Comparison:** Throughput and latency differences across operators  
- **Hourly Trends:** Identify peak usage periods  

---

## Tableau Dashboard
Interactive dashboard visualizations:  
- Operator performance comparison  
- Signal quality vs throughput  
- Network congestion analysis  
- Hourly performance trends  
- RSRP & SINR distributions  

**Dashboard**  
![Dashboard Preview](dashboard_screenshot.png)

> Filters allow exploring performance metrics by operator and region.

---

## Key Insights
- Strong correlation between **SINR** and throughput  
- **Latency** rises with network load  
- Operator performance varies due to capacity differences  
- Peak hours affect throughput and latency  
