# Pewlett-Hackard-Analysis

***Version 1.0.0***

---

## Overview of Project
#### This project a company to analyze its data about employee info, salaries, and titles with the creation of these tables in a SQL language using PGAdmin inside the PostgreSQL where we apply different queries and extractions.

## Purpose
#### The purpose of the different data extractions is meant to give details to the employer about their seniority employees since I was requested to create different tables as retirement employee quantity and also divided by titles as well as mentorship eligibility.
---

## Results
#### Here I'll provide a list of csv files and how they were created.

- Retirement titles
  -  This table give us the detail by employee names and titles that could be retired against their birth date data and was created joining the Employee and Titles tables by the employee number and filtering their birth date from 1952 to 1955.
  -  <img src="https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png" width="800">
- Unique titles
  -  This table will get the last title of each employee that could be retired and sort it by employee number and was created by the previous table filtered with the last title for each employee.
  -  <img src="https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png" width="800"> 
- Retiring titles
  -  This table summarize the different positions or titles with all the employees that could be retired and was created from the previous table and then grouped by the title name and counting all the employees into each category.
  -  <img src="https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png" width="800">
- Mentorship Eligibilty
  -  This table give you the detail of each active employee that born in 1965 and was created by joining 3 tables (Employees, Departments and Titles) and then filtered for the active employees and their birth date.
  -  <img src="https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibilty.png" width="800">

#### All these queries were built from this line of codes.
<img src="https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/blob/main/Resources/SQL_code.png" width="800">

---

## Summary
#### As summary, these tables that we created are a great start analyzing the retirement behavior of a company, you could know which could retire and also which type of positions you should start looking to fill either from your company or elsewhere, but I think we could see more than these tables, I'll try to answer the following questions in order to give more details we could get out of this data.

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  -  As we saw in the upper image about the Retiring titles, there are 7 main roles that will leave the "silver tsunami", these titles will need to be deeply analyzed since many of these positions will be covered from the same employees of the company and then we need to analyze at the end of the chain, which roles will be need to hired from outside and start analyzing the employee market.
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  -  There are employees that could fit into these roles and that will move the chain of open positions that will be filled from the employee markets so we could see additional tables as how much money we pay in salary to all our current retirement employees and see how the market is and how much money we could save out of this "silver tsunami"


  #### You can locate the complete analysis code on the following link [Employee Database challenge](https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql) and all image used in the following folder [Resources](https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/tree/main/Resources)

#### If you want to give a look to the data sets, see this folder [Data](https://github.com/SeRoGaTa/Pewlett-Hackard-Analysis/tree/main/Data)

