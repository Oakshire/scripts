--[[
    Script Name    : SpawnScripts/NorthFreeport/tomemasteryelementalwidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.07 05:06:53
    Script Purpose : 
                   : 
--]]

local Elemental = 5402

function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,13581,1) or HasCompletedQuest(Spawn,Elemental) then
    SetAccessToEntityCommand(Spawn,NPC,"Take Book", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    else
    SetAccessToEntityCommand(Spawn,NPC,"Take Book", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function Check(NPC,Spawn)
if HasItem(Spawn,13581,1) or HasCompletedQuest(Spawn,Elemental) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    SetAccessToEntityCommand(Spawn,NPC,"Take Book", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Take Book", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Take Book' then
    SummonItem(Spawn,13581,1)
    AddTimer(NPC, 100, "Check", 1, Spawn)
    end
end