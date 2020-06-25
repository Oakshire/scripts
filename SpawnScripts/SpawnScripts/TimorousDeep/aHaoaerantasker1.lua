--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 92.31, 4.85, -244.68, 3, 0)
	MovementLoopAddLocation(NPC, 101.75, 6.47, -266.86, 3, 0)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
