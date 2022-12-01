# JTB-Airline-Cruise
EC1 Group Assignment

Implementation Instructions (ReadMe)

1.GitHub Repository URL: https://github.com/hectorboop/JTB-Airline-Cruise.git

2.Database Creation and Seeding script:
The JTB_DB database is seeded with information from the workcities.xlsx spreadsheet containing information about 
different cities and their respective countries. The context is also seeded with information on four flights and
cruises each. Flight information consists of the name of the airline, the city of departure, the departure date,
return date, intended city of destination, the different classes of the flight (economy, premium economy, business,
or first class), the type of flight, the price of the flight and the plane in question. Cruise information consists
of the cruise line's name, the port of departure, the start date of the cruise, the end date of the cruise, the 
name of the ship in question, the duration of the cruise, the name of the cruise, visiting ports, the various 
prices for the cruise, and the different types of rooms that the cruise offers (interior, ocean view, balcony, and
suite). The database was created code-first using the ADO.net Entity Framework. In the case that the IronXL 
dependency (used to access the excel document) isn't available, the commented code should be used to initialise the
database with potential values instead.


The asp.net-JTB-Airline-Cruise database was created by enabling the individual user accounts setting when first
creating the project. Users are added to the database when they are able to make a successful attempt at registering
and assigned to their respective role. If the user creates an account using the default registration page, they are
given the role of a customer. If the user creates an account using the admin registration page, they are given the role of an admin.
