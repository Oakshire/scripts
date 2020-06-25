--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
--	AddTransportSpawn(NPC)
--	AddTimer(NPC, 15, "UseLift")
    AddMultiFloorLift(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function UseLift(NPC)
	UseWidget(NPC)
	AddTimer(NPC, 15, "UseLift")
end
