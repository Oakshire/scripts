--[[
	Script Name		:	pirate skull
	Script Purpose	:	
	Script Author	:	
	Script Date		:	17/05/2020
	Script Notes	:	
--]]





function examined(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Place skull on ground", "PlaceSkull")
    AddConversationOption(conversation, "exit", "CloseItemConversation")
   StartDialogConversation(conversation, 2, Item, Player, "pirate skull test") 
  end
  

  


function PlaceSkull(Item, Player)
  zone = GetZone(Player)
  Guurok = GetSpawnByLocationID(zone, 433001)
  local distancecheck = GetDistance(Guurok, Player)
  if distancecheck > 8  then
   RemoveItem(Player, 10399)
   SendMessage(Player, "the skull is breaking on the ground", "yellow")
   CloseItemConversation(Item, Player)
  elseif distancecheck < 8 then
   FeedGuurok(Item, Player)
   CloseItemConversation(Item, Player)
   RemoveItem(Player, 10399)
   end
  end
  
  
  function FeedGuurok(Item, Player)
    zone = GetZone(Player)
  Guurok = GetSpawnByLocationID(zone, 433001)  
  if GetTempVariable(Guurok, "Feeded") == "0" then
 SpawnSet(Guurok, "size", 100)
 SetTempVariable(Guurok, "Feeded", 1)
 elseif GetTempVariable(Guurok, "Feeded") == "1" then
 SpawnSet(Guurok, "size", 105)
  SetTempVariable(Guurok, "Feeded", 2)
 elseif GetTempVariable(Guurok, "Feeded") == "2" then
 SetTempVariable(Guurok, "Feeded", 3)
 SpawnSet(Guurok, "size", 110)
elseif GetTempVariable(Guurok, "Feeded") == "3" then
   SetTempVariable(Guurok, "Feeded", 4)
   SpawnSet(Guurok, "size", 115)
elseif GetTempVariable(Guurok, "Feeded") == "4" then 
   SetTempVariable(Guurok, "Feeded", 5)
   SpawnSet(Guurok, "size", 120)
elseif GetTempVariable(Guurok, "Feeded") == "5" then 
   SetTempVariable(Guurok, "Feeded", 6)
   SpawnSet(Guurok, "size", 125)
elseif GetTempVariable(Guurok, "Feeded") == "6" then
   SetTempVariable(Guurok, "Feeded", 0)
   SpawnSet(Guurok, "size", 130)
   SpawnSet(Guurok, "visual_state", 3632)
    SpawnSet(Guurok, "show_level", 1)
     SpawnSet(Guurok, "attackable", 1)
     SpawnSet(Guurok, "faction", 1)
 end
    end
       