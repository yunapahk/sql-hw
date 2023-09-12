-- 1. List the names of all NFL teams'
SELECT name FROM teams;
--Output:
-- #	name
-- 1	Buffalo Bills
-- 2	Miami Dolphins
-- 3	New England Patriots
-- 4	New York Jets
-- 5	Baltimore Ravens
-- 6	Cincinnati Bengals
-- 7	Cleveland Browns
-- 8	Pittsburgh Steelers
-- 9	Houston Texans
-- 10	Indianapolis Colts
-- 11	Jacksonville Jaguars
-- 12	Tennessee Titans
-- 13	Denver Broncos
-- 14	Kansas City Chiefs
-- 15	Oakland Raiders
-- 16	San Diego Chargers
-- 17	Dallas Cowboys
-- 18	New York Giants
-- 19	Philadelphia Eagles
-- 20	Washington Redskins
-- 21	Chicago Bears
-- 22	Detroit Lions
-- 23	Green Bay Packers
-- 24	Minnesota Vikings
-- 25	Atlanta Falcons
-- 26	Carolina Panthers
-- 27	New Orleans Saints
-- 28	Tampa Bay Buccaneers
-- 29	Arizona Cardinals
-- 30	St. Louis Rams
-- 31	San Francisco 49ers
-- 32	Seattle Seahawks


-- 2. List the stadium name and head coach of all NFC teams
SELECT name, head_coach  FROM teams
WHERE conference = 'NFC';
-- Output: 
-- #	name	                head_coach
-- 1	Dallas Cowboys	        Jason Garrett
-- 2	New York Giants	        Tom Coughlin
-- 3	Philadelphia Eagles	    Chip Kelly
-- 4	Washington Redskins	    Jay Gruden
-- 5	Chicago Bears	        Marc Trestman
-- 6	Detroit Lions	        Jim Caldwell
-- 7	Green Bay Packers	    Mike McCarthy
-- 8	Minnesota Vikings	    Mike Zimmer
-- 9	Atlanta Falcons	        Mike Smith
-- 10	Carolina Panthers	    Ron Rivera
-- 11	New Orleans Saints	    Sean Payton
-- 12	Tampa Bay Buccaneers	Lovie Smith
-- 13	Arizona Cardinals	    Bruce Arians
-- 14	St. Louis Rams	        Jeff Fisher
-- 15	San Francisco 49ers	    Jim Harbaugh
-- 16	Seattle Seahawks	    Pete Carroll


-- 3. List the head coaches of the AFC South
SELECT head_coach  FROM teams
WHERE conference = 'AFC' AND division ILIKE 'south';
-- Output: 
-- #	head_coach
-- 1	Bill OBrien
-- 2	Chuck Pagano
-- 3	Gus Bradley
-- 4	Ken Whisenhunt


-- 4. The total number of players in the NFL
SELECT COUNT(*) FROM players;
-- Output: 1532


-- 5. The team names and head coaches of the NFC North and AFC East
SELECT name, head_coach FROM teams
WHERE conference = 'AFC' AND division ILIKE 'east'
OR conference = 'NFC' AND division ILIKE 'north';
-- Output: 
-- #	name	                head_coach
-- 1	Buffalo Bills	        Doug Marrone
-- 2	Miami Dolphins	        Joe Philbin
-- 3	New England Patriots	Bill Belichick
-- 4	New York Jets	        Rex Ryan
-- 5	Chicago Bears	        Marc Trestman
-- 6	Detroit Lions	        Jim Caldwell
-- 7	Green Bay Packers	    Mike McCarthy
-- 8	Minnesota Vikings	    Mike Zimmer


-- 6. The 50 players with the highest salaries
SELECT name, salary FROM players
ORDER BY salary DESC 
LIMIT 50;
-- Output: 
-- #	name	            salary
-- 1	Peyton Manning	    18000000
-- 2	Drew Brees	        15760000
-- 3	Dwight Freeney	    14035000
-- 4	Elvis Dumervil	    14000000
-- 5	Michael Vick	    12500000
-- 6	Sam Bradford	    12000000
-- 7	Jared Allen	        11619850
-- 8	Matt Ryan	        11500000
-- 9	Matthew Stafford	11500000
-- 10	Tamba Hali	        11250000
-- 11	Jake Long	        11200000
-- 12	Nnamdi Asomugha	    11000000
-- 13	Trent Williams	    11000000
-- 14	Vincent Jackson	    11000000
-- 15	Cliff Avril	        10600000
-- 16	Calais Campbell	    10600000
-- 17	Joe Thomas	        10500000
-- 18	Brent Grimes	    10431000
-- 19	Peyton Manning (buyout)	10400000
-- 20	Chris Long	        10310000
-- 21	Philip Rivers	    10200000
-- 22	Jason Smith	        10000000
-- 23	David Harris	    9900000
-- 24	Wes Welker	        9515000
-- 25	Davin Joseph	    9500000
-- 26	Dwayne Bowe	        9443000
-- 27	Asante Samuel	    9400000
-- 28	Brandon Marshall	9300000
-- 29	Ndamukong Suh	    9250000
-- 30	Tony Romo	        9000000
-- 31	Julius Peppers	    8900000
-- 32	Anthony Spencer	    8800000
-- 33	Karlos Dansby	    8800000
-- 34	Jordan Gross	    8500000
-- 35	Tyson Jackson	    8005000
-- 36	Adrian Peterson	    8000000
-- 37	Champ Bailey	    8000000
-- 38	Chris Johnson	    8000000
-- 39	Aaron Rodgers	    8000000
-- 40	Jason Peters	    7900000
-- 41	Eric Wright	        7750000
-- 42	Steve Smith	        7750000
-- 43	Santonio Holmes	    7750000
-- 44	Jay Cutler	        7700000
-- 45	Matt Forte	        7700000
-- 46	Ray Rice	        7700000
-- 47	Brian Urlacher	    7500000
-- 48	Johnathan Joseph	7250000
-- 49	Gary Brackett	    7200000
-- 50	Ed Reed	            7200000


-- 7. The average salary of all NFL players
SELECT AVG(salary) FROM players 
-- Output: 1579692.539817232376


-- 8. The names and positions of players with a salary above 10_000_000
SELECT name, position, salary FROM players
WHERE salary > 10000000;
-- Output:
-- #	name	        salary
-- 1	Jake Long		11200000
-- 2	Joe Thomas		10500000
-- 3	Dwight Freeney		14035000
-- 4	Peyton Manning (buyout)		10400000
-- 5	Peyton Manning		18000000
-- 6	Elvis Dumervil		14000000
-- 7	Tamba Hali		11250000
-- 8	Philip Rivers		10200000
-- 9	Michael Vick		12500000
-- 10	Nnamdi Asomugha		11000000
-- 11	Trent Williams		11000000
-- 12	Matthew Stafford		11500000
-- 13	Cliff Avril		10600000
-- 14	Jared Allen		11619850
-- 15	Matt Ryan		11500000
-- 16	Brent Grimes		10431000
-- 17	Drew Brees		15760000
-- 18	Vincent Jackson		11000000
-- 19	Calais Campbell		10600000
-- 20	Sam Bradford		12000000
-- 21	Chris Long		10310000


-- 9. The player with the highest salary in the NFL
SELECT * FROM players
ORDER BY salary DESC
LIMIT 1
-- Output:
-- #	id	name	        position	salary	    team_id
-- 1	590	Peyton Manning	QB	        18000000    13


-- 10. The name and position of the first 100 players with the lowest salaries
SELECT name, position FROM players
ORDER BY salary ASC
LIMIT 100;
-- Output:
-- #	name	            position
-- 1	Phillip Dillard	
-- 2	Eric Kettani	    RB
-- 3	Austin Sylvester	RB
-- 4	Greg Orton	        WR
-- 5	Jerrod Johnson	    QB
-- 6	McLeod Bethel-Thompson	QB
-- 7	Jonathan Crompton	QB
-- 8	Travon Bellamy	    CB
-- 9	Caleb King	        RB
-- 10	Mike Mohamed	    LB
-- 11	Kyle Nelson	        LS
-- 12	John Malecki	    G
-- 13	Nathan Bussey	    LB
-- 14	Robert James	    LB
-- 15	Markell Carter	    DE
-- 16	Aaron Lavarias	    DT
-- 17	Mark Dell	        WR
-- 18	Ronald Johnson	    WR
-- 19	Doug Worthington	DT
-- 20	Derrick Jones	    WR
-- 21	Sealver Siliga	    DT
-- 22	Chase Beeler	    C
-- 23	Kenny Wiggins	    T
-- 24	Konrad Reuland	    TE
-- 25	Michael Wilhoite	LB
-- 26	Garrett Chisolm	    G
-- 27	Juamorris Stewart	WR
-- 28	Chad Spann	        RB
-- 29	Trevis Turner	    T
-- 30	Justin Medlock	    KR
-- 31	Armon Binns	        WR
-- 32	Derek Hall	        T
-- 33	Shaky Smithson	    WR
-- 34	Armando Allen	    RB
-- 35	DAndre Goodwin	    WR
-- 36	Jeremy Beal	        DE
-- 37	Brett Brackett	    TE
-- 38	Shaun Draughn	    RB
-- 39	John Clay	        RB
-- 40	Tristan Davis	    RB
-- 41	Curtis Holcomb	    CB
-- 42	Jimmy Young	        WR
-- 43	Kevin Cone	        WR
-- 44	Cory Nelms	        CB
-- 45	Ben Guidugli	    TE
-- 46	David Gilreath	    WR
-- 47	Dontavia Bogan	    WR
-- 48	Joe Hastings	    WR
-- 49	Marshall McFadden	LB
-- 50	Kade Weston	        DT
-- 51	Kyle Hix	        T
-- 52	Mark LeGree	        S
-- 53	Mike Hartline	    QB
-- 54	Jameson Konz	    WR
-- 55	Tyler Beiler	
-- 56	Mike Blanc	        DT
-- 57	Corbin Bryant	    DT
-- 58	Michael Jasper	    DT
-- 59	Mike Rivera	        LB
-- 60	Pat Devlin	        QB
-- 61	Jerome Messam	    RB
-- 62	Jamie McCoy	        TE
-- 63	Lestar Jean	        WR
-- 64	Malcolm Williams	CB
-- 65	Ricky Sapp	        DE
-- 66	Rashad Carmichael	CB
-- 67	Alex Silvestro	    DT
-- 68	Adam Weber	        QB
-- 69	Adam Grant	        T
-- 70	Jammie Kirlew	    DE
-- 71	Joe Reitz	        T
-- 72	Brandon Browner	    CB
-- 73	Jeff Byers	        C
-- 74	Jed Collins	        TE
-- 75	Aaron Berry	        CB
-- 76	Logan Payne	        WR
-- 77	Marcus Sherels	    CB
-- 78	T.J. Conley	        PR
-- 79	Cameron Sheffield	LB
-- 80	Kyle Bosworth	    LB
-- 81	Garrett McIntyre	DT
-- 82	John Estes	        C
-- 83	Thomas Austin	    G
-- 84	Emmanuel Stephens	DT
-- 85	Markus White	    DE
-- 86	Ricardo Matthews	DT
-- 87	Quinten Lawrence	WR
-- 88	Bilal Powell	    RB
-- 89	Taylor Boggs	    C
-- 90	Kamar Aiken	        WR
-- 91	Dexter Jackson	    WR
-- 92	Justin Rogers	    CB
-- 93	Johnny White	    RB
-- 94	Eron Riley	        WR
-- 95	Tracy Wilson	    CB
-- 96	DaNorris Searcy	    S
-- 97	Chris White	        LB
-- 98	Sterling Moore	    CB
-- 99	Chris Hairston	    T
-- 100	Andrew Hawkins	    WR


-- 11. The average salary for a DE in the nfl
SELECT AVG(salary) FROM players
WHERE position ILIKE 'de' 
-- Output: 2161326.377049180328


-- 12. The names of all the players on the Buffalo Bills
-- Answer 1 - without joining just using the team_id
SELECT name
FROM players
WHERE team_id = 1
-- #	name
-- 1	Mario Williams
-- 2	Drayton Florence
-- 3	Shawne Merriman
-- 4	Dwan Edwards
-- 5	Chris Kelsay
-- 6	Kyle Williams
-- 7	Nick Barnett
-- 8	Spencer Johnson
-- 9	Ryan Fitzpatrick
-- 10	Steve Johnson
-- 11	Tyler Thigpen
-- 12	Lee Evans (Buyout)
-- 13	Brad Smith
-- 14	Fred Jackson
-- 15	Scott Chandler
-- 16	George Wilson
-- 17	Erik Pears
-- 18	Leodis McKelvin
-- 19	Brian Moorman
-- 20	Terrence McGee
-- 21	Marcell Dareus
-- 22	Chad Rinehart
-- 23	Kraig Urbik
-- 24	Rian Lindell
-- 25	Kirk Morrison
-- 26	Corey McIntyre
-- 27	C.J. Spiller
-- 28	Garrison Sanborn
-- 29	Eric Wood
-- 30	Lionel Dotson
-- 31	Ruvell Martin
-- 32	Andy Levitre
-- 33	Jairus Byrd
-- 34	Jarron Gilbert
-- 35	Kyle Moore
-- 36	Aaron Williams
-- 37	Donald Jones
-- 38	Fendi Onobun
-- 39	Kellen Heard
-- 40	Mike Caussin
-- 41	Naaman Roosevelt
-- 42	Alex Carrington
-- 43	Arthur Moats
-- 44	Colin Brown
-- 45	Cordaro Howard
-- 46	Dan Batten
-- 47	David Nelson
-- 48	Marcus Easley
-- 49	Sam Young
-- 50	Torell Troup
-- 51	Kelvin Sheppard
-- 52	Lee Smith
-- 53	Chris Hairston
-- 54	Chris White
-- 55	DaNorris Searcy
-- 56	Johnny White
-- 57	Justin Rogers
-- 58	Kamar Aiken
-- 59	Michael Jasper

--Answer 2 - Doing an inner join and filtering list to SELECT just the Player name
SELECT players.name FROM players
JOIN teams
ON players.team_id = teams.id
WHERE team_id = 1


-- 13. The total salary of all players on the New York Giants
SELECT SUM(salary) FROM players
WHERE team_id = 2;
-- Output: sum: 77113554


-- 14. The player with the lowest salary on the Green Bay Packers
--Answer 1 - Not using Join
SELECT * 
FROM players
WHERE team_id = 23
ORDER BY salary ASC
LIMIT 1
-- Output:
-- #	id	    name	        position	salary	    team_id
-- 1	1109	Shaky Smithson	WR	        390000	    23

--Answer 2 - Using Inner Join
SELECT * 
FROM players
JOIN teams
ON players.team_id = teams.id
WHERE team_id = 23
ORDER BY salary ASC
LIMIT 1;