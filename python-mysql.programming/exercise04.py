from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="banking"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
  select iban,balance 
  from accounts
  where balance > 0.0
  order by balance desc
""")
for row in my_cursor:
    print(f"{row[0]}\t{row[1]}")