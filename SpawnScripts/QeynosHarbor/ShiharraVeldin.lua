--[[
	Script Name	: SpawnScripts/QeynosHarbor/ShiharraVeldin.lua
	Script Purpose	: Shiharra Veldin <Chronomagi Tasker>
	Script Author	: Dorbin
	Script Date	: 2022.06.12
	Script Notes	: TEMPORARY TEXT until mentor system setup.
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "The timelines are in flux.  Until things stablize, you'll need to wait for our Chronomagics to realign.", "no", 0, 0, Spawn, 0)

end

