--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/Grepp.lua
	Script Purpose	: Grepp
	Script Author	: neatz09
	Script Date		: 2023.04.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -69.93, 13.63, 154.28, 1, 0)
	MovementLoopAddLocation(NPC, -70.07, 13.64, 155.49, 1, 0)
	MovementLoopAddLocation(NPC, -69.17, 13.65, 156.1, 1, 0)
	MovementLoopAddLocation(NPC, -67.52, 13.64, 153.7, 1, 10)
	MovementLoopAddLocation(NPC, -69.17, 13.65, 156.1, 1, 0)
	MovementLoopAddLocation(NPC, -70.07, 13.64, 155.49, 1, 0)
	MovementLoopAddLocation(NPC, -69.93, 13.63, 154.28, 1, 0)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "I see you have returned.  I hope you brought your appetite.  If there is anything you need to eat we sell it right here.", "wave", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Welcome back friend the stew was most excellent.", "happy", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0, Spawn)
	end
end