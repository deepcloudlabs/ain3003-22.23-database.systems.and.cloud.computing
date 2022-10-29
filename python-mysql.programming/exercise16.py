from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
Sort the countries by their population densities in descending order ignoring zero population countries
"""
my_cursor.execute("set session sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))")

my_cursor.execute("""
    select co.name, (co.population/co.surfacearea) as density 
    from country co
    where co.population is NOT NULL and co.population > 0
    order by density desc
""")

print("{:40} {:8}".format("Country Name", "Density"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:<6.1f}")
