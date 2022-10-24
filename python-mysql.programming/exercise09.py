from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
  select co.code,co.name,co.continent 
  from country co
  where co.capital is null
""")
for row in my_cursor:
    print(f"{row[0]}\t{row[1]}\t{row[2]}")
