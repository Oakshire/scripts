local QUEST = 258
function examined(Item, Player)
    if CanReceiveQuest(Player, QUEST)
  then  OfferQuest(NPC, Player, QUEST)
    end
    end