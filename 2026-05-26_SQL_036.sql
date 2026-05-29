/* Question : Write a solution to find the average time each machine takes to complete a process.
The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.
The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.
Return the result table in any order.*/
# Code
Select 
    a1.machine_id,
    Round(AVG(a2.[timestamp] - a1.[timestamp]), 3) AS processing_time
From Activity a1
Join Activity a2
    On a1.machine_id = a2.machine_id
    and a1.process_id = a2.process_id
Where a1.activity_type = 'start'
    and a2.activity_type = 'end'
Group by a1.machine_id;
