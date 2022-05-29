--[[
	Script Name		:	pirate skull
	Script Purpose	:	Governs behavior for Guurok Event on Queen's Colony
	Script Author	:	????
	Script Date		:	17/05/2020
	Script Notes	:	Fixed typos, improved readability 05/28
--]]





function examined(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Place the skull on ground.", "PlaceSkull")
    AddConversationOption(conversation, "Place it back in your bag.", "CloseItemConversation")
   StartDialogConversation(conversation, 2, Item, Player, "This skull must have some use.") 
  end
  

  


function PlaceSkull(Item, Player)
  zone = GetZone(Player)
  Guurok = GetSpawnByLocationID(zone, 433001)
  local distancecheck = GetDistance(Guurok, Player)
  if distancecheck > 8  then
   RemoveItem(Player, 10399)
   SendMessage(Player, "The skull crumbles to dust on the ground.", "yellow")
   CloseItemConversation(Item, Player)
  elseif distancecheck < 8 then
   FeedGuurok(Item, Player)
   SendMessage(Player, "The Guurok snatches the skull as you place it on the ground.", "yellow")
    FaceTarget(NPC, Player)
    PlayFlavor(Guurok, "", "", "attack", 0, 0)
    CloseItemConversation(Item, Player)
   RemoveItem(Player, 10399)
   end
  end
  
  
  function FeedGuurok(Item, Player)
    zone = GetZone(Player)
  Guurok = GetSpawnByLocationID(zone, 433001)  
  if GetTempVariable(Guurok, "FeedCounter") == "0" then
 SpawnSet(Guurok, "size", "100")
 SetTempVariable(Guurok, "FeedCounter", 1)
 elseif GetTempVariable(Guurok, "FeedCounter") == "1" then
 SpawnSet(Guurok, "size", "105")
  SetTempVariable(Guurok, "FeedCounter", 2)
 elseif GetTempVariable(Guurok, "FeedCounter") == "2" then
 SetTempVariable(Guurok, "FeedCounter", 3)
 SpawnSet(Guurok, "size", "110")
elseif GetTempVariable(Guurok, "FeedCounter") == "3" then
   SetTempVariable(Guurok, "FeedCounter", 4)
   SpawnSet(Guurok, "size", "115")
elseif GetTempVariable(Guurok, "FeedCounter") == "4" then 
   SetTempVariable(Guurok, "FeedCounter", 5)
   SpawnSet(Guurok, "size", "120")
elseif GetTempVariable(Guurok, "FeedCounter") == "5" then 
   SetTempVariable(Guurok, "FeedCounter", 6)
   SpawnSet(Guurok, "size", "125")
elseif GetTempVariable(Guurok, "FeedCounter") == "6" then
   SetTempVariable(Guurok, "FeedCounter", 666)
   SpawnSet(Guurok, "size", "130")
   SpawnSet(Guurok, "visual_state", "3632")
    SpawnSet(Guurok, "show_level", "1")
     SpawnSet(Guurok, "attackable", "1")
     SpawnSet(Guurok, "faction", "1")
 end
    end
       