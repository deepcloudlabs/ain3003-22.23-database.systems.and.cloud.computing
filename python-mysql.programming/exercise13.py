from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
Find the highest populated capital city: 
"""
my_cursor.execute("""
  select co.name, ci.name, ci.population
  from city ci, country co 
  where ci.id = co.capital
  order by ci.population desc
  limit 1
""")

print("{:40} {:40} {:12}".format("Country Name", "Capital Name", "Population"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:40} {row[2]:<12}")
