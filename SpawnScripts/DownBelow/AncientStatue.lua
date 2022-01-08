--[[
    Script Name    : SpawnScripts/DownBelow/AncientStatue.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.08 04:01:07
    Script Purpose : 
                   : 
--]]

local Scepter = 5369 -- An Ancient Scepter

--[[
function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, Scepter) and not HasCompletedQuest(Spawn,  Scepter) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end
--]]
function spawn(NPC)
SetRequiredQuest(NPC, Scepter, 1)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Replace scepter' then
SetRequiredQuest(NPC, Scepter, 1)
end
end 

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end