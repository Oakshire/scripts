--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function death(NPC, Spawn)
	PowerInfusedBird = GetSpawn(NPC, 2630090)
	AddTimer(PowerInfusedBird, 5000, "CheckLastBird", 1, Spawn)
	Despawn(NPC, 4000)
end