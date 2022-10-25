from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
List the top 10 richest countries and getting richer with respect to GNP 
"""
my_cursor.execute("""
  select name,gnp,gnpold,gnp-gnpold as diff
  from country 
  where gnp > gnpold
  order by gnp desc
  limit 10
""")

print("{:40} {:12} {:12} {:12}".format("Name", "Current GNP", "Previous GNP", "Difference"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:<12} {row[2]:<12} {row[3]:<12}")
