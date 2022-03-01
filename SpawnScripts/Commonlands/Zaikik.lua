--[[
    Script Name    : SpawnScripts/Commonlands/Zaikik.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.14 06:03:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Outside! In the box! Don't be stupid!", "", 1689589577, 4560189)
end

function respawn(NPC)
	spawn(NPC)
end

