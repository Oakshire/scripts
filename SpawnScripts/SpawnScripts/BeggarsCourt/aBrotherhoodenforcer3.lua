--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 4.64, 4.75, -27.67, 3, 0)
	MovementLoopAddLocation(NPC, -12.87, 3.26, -25.76, 3, 6)
	MovementLoopAddLocation(NPC, -24.59, 2.00, -7.14, 3, 10, "DespawnBE3")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end


function DespawnBE3(NPC)
	Despawn(NPC)
end

