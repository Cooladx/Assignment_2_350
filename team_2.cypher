/* Problem 1 Solution */
MATCH (n) where labels(n)=["Tournament"] return n;


/* Problem 5 Solution */
MATCH (n:Person {name: "Kelley O Hara"} )-[:IN_SQUAD]->(s:Squad)
RETURN COUNT(s) AS numOfSquads;


/* Problem 9 Solution */
MATCH (p:Person)-[:REPRESENTS]->(n:Team {name: "USA"})
WITH p AS player
MATCH (player)-[:COACH_FOR]->(s:Squad)
RETURN DISTINCT player.name AS personName;


/* Problem 3 Solution */
MATCH (p:Person {name: "Lauren Holiday"}) RETURN p.dob


/* Problem 4 Solution */
MATCH (p:Person) WHERE p.name CONTAINS 'Hara' RETURN properties(p)


/* Problem 7 Solution */
MATCH (p:Person)-[:COACH_FOR]->(s:Squad {id: "USA in 2019"}) RETURN p
