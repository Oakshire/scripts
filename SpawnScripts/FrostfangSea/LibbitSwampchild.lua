--[[
	Script Name	: SpawnScripts/FrostfangSea/LibbitSwampchild.lua
	Script Purpose	: Libbit Swampchild <Guild Cloak Designer>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	:
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Greetings friend.  I am sorry, but I can only assist members of more advanced guilds with their cloak design.", "", 1689589577, 4560189, Spawn)
end