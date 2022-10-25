from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
list countries with NO capital
"""
my_cursor.execute("""
  select co.code,co.name,co.continent 
  from country co
  where co.capital is null
""")

print("{:4} {:48} {:16}".format("Code", "Name", "Continent"))
for row in my_cursor:
    print(f"{row[0]:<4} {row[1]:48} {row[2]:16}")
