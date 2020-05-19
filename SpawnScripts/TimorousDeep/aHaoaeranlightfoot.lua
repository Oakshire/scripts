--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	AddTimer(NPC, math.random(0, 1000), "FigureOutMovement")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function FigureOutMovement(NPC)
	choice = math.random(1, 3)

	if choice == 1 then
		Bird1(NPC)
	elseif choice == 2 then
		Bird2(NPC)
	elseif choice == 3 then
		Bird3(NPC)
	end
end

function Bird1(NPC)
	MovementLoopAddLocation(NPC, 442.17, 168.95, 70.54, 10, 0)
	MovementLoopAddLocation(NPC, 555.02, 164.1, 197.12, 10, 0)
end

function Bird2(NPC)
	MovementLoopAddLocation(NPC, 458.55, 168.23, 69.26, 10, 0)
	MovementLoopAddLocation(NPC, 508.19, 162.41, 125.31, 10, 0)
	MovementLoopAddLocation(NPC, 555.44, 163.9, 194.55, 10, 0)
end

function Bird3(NPC)
	MovementLoopAddLocation(NPC, 443.06, 166.78, 80.48, 10, 0)
	MovementLoopAddLocation(NPC, 501.88, 164.17, 156.77, 10, 0)
	MovementLoopAddLocation(NPC, 506.71, 170.49, 169.25, 10, 0)
	MovementLoopAddLocation(NPC, 527.83, 166.48, 194.78, 10, 0)
	MovementLoopAddLocation(NPC, 555.54, 164.19, 198.2, 10, 0)
end