LOAD CSV FROM 'file:///chat_mention_team_chat.csv' AS row
CREATE (:ChatMentionTeamChat {
  chat_item: row[0],
  user_id: row[1],
  date: row[2]
})

WITH *
MATCH (n:ChatMentionTeamChat)
RETURN n.user_id, count(*) AS mention_count
ORDER BY mention_count DESC
