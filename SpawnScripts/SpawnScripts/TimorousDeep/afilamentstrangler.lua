--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	Monitor = GetSpawn(NPC, 2630070)
	
	if Monitor ~= nil and GetDistance(NPC, Monitor) <= 10 then
		Emote(NPC, "moves slightly as filaments emerge from the ground, gripping its target.")
		SpawnMob(GetZone(NPC), 2630682, false, GetX(Monitor), GetY(Monitor), GetZ(Monitor), GetHeading(Monitor))
		Despawn(Monitor)
		FilamentMonitor = GetSpawn(NPC, 2630682)
		Despawn(FilamentMonitor, 60000)
	end
end