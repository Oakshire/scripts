--[[
    Script Name    : SpawnScripts/SouthQeynos/questtomefroglokwartome01.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 12:06:54
    Script Purpose : 
                   : 
--]]

local FrogBook = 6340
local FrogQuest = 5582


function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,FrogBook,1) or HasCompletedQuest(Spawn,FrogQuest) then
      SetAccessToEntityCommand(Spawn,NPC,"Search Books", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function Check(NPC,Spawn)
if HasItem(Spawn,FrogBook,1) or HasCompletedQuest(Spawn,FrogQuest) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)    
    SetAccessToEntityCommand(Spawn,NPC,"Search Books", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search Books' then
  SummonItem(Spawn,FrogBook,1)
Check(NPC,Spawn)
end
end