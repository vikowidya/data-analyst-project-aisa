-- AISA Financial Analysis Project

USE aisa_project;

-- 1. Lihat semua data
SELECT * FROM aisa_data;

-- 2. Profit tertinggi
SELECT tahun, net_profit
FROM aisa_data
ORDER BY net_profit DESC;

-- 3. Tahun rugi
SELECT tahun, net_profit
FROM aisa_data
WHERE net_profit < 0;

-- 4. Profit Margin
SELECT tahun,
ROUND((net_profit/revenue)*100,2) AS profit_margin_pct
FROM aisa_data;

-- 5. Debt Ratio
SELECT tahun,
ROUND((total_liabilities/total_assets)*100,2) AS debt_ratio_pct
FROM aisa_data;

-- 6. Revenue Growth
SELECT tahun, revenue,
revenue - LAG(revenue) OVER (ORDER BY tahun) AS growth_nominal
FROM aisa_data;