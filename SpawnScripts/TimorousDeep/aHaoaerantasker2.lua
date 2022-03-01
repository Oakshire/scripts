--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 105.74, 6.03, -221.05, 3, 0)
	MovementLoopAddLocation(NPC, 73.94, 4.97, -236.82, 3, 0)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end