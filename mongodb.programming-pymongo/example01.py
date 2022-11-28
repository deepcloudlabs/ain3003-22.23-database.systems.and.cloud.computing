from functools import reduce

from hr.utility import *

employees = [
    {
        "id": "1", "fullname": "jack bauer", "salary": 100000,
        "account": "tr1", "birthYear": 1956, "style": "FULL_TIME",
        "department": "IT"
    },
    {
        "id": "2", "fullname": "kate austen", "salary": 200000,
        "account": "tr2", "birthYear": 1986, "style": "PART_TIME",
        "department": "FINANCE"
    },
    {
        "id": "3", "fullname": "james sawyer", "salary": 300000,
        "account": "tr3", "birthYear": 1984, "style": "FULL_TIME",
        "department": "IT"
    },
    {
        "id": "4", "fullname": "jin kwon", "salary": 400000,
        "account": "tr4", "birthYear": 1987, "style": "PART_TIME",
        "department": "SALES"
    },
    {
        "id": "5", "fullname": "sun kwon", "salary": 500000,
        "account": "tr5", "birthYear": 1988, "style": "FULL_TIME",
        "department": "IT"
    }
]

for employee in get_employees_by_criteria(employees,
                                          lambda emp: emp["department"] == "IT"):
    print(employee)

for employee in get_employees_by_criteria(employees,
                                          lambda emp: emp["birthYear"] < 1972):
    print(employee)

total_salaries = 0
for employee in get_employees_by_criteria(employees,
                                          lambda emp: emp["style"] == "PART_TIME"):
    total_salaries += employee["salary"]
print(total_salaries)

for sal in map(lambda emp: emp["salary"],
           filter(lambda emp: emp["style"] == "PART_TIME", employees)):
    print(sal)


total_salaries = reduce(lambda acc, sal: acc + sal,
       map(lambda emp: emp["salary"],
           filter(lambda emp: emp["style"] == "PART_TIME", employees))
       , 0)
print(total_salaries)
