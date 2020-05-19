local QUEST = 385
function examined(Item, Player)
     if CanReceiveQuest(Player, QUEST)
   then OfferQuest(NPC, Player, QUEST)
end
end