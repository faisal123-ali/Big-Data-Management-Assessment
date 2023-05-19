
LOAD CSV FROM "file:///chat_join_team_chat.csv" AS row,
MERGE (u:Users {id: row[0]})
MERGE (c:ChatSession {id: row[1]})
MERGE (u)-[:Joins {timeStamp: row[2]}]->(c)