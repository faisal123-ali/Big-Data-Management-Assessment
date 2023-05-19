MATCH (chat1:Chat)-[r:RESPONDED_TO]->(chat2:Chat)
RETURN chat1, r, chat2
