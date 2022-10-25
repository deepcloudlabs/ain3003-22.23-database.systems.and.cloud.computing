from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
  select name,surfaceArea 
  from country 
  order by surfaceArea desc
  limit 10
""")
for row in my_cursor:
    print(f"{row[0]}\t{row[1]}")
