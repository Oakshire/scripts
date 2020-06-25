--[[
	Script Name	: SpawnScripts/QeynosHarbor/ShiharraVeldin.lua
	Script Purpose	: Shiharra Veldin <Chronomagi Tasker>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The magic of time is powerful.  To master it takes a lifetime.", "salute", 1689589577, 4560189, Spawn)
	else
	end

end

