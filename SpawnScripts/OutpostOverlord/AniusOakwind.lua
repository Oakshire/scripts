--[[
	Script Name	: SpawnScripts/OutpostoftheOverlord/AniusOakwind.lua
	Script Purpose	: Anius Oakwind 
	Script Author	: Lemmeron (Parser script inserted by Cynnar 2018.10.14)
	Script Date	: 19.08.2020
	Script Notes	: NPC Spawn called by Evil Grave after player kicks it (2780153) 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Who disturbs my rest?", "", 1689589577, 4560189, Spawn)
end

