--[[
	Script Name	: SpawnScripts/ButcherblockMountains/DockworkerAlesford.lua
	Script Purpose	: Dockworker Alesford 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", "", "", 0, 0, Spawn)
		PlayFlavor(NPC, "", "Not now, Mizzen is about to get to the best part!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", "", "", 0, 0, Spawn)
		PlayFlavor(NPC, "", "Ole Mizzen is telling one of his adventures again. A life at sea sounds perilous!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1062.mp3", "", "", 0, 0, Spawn)
		PlayFlavor(NPC, "", "If you're looking for something to do, go see Dockmaster Waulon. Brell knows he has enough work for me to do.", "", 1689589577, 4560189, Spawn)
	end

end

