from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
  select code,name,continent,population 
  from country
  where population > 50000000 
  AND ( Continent = 'Europe' OR Continent = 'Africa' )
  limit 20,10
""")
for row in my_cursor:
    print(f"{row[1]}\t{row[2]}\t{row[3]}")