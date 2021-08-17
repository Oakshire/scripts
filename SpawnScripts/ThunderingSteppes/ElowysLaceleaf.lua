--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ElowysLaceleaf.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 06:08:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "",  "Say! Are you a collector, too? I'm having the worst luck!", "", 0, 0, Spawn)
end
	

function respawn(NPC)
	spawn(NPC)
end