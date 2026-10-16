# Telco Customer Churn Analysis

This is an end-to-end portfolio project analyzing customer churn for a telecom company. The goal was not just to build a report, but to understand *why* customers leave and *which* customers retention should focus on first, using Python, MySQL and Power BI.

---

## 🚀 The Business Problem
A telecom company was losing customers every month, but had no clear picture of why. The business had customer data but no structured analysis, creating a critical information gap:
* **No Root Cause:** They didn't know which factors drove churn (contract type, pricing, services, payment method?).
* **No Clear Profile:** They couldn't identify *who* was most likely to leave.
* **Unfocused Retention:** Retention offers were not targeted at the customer groups that needed them most.

## 🎯 Project Objectives
1.  **Clean and prepare** the raw customer data for analysis.
2.  **Analyze** churn across contract, services, payment method and tenure to find the root causes.
3.  **Identify** the highest-risk customer segments so retention efforts can be prioritized.
4.  **Monitor** churn KPIs on an interactive Power BI dashboard.

---

## 🛠️ Technologies Used
* **Data Cleaning & EDA:** Python (Pandas, Seaborn, Matplotlib)
* **Database:** MySQL (loaded with SQLAlchemy and PyMySQL)
* **Data Analysis:** SQL
* **Data Visualization:** Power BI
* **IDE:** Jupyter Notebook

---

## 🔄 My End-to-End Process
[Raw Data (CSV)] ➔ [Cleaning & EDA in Python] ➔ [Load into MySQL] ➔ [Segment Analysis in SQL] ➔ [Interactive Dashboard in Power BI]

---

## 📊 Key Insights & Dashboards

### 1. Churn Overview Dashboard
This dashboard shows the overall health of the customer base and the main drivers of churn.

![Churn Overview Dashboard](images/dashboard_page1.png)

* **Key Insight:** The "Month-to-Month" contract is the biggest driver of churn. These customers have a **42.7% churn rate**, while "Two Year" contract customers only have **2.8%**.
* **Other Insights:**
    * The overall churn rate is **26.5%** (1,869 of 7,043 customers).
    * "Fiber Optic" customers churn the most (**41.9%**), compared with **19.0%** for DSL.
    * "Electronic check" has the highest churn rate at **45.3%**, against 15 to 19% for the other payment methods.
    * Customers with no partner and no dependents churn at **34.2%**, against **14.2%** for those with both.

### 2. Customer Segments & Retention Dashboard
This dashboard digs into *who* leaves and when, and ranks the segments retention should prioritize.

![Customer Segments Dashboard](images/dashboard_page2.png)

* **Key Insight:** The highest-risk segment is **Month-to-Month + 0-12 months tenure + Fiber Optic** customers, with a churn rate of **70.2%**.
* **Other Insights:**
    * Churned customers stayed **18.0** months on average, against **37.6** months for retained customers, and customers in their first year churn at **47.4%**, so the first year is the danger zone.
    * Churned customers pay **$74.44** per month on average, against **$61.27** for retained customers.
    * Customers with neither Online Security nor Tech Support churn at **49.0%**, against **9.0%** for those with both.
    * Churned customers represent about **$139,000** in monthly revenue, roughly **30.5%** of all monthly charges.
* **Recommendation:** Focus retention on the highest-risk segment first: offer a discount to move month-to-month customers onto a longer contract, bundle Tech Support and Online Security, and move customers off electronic check payments to automatic payment.

---

## Thank you so much for checking out my project. Hope you like it!
