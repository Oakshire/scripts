--[[
    Script Name    : SpawnScripts/RuinsVarsoon/widgettorturedrawer.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.22 05:01:42
    Script Purpose : 
                   : 
--]]

local InnerStr = 5450

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'examine drawer' then
    local con = CreateConversation()
    AddConversationOption(con, "Read the scroll.", "offer")
    AddConversationOption(con, "Leave it be.")
    StartDialogConversation(con, 1, NPC, Spawn, "There is a rolled up scroll inside one of the drawers. ")
end
end

function offer(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "I will destroy them.","Offer2")
    AddConversationOption(con, "Stuff the scroll back in the drawer.")
 StartDialogConversation(con, 1, NPC, Spawn, "The scroll reads: 'At the core of every enchanted clay lies the soul of a great warrior. Collect these souls and you will strengthen yourself with their knowledge of battles long past.' Putting the scrolls down, you decide to seek out the enchanted clays and see if there is any truth to this information.")
    SetAccessToEntityCommand(Spawn,NPC,"examine drawer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function Offer2 (NPC, Spawn)
    OfferQuest(NPC, Spawn, InnerStr)
    CloseItemConversation(NPC,Spawn)
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, InnerStr) or HasCompletedQuest(Spawn, InnerStr) then
    SetAccessToEntityCommand(Spawn,NPC,"examine drawer", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function check(NPC, Spawn)
    if not HasQuest(Spawn, InnerStr) and not HasCompletedQuest(Spawn,  InnerStr) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine drawer", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end