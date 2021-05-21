--[[
    Script Name    : SpawnScripts/Commonlands/dervorders.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 03:05:03
    Script Purpose : 
                   : 
--]]

local ConfusionIsTheKey = 444 

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
if GetQuestStep(Spawn, ConfusionIsTheKey) == 1 then
    SpawnSet(NPC, "display_hand_icon", 1)
    SpawnSet(NPC, "show_command_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Switch the Orders' then
         SetStepComplete(Spawn, ConfusionIsTheKey, 1)
		end
	end

function respawn(NPC)
	spawn(NPC)
end