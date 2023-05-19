LOAD CSV WITH HEADERS FROM 'file:///chat_mention_team_chat.csv' AS row
MERGE (user:User {user_id: row.user_id})
MERGE (chat:Chat {chat_item: row.chat_item})
MERGE (user)-[:MENTIONED]->(chat)
