MATCH (chat:Chat)-[r:RESPONDED_TO]->()
WITH chat, COUNT(r) AS responseCount
RETURN chat.chat_id, responseCount
ORDER BY responseCount DESC
LIMIT 5
