/* Problem 3 Solution */
MATCH (p:Person {name: "Lauren Holiday"}) RETURN p.dob

/* Problem 4 Solution */
MATCH (p:Person) WHERE p.name CONTAINS 'Hara' RETURN properties(p)

/* Problem 7 Solution */
MATCH (p:Person)-[:COACH_FOR]->(s:Squad {id: "USA in 2019"}) RETURN p