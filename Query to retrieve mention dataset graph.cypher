MATCH (user:User)-[:MENTIONED]->(chat:Chat)
RETURN user, chat
