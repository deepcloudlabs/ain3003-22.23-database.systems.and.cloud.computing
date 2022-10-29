from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="imdb"
)

my_cursor = my_connection.cursor()

"""
Find the list of movies having the genres "Drama" and "Comedy" only.
"""
my_cursor.execute("""
    select 1 + 1
""")

print("{:32} {:4} {:100}".format("Movie Title", "Year", "Genres"))
for row in my_cursor:
    print(f"{row[0]:32} {row[1]:4} {row[2]:<100}")
