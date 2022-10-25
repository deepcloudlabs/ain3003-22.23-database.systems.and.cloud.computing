from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
list population of the following cities in Turkey: Istanbul , Ankara, and Izmir
"""
my_cursor.execute("""
  select id,name,population 
  from city
  where name in ( 'Istanbul' , 'Ankara', 'Izmir' ) 
  AND countrycode='TUR'
""")

print("{:4}\t{:12}\t{:10}".format("ID", "Name", "Population"))
for row in my_cursor:
    print(f"{row[0]:4}\t{row[1]:12}\t{row[2]:<10}")
