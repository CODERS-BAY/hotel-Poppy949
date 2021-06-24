# db_hotel

A database has to be implemented for a hotel business. Draw the following facts in an ER diagram in Chen notation and create a relational model No zero values are allowed. Use the attribute names in brackets. Hotel rooms are uniquely identified by a number (NUMBER). It is also stored whether it is a single room or a double room (PERSONS). Each room is assigned to a category. Categories have a unique ID (ID) and a description (NAME). Employees are identified by a unique social security number (SVNR). Name (NAME) and address (ADDRESS) of the employee are also known. Room attendants and caretakers are employees. The system stores which room is cleaned by which room attendant. For caretakers, a subject area (e.g. sauna, masseur, swimming pool, kitchen, ...) is also stored. A guest has a unique customer number (CustomerNR), a name, (NAME) and an address (ADDRESS). A guest can make several bookings. A booking depends on the room and on a date of arrival (FROM) and departure (TO). The hotel also offers service packages. A unique designation (DESIGN) and a price (PRICE) are stored. There are basic packages and luxury packages. A luxury package contains at least one or more basic packages. Any number of different service packages can be ordered for each booking, whereby the quantity ( QUANTITY) must also be noted. For each service package, one or more carers are responsible.
