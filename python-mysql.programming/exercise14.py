from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
Find the highest populated capital city of each continent
"""
my_cursor.execute("set session sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))")
my_cursor.execute("""
    select a.continent, co.name, c.name, c.population from city c, country co,
    (select co.continent, max(ci.population) as m
    from country co, city ci 
    where ci.id=co.capital 
    group by co.continent) as a
    where c.population=a.m and c.countrycode=co.code
""")

print("{:16} {:20} {:20} {:<16}".format("Continent", "Country Name", "Capital Name", "Population"))
for row in my_cursor:
    print(f"{row[0]:16} {row[1]:20} {row[2]:<20} {row[3]:<16}")
