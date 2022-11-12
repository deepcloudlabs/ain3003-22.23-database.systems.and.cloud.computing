
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
    select di.name, count(distinct g.genreID) as nog, group_concat(distinct g.description order by g.description)
    from movies mo, directors di, genres g, moviegenres mg, moviedirectors md
    where mo.movieID = md.movieID 
    and  di.directorID = md.directorId 
    and  mo.movieId = mg.movieID
    and  g.genreId = mg.genreID
    group by di.name
    order by nog desc
""")

print("{:24} {:16} {:100}".format("Director Name",
                                  "Number of movies", "Genres"))
for row in my_cursor:
    print(f"{row[0]:24} {row[1]:<16} {row[2]:<100}")
