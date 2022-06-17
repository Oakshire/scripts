--[[
    Script Name    : SpawnScripts/Antonica/tomemasterygnollwidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.07 03:06:08
    Script Purpose : 
                   : 
--]]


local LnLQuest = 5398
local Book = 8632

function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,Book,1) or HasCompletedQuest(Spawn,LnLQuest) then
    SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function Check(NPC,Spawn)
if HasItem(Spawn,Book,1) or HasCompletedQuest(Spawn,LnLQuest) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Open Chest' then
    SendMessage(Spawn, "You find a slightly tattered book.")
    SummonItem(Spawn,Book,1)
    AddTimer(NPC, 100, "Check", 1, Spawn)
    end
end