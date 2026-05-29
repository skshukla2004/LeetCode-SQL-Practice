/* Question No' 1693 :  For each date_id and make_name, find the number of distinct lead_id's and distinct partner_id's.
Return the result table in any order.*/ 
# Code 
Select 
    date_id,
    make_name,
    Count(DISTINCT lead_id) AS unique_leads,
    Count(DISTINCT partner_id) AS unique_partners
From DailySales
Group by date_id, make_name;
