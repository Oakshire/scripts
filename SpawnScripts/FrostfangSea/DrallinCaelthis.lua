--[[
	Script Name	: SpawnScripts/FrostfangSea/DrallinCaelthis.lua
	Script Purpose	: Drallin Caelthis <Foreign Broker>
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
	PlayFlavor(NPC, "", "Do I have any qualms about fencing items from across the sea?  Not a one.  The money I make more than compensates for the risk.", "chuckle", 1689589577, 4560189, Spawn)
end