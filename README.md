![GitHub Repo Size](https://img.shields.io/github/repo-size/ssagastume11/worlds-wildlife-dataset-analysis)
![Last Commit](https://img.shields.io/github/last-commit/ssagastume11/worlds-wildlife-dataset-analysis)

## 📊 Interactive Dashboard  

Explore the interactive Tableau dashboard here: 
🔗 [World's Wildlife Analysis](https://public.tableau.com/views/WorldsWildlifeAnalysis/WorldsWildlifeAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

This dashboard visualizes global maiz yield trends, biodiversity impacts, and productivity comparisons using the WOrld's Wildlife Dataset. It includes:
- KPI cards for Global Median Yield, Average Yearly Growth, and Top 3 Performing Countries
- Bar charts for comparative insights per country
- Map insights by country and productivity status

---

# 🌍 World’s Wildlife Dataset Analysis

This project explores the relationship between **agricultural land use**, **species population declines**, and **regional productivity** using the *World's Wildlife Dataset*. The analysis seeks to understand how agricultural expansion impacts global biodiversity and identify regions that successfully balance food production and wildlife conservation.

---

## 📦 Dataset

**Source**: [World’s Wildlife Dataset on Kaggle](https://www.kaggle.com/datasets/willianoliveiragibin/worlds-wildlife)  
**Provider**: Willian Oliveira Gibin  

**Filename**: `worlds_wildlife_cleaned.csv`  
**Location**: Stored in the `data/` folder  

**Fields include**:
- Country
- Code Country  
- Year  
- Maize Yield (tons per hectare)  

---

## 🔍 Business Task

The objective of this analysis is to investigate how agricultural land use and productivity correlate with changes in wildlife populations and to identify global patterns that support both **food security** and **biodiversity conservation**.

**Key Goals:**
- Examine correlations between maize yields and wildlife population trends.
- Identify regions that have improved productivity and reduced habitat loss.
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
│   ├── worlds_wildlife_cleaned.csv
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

## 🧮 SQL Query (Maize Yield Trends by Total Yield Index)

```sql
-- sql/Maize Yield Trends by total_yield_index.sql
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
- 🌾 Maize yield trends over time: Global and regional productivity comparisons
- 🦁 Wildlife population index trends: Biodiversity changes visualized by region.
- 🌎 Agricultural lands vs. protected areas: Perspectives on sustainable land management.

---

## 🧾 Presentation
The final presentation (in the `presentation/` folder) summarizes:
- Project purpose and research questions.
- Data preparation and cleaning.
- Key findings supported by visual analysis.
- Actionable recommendations for balancing productivity and conservation.
---

## ✅ Next Steps
- Integrate additional biodiversity and climate datasets for more detailed insights
- Expand the analysis to include deforestation and water use metrics
- Create an interactive dashboard in **Tableau**

---

## 🙌 Acknowledgments
- Dataset courtesy of [William Oliveira Gibin on Kaggle](https://www.kaggle.com/datasets/willianoliveiragibin/worlds-wildlife)
- Tools powered by Google Cloud, BigQuery, SQL, Tableau and open source communities.
- Created with dedication and curiosity by **Sergio E. Sagastume**
