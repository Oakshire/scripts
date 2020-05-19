--[[
	Script Name	: SpawnScripts/FrostfangSea/WolfomBonetooth.lua
	Script Purpose	: Wolfom Bonetooth <Coldwind Hall Taskmaster>
	Script Author	: theFoof
	Script Date	: 2013.09.16
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Do not be in such a rush young one. You will be strong enough one day to take on my noble tasks. ", "no", 1689589577, 4560189, Spawn)
end

