--[[
	Script Name	: SpawnScripts/FrostfangSea/MistressThora.lua
	Script Purpose	: Mistress Thora <Purveyor of Artifacts>
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
	PlayFlavor(NPC, "", "I deal in any artifacts you or your guild might be interested in. Let's take a look at what you have.", "nod", 1689589577, 4560189, Spawn)
end

