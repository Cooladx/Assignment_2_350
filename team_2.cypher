

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
