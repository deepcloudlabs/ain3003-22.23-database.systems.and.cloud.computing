from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
Sort the countries by number of their cities in descending order
"""
my_cursor.execute("set session sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))")

my_cursor.execute("""
    select co.name, count(ci.name) as noc
    from country co, city ci
    where ci.countrycode = co.code
    group by co.code
    order by noc desc
""")

print("{:40} {:3}".format("Country Name", "Number of  Cities"))
for row in my_cursor:
    print(f"{row[0]:40} {row[1]:3}")
