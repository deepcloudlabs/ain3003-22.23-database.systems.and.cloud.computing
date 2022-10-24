from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
  select id,name,population 
  from city
  where name in ( 'Istanbul' , 'Ankara', 'Izmir' )
""")
for row in my_cursor:
    print(f"{row[0]}\t{row[1]}\t{row[2]}")