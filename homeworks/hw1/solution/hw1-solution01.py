from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="imdb"
)

my_cursor = my_connection.cursor()

"""
Find the number of movies of each director
"""
my_cursor.execute("""
    select di.name, count(mo.title) as nom
    from movies mo, directors di, moviedirectors md
    where mo.movieID = md.movieID and di.directorID = md.directorId
    group by di.directorID
    order by nom desc
""")

print("{:24} {:16}".format("Director Name", "Number of movies"))
for row in my_cursor:
    print(f"{row[0]:24} {row[1]:<16}")
