--[[
	Script Name	: SpawnScripts/OutpostOverlord/aTunarianscout1.lua
	Script Purpose	: When player enters 20m proximity, scout Crouches
	Script Author	: John Adams
	Script Date	: 2009.01.08
	Script Notes	: JA: may need to adjust range
--]]

local a_Tunarian_scout = 2780067

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 30, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Player)
	FaceTarget(NPC, Player)
	DuckSpawn = GetSpawn(NPC, a_Tunarian_scout)		-- Get Tunarian Scout
	SpawnSet(DuckSpawn, "visual_state", "221")	-- Start crouch_idle
end

function LeaveRange(NPC, Player)
	DuckSpawn = GetSpawn(NPC, a_Tunarian_scout)		-- Get Tunarian Scout
	SpawnSet(DuckSpawn, "visual_state", "0")	-- Stop crouch_idle
end
