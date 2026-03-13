-- =====================================================
-- Network Performance Analysis
-- Dataset: Dummy dataset contains simulated LTE/5G network KPI measurements across multiple regions in Indonesia
-- =====================================================

-- 1 Average Throughput per Operator
SELECT
    operator,
    AVG(dl_throughput_mbps) AS avg_dl_throughput
FROM `ascendant-altar-489312-r5.network_dataset.network_dataset`
GROUP BY operator
ORDER BY avg_dl_throughput DESC;

-- 2 Network Performance by Region
SELECT
    region,
    AVG(dl_throughput_mbps) AS avg_dl_throughput,
    AVG(latency_ms) AS avg_latency
FROM `ascendant-altar-489312-r5.network_dataset.network_dataset`
GROUP BY region
ORDER BY avg_dl_throughput DESC;

-- 3 Congestion Analysis
SELECT
    CASE
        WHEN active_users < 50 THEN 'Low Load'
        WHEN active_users < 120 THEN 'Medium Load'
        ELSE 'High Load'
    END AS traffic_level,

    AVG(dl_throughput_mbps) AS avg_throughput,
    AVG(latency_ms) AS avg_latency
FROM `ascendant-altar-489312-r5.network_dataset.network_dataset`
GROUP BY traffic_level;

-- 4 Signal Quality Categories
SELECT
    CASE
        WHEN rsrp_dbm > -80 THEN 'Excellent'
        WHEN rsrp_dbm > -90 THEN 'Good'
        WHEN rsrp_dbm > -100 THEN 'Fair'
        ELSE 'Poor'
    END AS coverage_quality,

    COUNT(*) AS samples,
    AVG(dl_throughput_mbps) AS avg_throughput
FROM `ascendant-altar-489312-r5.network_dataset.network_dataset`
GROUP BY coverage_quality
ORDER BY avg_throughput DESC;

-- 5 Peak Hour Analysis
SELECT
    EXTRACT(HOUR FROM timestamp) AS hour,
    AVG(dl_throughput_mbps) AS avg_throughput,
    AVG(latency_ms) AS avg_latency
FROM `ascendant-altar-489312-r5.network_dataset.network_dataset`
GROUP BY hour
ORDER BY hour;