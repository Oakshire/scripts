--[[
    Script Name    : SpawnScripts/Antonica/widgetbowlmap.lua
    Script Author  : Premierio015
    Script Date    : 2022.08.11 06:08:22
    Script Purpose : 
                   : 
--]]

local TheCavemawsSinisterMap = 5714

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
if HasQuest(Spawn, TheCavemawsSinisterMap) or HasCompletedQuest(Spawn, TheCavemawsSinisterMap) then
   SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"look under bowl", 0)
end
    end

function casted_on(NPC, Spawn, SpellName)
   SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"look under bowl", 0)
        AddTimer(NPC, 10000, "check", 1, Spawn)
    local con = CreateConversation()
     AddConversationOption(con, "Examine the parchment.", "con1")
     AddConversationOption(con, "Leave it alone.")
 StartDialogConversation(con, 1, NPC, Spawn, "You see a piece of parchment being held down by a large bowl.")
 end
 
 function con1(NPC, Spawn)
OfferQuest(NPC, Spawn, TheCavemawsSinisterMap)
    local con = CreateConversation()
    AddConversationOption(con, "I will slay the Cavemaw tunnelers.")
 StartDialogConversation(con, 1, NPC, Spawn, "Closer inspection of the parchment reveals that it is a map. The map outlines a Gnollish plan to dig a tunnel from the mountain all the way to Qeynos. Without tunnelers, their progress would be slowed down to a halt.")
end

function check(NPC, Spawn)
     if not HasQuest(Spawn, TheCavemawsSinisterMap) and not HasCompletedQuest(Spawn,  TheCavemawsSinisterMap) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"look under bowl", 1)
end
   end   

function respawn(NPC)
	spawn(NPC)
end