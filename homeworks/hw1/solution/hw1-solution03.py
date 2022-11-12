
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
    select mo.title, mo.year, group_concat(g.description)
    from movies mo, genres g, moviegenres mg
    where mo.movieId = mg.movieID
    and  g.genreId = mg.genreID
    and g.description in ("Drama", "Comedy")
    group by mo.movieID
    having count(g.Description) = 2
    order by mo.year, mo.title
    
""")

print("{:32} {:4} {:100}".format("Movie Title", "Year", "Genres"))
for row in my_cursor:
    print(f"{row[0]:32} {row[1]:4} {row[2]:<100}")
