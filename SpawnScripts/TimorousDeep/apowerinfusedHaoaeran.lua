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

function CheckLastBird(NPC, Spawn)
	OtherBird = GetSpawn(NPC, 2630089)
	if OtherBird == nil or not IsAlive(OtherBird) then
		KillSpawn(NPC, Spawn, 1)
	end
end

function death(NPC, Spawn)
	Say(NPC, "You... shall... pay...", Spawn)
	Emote(NPC, "screeches with pain as the ritual is cut short.")
end