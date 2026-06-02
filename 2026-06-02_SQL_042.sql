/* Question No' 585:  Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:
have the same tiv_2015 value as one or more other policyholders, and
are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
Round tiv_2016 to two decimal places.*/ 
# Code 
Select
    Round(SUM(i.tiv_2016), 2) AS tiv_2016
From Insurance i
Where i.tiv_2015 IN (
    Select tiv_2015
    From Insurance
    Group by tiv_2015
    Having Count(*) > 1
)
And Exists (
    Select 1
    From Insurance x
    Where x.lat = i.lat
      And x.lon = i.lon
    Group by x.lat, x.lon
    Having Count(*) = 1
);
