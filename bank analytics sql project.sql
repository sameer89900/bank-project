select * from finance_2; 
select * from finance_1;
# kpi 1 year wise laon amount stats..
select(issue_d) as issue_years, sum(loan_amnt) as total_amnt from finance_1 group by issue_years order by total_amnt desc;
# with all year totals...
select issue_years , sum(total_amnt) as total_amnt from 
( select year(issue_d) as issue_years,sum(loan_amnt) as total_amnt from finance_1 group by issue_years union all  select 'all years' as issue_years, sum(loan_amnt) as
 total_amount
    from finance_1
) combined
group by issue_years
order by issue_years;
# purpose wise loan amount stats..
select * from finance_1;
select(purpose) as purpose,sum(loan_amnt) as total_amnt,sum(funded_amnt) as funded_amnt from finance_1 group by purpose order by total_amnt desc;
select * from finance_1;
Select * from finance_2;
# verification status
select * from finance_1;
Select * from finance_2;
select finance_1.verification_status, sum(finance_2.total_pymnt)as TotalPayment 
from finance_1
join finance_2 on finance_1.id = finance_2.ï»¿id group by Verification_status;
# purpose wise total_rec_int
select finance_1.Purpose, sum(total_rec_int) as Total_rec_int from finance_1
join finance_2 on finance_1.id = finance_2.ï»¿id group by finance_1.purpose;



