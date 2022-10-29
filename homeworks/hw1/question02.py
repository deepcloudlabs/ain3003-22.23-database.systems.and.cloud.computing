from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="imdb"
)

my_cursor = my_connection.cursor()

"""
Find the number of genres of each director's movies:
"""
my_cursor.execute("""
    select 1 + 1
""")

print("{:24} {:16} {:100}".format("Director Name",
                                  "Number of movies", "Genres"))
for row in my_cursor:
    print(f"{row[0]:24} {row[1]:<16} {row[2]:<100}")
