--[[
    Script Name    : SpawnScripts/SouthQeynos/questtomecmdrwifetome01.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 03:06:52
    Script Purpose : 
                   : 
--]]

local WifeBook = 13983
local WifeQuest = 5584


function spawn(NPC)
Check(NPC,Spawn)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasItem(Spawn,WifeBook,1) or HasCompletedQuest(Spawn,WifeQuest) then
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
if HasItem(Spawn,WifeBook,1) or HasCompletedQuest(Spawn,WifeQuest) then
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
  SummonItem(Spawn,WifeBook,1)
Check(NPC,Spawn)
end
end