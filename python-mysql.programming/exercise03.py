from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="banking"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
   insert into accounts(iban)
   values ('TR2')
""")
my_connection.commit()