# 📊 Sales Analysis & Business Insights  

## 🚀 Business Problem  
A new CEO has joined the company with a vision to launch **new product lines**.  
Before making investment decisions, leadership requires:  

- ✅ A deep understanding of current business performance  
- ✅ Visibility into **profitable categories and products**  
- ✅ Insights on **returns and risks**  
- ✅ Identification of **future growth opportunities**  

🔴 Current challenge: Business data is **scattered and unstructured**, making it hard to obtain a fact-based view of operations.  

---

## 🎯 Objective  
To solve this problem first data needs to be united at a place, then clean the data and preserve the important features, then create a analytics dashboard to generate insight and present to the ceo  

---

## 🏗️ Architecture  

![Architecture Diagram](https://github.com/Niloy-Aiml34/Data_Engineering/blob/main/Architecture/Architecture.jpg)  

---

## ⚙️ Tech Stack Usage  

| Step                                              | Technology Used                                         | Purpose                                                                                                                                      |
| ------------------------------------------------- | ------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| **Data Ingestion**                                | Azure Data Factory (Linked Service to GitHub via HTTPS) | Pull raw sales & returns data                                                                                                                |
| **Raw Storage (Bronze Layer)**                    | Azure Data Lake Storage                                 | Store unprocessed data                                                                                                                       |
| **Data Cleaning & Transformation (Silver Layer)** | Azure Databricks                                        | Clean, transform, and prepare data                                                                                                           |
| **Business Data Models (Gold Layer)**             | Azure Synapse Analytics                                 | - Built **SQL Views** for structured datasets <br> - Created **External Tables** for BI connectivity <br> - Exposed curated data to Power BI |
| **Visualization**                                 | Power BI (connected to Synapse)                         | Build interactive dashboards & insights                                                                                                      |


---

## 📈 Dashboards  

![Dashboard Preview](https://github.com/Niloy-Aiml34/Sales-Analytics-Using-Azure-PowerBi/blob/main/Dashboards/DashBoard_Image.png)  

---

## 🔍 Key Insights  

#### 📊 Performance  
- **Total Revenue** = 24.91M  
- **Total Orders** = 25.16K  
- **Average Order Value** = 990.09  

#### 🏷️ Top Categories  
- 🚴 **Bikes** = 94.89% of revenue  
- 🛠️ Accessories & 👕 Clothing = Smaller share but **growth potential**  

#### 🛒 Top Products  
- Water Bottle – 30 oz  
- Patch Kit / 8 Patches  
- Mountain Tire Tube  

#### ⚠️ Returns & Risks  
- **Return Rate** = 7.28%  
- Most returns from **Water Bottles**  

#### 💰 Profitability  
- Strong **Profit Margin** = 43.52%  
- **YoY Growth** = 14.70% (despite recent dips)  

#### 🌍 Geography  
- **US & Australia** → Lead in revenue & returns  
- **UK, France, Germany** → Medium growth potential  

