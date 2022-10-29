from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="imdb"
)

my_cursor = my_connection.cursor()

"""
Find and list the histogram of movies where bins are genres.
"""
my_cursor.execute("""
    select 1 + 1
""")

print("{:32} {:4}".format("Genre", "Count"))
for row in my_cursor:
    print(f"{row[0]:32} {row[1]:<4}")
