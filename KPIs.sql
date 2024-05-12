SELECT * FROM Bank_loan_data
 SELECT count(id) AS Total_Loan_Applications FROM Bank_loan_data
 SELECT count(id) AS PMTD_Total_Loan_Applications FROM Bank_loan_data
 where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021


 select SUM(loan_amount) as MTD_Total_Funded_Amount from Bank_loan_data
 where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

 select SUM(loan_amount) as PMTD_Total_Funded_Amount from Bank_loan_data
 where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

 select SUM(total_payment) as Total_amount_Recieved from Bank_loan_data

 select SUM(total_payment) as MTD_Total_amount_Recieved from Bank_loan_data
 where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

  select SUM(total_payment) as PMTD_Total_amount_Recieved from Bank_loan_data
 where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

 select round(AVG(int_rate),4)*100 as Avg_Interest from Bank_loan_data

 select round(AVG(int_rate),4)*100 as MTD_Avg_Interest from Bank_loan_data
 where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

 select round(AVG(int_rate),4)*100 as PMTD_Avg_Interest from Bank_loan_data
 where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

 select round(AVG(dti),4)*100 as Avg_dti from Bank_loan_data

  select round(AVG(dti),4)*100 as MTD_Avg_dti from Bank_loan_data
  where MONTH(issue_date) = 12 and YEAR(issue_date) =2021

  select round(AVG(dti),4)*100 as PMTD_Avg_dti from Bank_loan_data
  where MONTH(issue_date) = 11 and YEAR(issue_date) =2021

