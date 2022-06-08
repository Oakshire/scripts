--[[
    Script Name    : SpawnScripts/SouthQeynos/questtomelakeratheteartome01.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 03:06:14
    Script Purpose : 
                   : 
--]]

local LakeBook = 14137
local LakeQuest = 5583


function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,LakeBook,1) or HasCompletedQuest(Spawn,LakeQuest) then
    SetAccessToEntityCommand(Spawn,NPC,"Search Books", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Search Books", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end


function Check(NPC,Spawn)
if HasItem(Spawn,LakeBook,1) or HasCompletedQuest(Spawn,LakeQuest) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    SetAccessToEntityCommand(Spawn,NPC,"Search Books", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Search Books", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search Books' then
  SummonItem(Spawn,LakeBook,1)
Check(NPC,Spawn)
end
end