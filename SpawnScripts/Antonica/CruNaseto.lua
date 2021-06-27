--[[
	Script Name		:	CruNaseto-Say.lua
	Script Purpose	:	Cru Naseto
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner, Say()'s ONLY
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange", "", Spawn)
end


function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "",  "You look like you could beat ol' Chon's record. Care to give it a try?", "beckon", 1689589577, 4560189, Spawn)
end
	


function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
Say(NPC, "Come back later. You look like a good runner.", Spawn)
end
