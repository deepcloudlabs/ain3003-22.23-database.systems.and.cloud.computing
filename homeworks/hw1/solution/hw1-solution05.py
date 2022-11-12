
from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="imdb"
)

my_cursor = my_connection.cursor()

"""
1.	Find the movies from 70s.
"""
my_cursor.execute("""
    select title, year
    from movies 
    where year between 1970 and 1979
    order by year, title
""")

print("{:40} {:4}".format("Movie Title", "Year"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:<4}")
