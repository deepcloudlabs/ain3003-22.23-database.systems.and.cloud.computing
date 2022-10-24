from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="banking"
)
my_cursor = my_connection.cursor()
my_cursor.execute("""
create table accounts (
   iban varchar(32) primary key,
   balance float not null default 10.0,
   status enum("ACTIVE", "BLOCKED", "CLOSED") not null default "ACTIVE"
) engine=innodb
""")
