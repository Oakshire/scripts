--[[
    Script Name    : SpawnScripts/Antonica/OutriderLidsey.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Remain silent.  I cannot give away my position here.", "no", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end