--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	AddTimer(NPC, 500, "CheckForBirds")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function CheckForBirds(NPC)
	Bird = GetSpawn(NPC, 2630105)
	if Bird ~= nil then
		if GetDistance(NPC, Bird) <= 15 and IsAlive(Bird) then
			KillSpawn(Bird, NPC, 1)
		end
	end

	AddTimer(NPC, 500, "CheckForBirds")
end
