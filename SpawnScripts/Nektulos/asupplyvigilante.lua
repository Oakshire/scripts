--[[
    Script Name    : SpawnScripts/Nektulos/asupplyvigilante.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.19 08:06:02
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericCombatVoiceOvers")


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")  
end

function InRange(NPC, Spawn)
Attack(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
generic_death(NPC, Spawn)
end

function aggro(NPC, Spawn)
generic_aggro(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end