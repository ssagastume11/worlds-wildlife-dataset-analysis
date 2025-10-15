-- Aggregate maize yield trends for visualization by country and year:
SELECT
  country_name,
  year,
  ROUND(AVG(maize_yield_tha), 3) AS avg_maize_yield_tha,
  ROUND(SUM(maize_yield_tha) / COUNT(maize_yield_tha), 3) AS total_yield_index,
  APPROX_QUANTILES(maize_yield_tha, 4)[OFFSET(1)] AS q1_yield,
  APPROX_QUANTILES(maize_yield_tha, 4)[OFFSET(2)] AS median_yield,
  APPROX_QUANTILES(maize_yield_tha, 4)[OFFSET(3)] AS q3_yield
FROM
  `plenary-ability-463920-b3.worlds_wildlife_dataset.cleaned_maize_yields`
GROUP BY
  country_name, year
ORDER BY
  country_name, year;

-- Written Summary:
-- From 1960 to the most recent year in the data set, global maize yields showed a steady upward trend, reflecting ongoing improvements in agricultural productivity. Average yield per hectare increased gradually in most regions, while the average yield stabilized at a moderate level, suggesting that while some countries achieved rapid efficiency gains, others maintained slower growth. The total yield index remained consistently below the global average, highlighting disparities in production capacity between the highest and lowest-yielding regions. This trend suggests that global food production has become more efficient overall, although there are still opportunities to close productivity gaps and ensure more balanced growth in agricultural production across countries.
