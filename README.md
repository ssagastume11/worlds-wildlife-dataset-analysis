![GitHub Repo Size](https://img.shields.io/github/repo-size/ssagastume11/worlds-wildlife-dataset-analysis)
![Last Commit](https://img.shields.io/github/last-commit/ssagastume11/worlds-wildlife-dataset-analysis)

# 🌍 World’s Wildlife Dataset Analysis

This project explores the relationship between **agricultural land use**, **species population declines**, and **regional productivity** using the *World's Wildlife Dataset*. The analysis seeks to understand how agricultural expansion impacts global biodiversity and identify regions that successfully balance food production and wildlife conservation.

---

## 📦 Dataset

**Source**: [World’s Wildlife Dataset on Kaggle](https://www.kaggle.com/datasets/willianoliveiragibin/worlds-wildlife)  
**Provider**: Willian Oliveira Gibin  

**Filename**: `worlds_wildlife_dataset_cleaned.csv`  
**Location**: Stored in the `data/cleaned/` folder  

**Fields include**:
- Country  
- Year  
- Agricultural Land (% of total area)  
- Crop Yield (tons per hectare)  
- Wildlife Population Index  
- Protected Land Area (%)  
- Region  
- GDP (USD)  
- CO₂ Emissions (metric tons per capita)

---

## 🔍 Business Task

The objective of this analysis is to investigate how agricultural land use and productivity correlate with wildlife population changes and identify global patterns that support both **food security** and **biodiversity conservation**.

**Key Goals:**
- Examine correlations between crop yield and wildlife population trends.  
- Identify regions that improved productivity while reducing habitat loss.  
- Evaluate global trends in sustainable land management.

---

## 📊 Tools & Technology

- **Google BigQuery** for SQL-based data cleaning and analysis  
- **Tableau** and **Looker Studio** for data visualization and storytelling  
- **Google Sheets** for data review and metadata documentation  
- **PowerPoint / Google Slides** for final presentation deliverables  
- **Git & GitHub** for version control and project collaboration  

---

## 📁 Project Structure

```plaintext
worlds-wildlife-dataset-analysis/
├── data/
│   ├── yields-of-importance-staple-crops new.csv
├── sql/
│   ├── Step 1_ask.sql
│   ├── Step 2_prepare.sql
│   ├── Step 3_process.sql
│   ├── Step 4_analyze.sql
│   └── Step 5_share.sql
├── visuals/
│   ├── yield_trend_chart.png
├── presentation/
│   └── Worlds_Wildlife_Dataset_Analysis_Summary.md
└── README.md
```

---

## 🧮 SQL Query (Maize Yield Trends by Country)

```sql
-- sql/Maize Yield Trends by Country.sql
SELECT
  Country,
  AVG(Maize_Yield_t_ha) AS avg_maize_yield_t_ha,
  COUNT(*) AS data_points
FROM
  `plenary-ability-463920-b3.worlds_wildlife_dataset.cleaned_maize_yields`
WHERE
  Maize_Yield_t_ha IS NOT NULL
GROUP BY
  Country
ORDER BY
  avg_maize_yield_t_ha DESC;
```

---

## 📈 Analysis Output
The final visualizations, saved in the `visuals/` folder, include:
- 🌾 Maize Yield Trends Over Time: Global and regional productivity comparisons
- 🦁 Wildlife Population Index Trends: Biodiversity change visualized by region
- 🌎 Agricultural Land vs. Protected Area: Insights on sustainable land management

---

## 🧾 Presentation
The final presentation (in the `presentation/` folder) summarizes:
- Project purpose and research questions
- Data preparation and cleaning steps
- Key findings supported by visual analysis
- Actionable recommendations for balancing productivity and conservation

---

## ✅ Next Steps
- Integrate additional biodiversity and climate datasets for deeper insights
- Expand analysis to include deforestation and water usage metrics
- Build an interactive dashboard on **Tableau**

---

## 🙌 Acknowledgments
- Dataset courtesy of [William Oliveira Gibin on Kaggle](https://www.kaggle.com/datasets/willianoliveiragibin/worlds-wildlife)
- Tools powered by Google Cloud, BigQuery, SQL, Tableau and open source communities.
- Created with dedication and curiosity by **Sergio E. Sagastume**
