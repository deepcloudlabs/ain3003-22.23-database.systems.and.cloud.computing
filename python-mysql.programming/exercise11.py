from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
List the top 10 largest country with respect to surface area 
"""
my_cursor.execute("""
  select name,surfaceArea 
  from country 
  order by surfaceArea desc
  limit 10
""")

print("{:40} {:8}".format("Name", "Surface Area"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:8}")
