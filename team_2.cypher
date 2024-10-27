/* Problem 1 Solution */
MATCH (n) where labels(n)=["Tournament"] return n;

/* Problem 2 Solutin */
MATCH (p:Person)-[:REPRESENTS]->(n:Team {name: "USA"}) 
Return p

/* Problem 3 Solution */
MATCH (p:Person {name: "Lauren Holiday"}) RETURN p.dob

/* Problem 4 Solution */
MATCH (p:Person) WHERE p.name CONTAINS 'Hara' RETURN properties(p)

/* Problem 5 Solution */
MATCH (n:Person {name: "Kelley O Hara"} )-[:IN_SQUAD]->(s:Squad)
RETURN COUNT(s) AS numOfSquads;

/* Problem 6 Solution */
MATCH (p:Person)-[:SCORED_GOAL]->(match), (p)-[:REPRESENTS]->(team{name: "USA"}) 
Return p.name
 
/* Problem 7 Solution */
MATCH (p:Person)-[:COACH_FOR]->(s:Squad {id: "USA in 2019"}) RETURN p

/* Problem 8 Solution */
MATCH (p:Person {name: "Rose Lavelle"})-[:SCORED_GOAL]->(m:Match) 
Return m

/* Problem 9 Solution */
MATCH (p:Person)-[:REPRESENTS]->(n:Team {name: "USA"})
WITH p AS player
MATCH (player)-[:COACH_FOR]->(s:Squad)
RETURN DISTINCT player.name AS personName;