from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
  select name,gnp,gnpold,gnp-gnpold as diff
  from country 
  where gnp > gnpold
  order by gnp desc
  limit 10
""")
for row in my_cursor:
    print(f"{row[0]}\t{row[1]}\t{row[2]}\t{row[3]}")
