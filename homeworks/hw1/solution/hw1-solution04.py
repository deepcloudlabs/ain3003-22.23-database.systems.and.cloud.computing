
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
    select g.description, count(mo.title) as counter
    from movies mo, genres g, moviegenres mg
    where mo.movieId = mg.movieID
    and  g.genreId = mg.genreID
    group by g.genreID   
    order by counter desc
""")

print("{:32} {:4}".format("Genre", "Count"))
for row in my_cursor:
    print(f"{row[0]:32} {row[1]:<4}")
