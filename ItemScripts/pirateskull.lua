--[[
	Script Name		:	pirate skull
	Script Purpose	:	
	Script Author	:	
	Script Date		:	17/05/2020
	Script Notes	:	
--]]

local Guurok = 2530096

function examined(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Place skull on group", "PlaceSkull")
    AddConversationOption(conversation, "exit", "CloseItemConversation")
   StartDialogConversation(conversation, 2, Item, Player, "pirate skull test")  
end
  

function PlaceSkull(Item, Player)
  zone = GetZone(Player)
  Guurok = GetSpawnByLocationID(zone, 433001)
  local distancecheck = GetDistance(Guurok, Player)
  if distancecheck > 9  then
   RemoveItem(Player, 10399)
   SendMessage(Player, "the skull is breaking on the ground", "yellow")
   CloseItemConversation(Item, Player)
  else
   SendMessage(Player, "Guurok is close", "yellow")
   CloseItemConversation(Item, Player)
   RemoveItem(Player, 10399)
   end
     end
 

