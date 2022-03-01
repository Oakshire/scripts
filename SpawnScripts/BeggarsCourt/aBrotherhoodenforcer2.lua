--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -7.44, 4.00, -46.95, 3, 0)
	MovementLoopAddLocation(NPC, -15.15, 3.75, -31.27, 3, 6)
	MovementLoopAddLocation(NPC, -24.59, 2.00, -7.14, 3, 10, "DespawnBE2")
	AddTimer(NPC, 18000, "ComeWithUs")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function DespawnBE2(NPC)
	Despawn(NPC)
end

function ComeWithUs(NPC)
	PlayFlavor(NPC, "", "Be quiet, don't struggle, and come with us, Rommuls.", "", 1689589577, 4560189, Spawn)
end

