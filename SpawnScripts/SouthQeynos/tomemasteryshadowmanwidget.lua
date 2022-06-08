--[[
    Script Name    : SpawnScripts/SouthQeynos/tomemasteryshadowmanwidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 03:06:50
    Script Purpose : 
                   : 
--]]

local Shadow = 5409
local ShadowBook = 10159


function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,ShadowBook,1) or HasCompletedQuest(Spawn,Shadow) then
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
if HasItem(Spawn,ShadowBook,1) or HasCompletedQuest(Spawn,Shadow) then
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
    SummonItem(Spawn,ShadowBook,1)
    AddTimer(NPC, 100, "Check", 1, Spawn)
    end
end