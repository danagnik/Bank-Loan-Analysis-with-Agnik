select * from Bank_loan_data
select loan_status from Bank_loan_data

select 
     (COUNT(case when loan_status = 'Fully Paid' or loan_status = 'Current'
	 then id end))*100 / COUNT(id) as Good_Loan_Percentage
from Bank_loan_data

select COUNT(id) as Good_loan_applications from Bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'

select SUM(loan_amount) as Good_loan_funded_amount from Bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'

select SUM(total_payment) as Good_loan_recieved_amount from Bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'

select 
     (COUNT(case when loan_status = 'Charged off'
	 then id end))*100 / COUNT(id) as Bad_Loan_Percentage
from Bank_loan_data

select count(id) from Bank_loan_data as Bank_bad_loan_applications
where loan_status='Charged off' 

select SUM(loan_amount) from Bank_loan_data as Bad_loan_funded_amount
where loan_status='Charged off'

select SUM(total_payment) from Bank_loan_data as Bad_loan_funded_amount
where loan_status='Charged off'

SELECT
        loan_status,
        COUNT(id) AS Total_loan_applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status

SELECT 
loan_status, 
SUM(total_payment) AS MTD_Total_Amount_Received, 
SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status
