LOAD CSV WITH HEADERS FROM 'file:///chat_respond_team_chat.csv' AS row
MERGE (chat1:Chat {chat_id: row.chatid1})
MERGE (chat2:Chat {chat_id: row.chatid2})
CREATE (chat1)-[:RESPONDED_TO {date: row.date}]->(chat2)
