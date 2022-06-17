--[[
    Script Name    : SpawnScripts/ThunderingSteppes/tomemasterycentaurwidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.07 05:06:57
    Script Purpose : 
                   : 
--]]

local LnLQuest = 5399
local Book = 1907

function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,Book,1) or HasCompletedQuest(Spawn,LnLQuest) then
    SetAccessToEntityCommand(Spawn,NPC,"Search Beds", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Search Beds", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function Check(NPC,Spawn)
if HasItem(Spawn,Book,1) or HasCompletedQuest(Spawn,LnLQuest) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    SetAccessToEntityCommand(Spawn,NPC,"Search Beds", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Search Beds", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search Beds' then
    SummonItem(Spawn,Book,1)
    SendMessage(Spawn, "You find a well-worn book.")
    AddTimer(NPC, 100, "Check", 1, Spawn)
    end
end