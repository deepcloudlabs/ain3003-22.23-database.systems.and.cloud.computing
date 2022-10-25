from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
sort continents by continent in descending order, then by name in ascending order
"""
my_cursor.execute("""
  select name,continent 
  from country
  order by continent desc, name asc
""")

print("{:40} {:12}".format("Name", "Continent"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:12}")
