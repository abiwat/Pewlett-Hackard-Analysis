# Pewlett-Hackard-Analysis

## Overview
Pewlett-Hackard has gotten a little behind the times and requested a database to analysis its current staff and to help determine how many employees will be ready for retirement in the "Silver Tsunami" and out of those how many will be able to mentor incoming staff to fill the between entry level employees and senior level employees.

##Challenges and Solutions
There are three main questions that needed to be answered.
- How many Senior Level employees will be eligible for retirement and from what departments?
- What job titles will lose the greatest number?
- Are there enough Senior Level employees to act as mentors to the entry level staff so they are prepared to take over the decision making?

To answer these questions we have the data, but in separate csv files that have the information, but not any one table can answer once question.  So, I created a SQL database, using the below diagram for table relationships.

![employeeDB](https://github.com/abiwat/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

Using the information provided and through creating tables within the database, I was able to identify a few areas of concern.

## Results

![Retiring Titles](https://github.com/abiwat/Pewlett-Hackard-Analysis/blob/main/retirement_title_count_current.png)
![Retiring Departments](https://github.com/abiwat/Pewlett-Hackard-Analysis/blob/main/Current_retirment_dept_v12.png)

Much of the staff that is eligible for retirement is either "Senior Engineer" or "Senior Level" and primarily from the Development, Production and Sales department.  

![Elegible_count}(https://github.com/abiwat/Pewlett-Hackard-Analysis/blob/main/eligibility_count.png)
![Mentor_Deparment](https://github.com/abiwat/Pewlett-Hackard-Analysis/blob/main/mentorship_eligibility_dept.png)

And while those departments have the higher number of senior staff eligible for mentorship, there are not nearly enough to fill the gap between entry level and those that are retiring.

## Summary
Pewlett-Hackard may want to develop an incentive plan to keep the senior staff from retiring until they have mentored enough people to fill the gap between those entering the field and those retiring.  Another possible solution is hiring them back on as consultants with reduced hours and responsibilities with the importance being placed on mentoring the entry to med. level employees.
