--[[
    Script Name    : SpawnScripts/SouthQeynos/TheWordsofZebuxoruk.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 04:06:56
    Script Purpose : 
                   : 
--]]


local ZebBook = 21491



function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,ZebBook,1)  then
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
if HasItem(Spawn,ZebBook,1)  then
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
  SummonItem(Spawn,ZebBook,1)
Check(NPC,Spawn)
end
end