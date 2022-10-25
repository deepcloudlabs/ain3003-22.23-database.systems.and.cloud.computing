from mysql import connector

my_connection = connector.connect(
    host="localhost",
    user="root",
    password="Secret_123",
    database="world"
)

my_cursor = my_connection.cursor()

"""
list Turkish speaking countries
"""
my_cursor.execute("""
  select cl.language,c.name 
  from countrylanguage cl,country c
  where cl.language='turkish' AND c.code=cl.countrycode
""")

print("{:12} {:40}".format("Language", "Country Name"))
for row in my_cursor:
    print(f"{row[0]:12} {row[1]:40}")
