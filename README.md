
# 🎬 Movie Industry Profit Analysis  

This project analyzes the profitability of the movie industry using **SQL, Python, and Power BI**. It involves **data cleaning, transformation, and visualization** to extract valuable insights.

## 📂 Project Structure  

```
📦 Movie Industry Profit Analysis  
├── datasets/                # Raw and cleaned movie datasets  
│   ├── MoviesCleanedUpdate.xlsx  
│   ├── MoviesCleanedUpdate.csv  
│   ├── tmdb_5000_movies_cleaned.csv  
│   ├── tmdb_5000_movies.csv  
│   ├── tmdb_5000_movies.rar  
│   └── New Microsoft Excel Worksheet.xlsx  
│  
├── scripts/                 # SQL and Python scripts  
│   ├── Analysis_w_Py.ipynb          # Data analysis with Python  
│   ├── ddl_movies.sql               # Database schema (DDL)  
│   ├── Movie Cleaning_w_Py.ipynb    # Data cleaning with Python  
│   ├── movies quality check file.sql # SQL script for data validation  
│  
├── env/                     # Virtual environment (if applicable)  
│  
├── reports/                 # Reports & Visualizations  
│   ├── movies_report.jpg  
│   ├── movies_report.pbix   # Power BI report  
│   ├── movies_report.pdf  
│  
└── .gitignore               # Ignore unnecessary files  
```

---

## 🚀 Project Workflow  

### 1️⃣ **Data Collection**  
- Extracted movie datasets from **TMDB 5000 dataset**.  

### 2️⃣ **Data Cleaning & Transformation**  
- Used **Python (Pandas, NumPy)** for preprocessing.  
- Removed duplicates and handled missing values.  
- Used **SQL (DML & DDL)** for structuring and cleaning.  

### 3️⃣ **Database & Querying**  
- **DDL (ddl_movies.sql)** defines the database schema.  
- **DML queries** clean and structure data.  
- Ensured data integrity with **quality checks**.  

### 4️⃣ **Analysis & Insights**  
- **Python (Jupyter Notebooks)** for exploratory analysis.  
- **Power BI** for visualization (see `movies_report.pbix`).  

### 5️⃣ **Key Insights**  
- **Action, Adventure, and Drama** are the most popular genres.  
- **Profitability increased post-2000**, but **ROI is declining**.  
- **Universal Pictures, Paramount, and Columbia** dominate in revenue.  

---

## 🛠️ Tools & Technologies  

| Category         | Tools Used |
|-----------------|-----------|
| Data Processing | Python (Pandas, NumPy) |
| Database        | SQL (PostgreSQL / SQL Server) |
| Visualization   | Power BI |

---

## 📊 Power BI Dashboard  

![Movies Report](reports/movies_report.jpg)  

---

## 📌 How to Run  

### 🔹 **With Python & SQL**
1. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/movie-industry-profit-analysis.git
   cd movie-industry-profit-analysis
   ```
2. Install dependencies:  
   ```bash
   pip install -r requirements.txt
   ```
3. Run SQL scripts (`ddl_movies.sql` → `movies quality check file.sql`).
4. Execute Python scripts in **Jupyter Notebook**.


-  [click to View the report](https://github.com/otinabrayo/Movie-Industry-Profitability/blob/main/scripts/movies_report.jpg)


🔗 **Star this repo ⭐ if you find it useful!**  
## Contributing
Feel free to fork the repo and submit pull requests with improvements!
Let's stay in touch! Feel free to connect and collaborate with me on the following platforms:


## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.


[![dev.to](https://img.shields.io/badge/Dev.to-0A0A0A?style=for-the-badge&logo=DevdotTo&logoColor=white)](https://dev.to/brian_otina_)
[![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/otinabrayo)
[![gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=Gmail&logoColor=white)](mailto:brianotina20@gmail.com)
[![telegram](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/just_otina)
[![discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.com/channels/@otina_)

