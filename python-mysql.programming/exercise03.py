from random import randint

from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="banking"
)

my_cursor = my_connection.cursor()

"""
insert data to the 'accounts' table
"""
my_cursor.execute(f"""
   insert into accounts(iban,balance)
   values ('TR{randint(100,100000)}',{randint(100,100000)})
""")
my_connection.commit()
