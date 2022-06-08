--[[
    Script Name    : SpawnScripts/Commonlands/tomemasteryorcwidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.07 05:06:07
    Script Purpose : 
                   : 
--]]

local LnLQuest = 5257
local Book = 10203

function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,Book,1) or HasCompletedQuest(Spawn,LnLQuest) then
    SetAccessToEntityCommand(Spawn,NPC,"Look Behind Shield", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Look Behind Shield", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function Check(NPC,Spawn)
if HasItem(Spawn,Book,1) or HasCompletedQuest(Spawn,LnLQuest) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    SetAccessToEntityCommand(Spawn,NPC,"Look Behind Shield", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Look Behind Shield", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Look Behind Shield' then
    SummonItem(Spawn,Book,1)
    AddTimer(NPC, 100, "Check", 1, Spawn)
    end
end