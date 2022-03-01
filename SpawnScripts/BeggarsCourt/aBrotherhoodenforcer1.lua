--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -14.62, 2.25, -6.99, 3, 0)
	MovementLoopAddLocation(NPC, -17.68, 3.00, -21.58, 3, 10)
	MovementLoopAddLocation(NPC, -24.59, 2.00, -7.14, 3, 10, "DespawnBE1")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function DespawnBE1(NPC)
	Despawn(NPC)
end