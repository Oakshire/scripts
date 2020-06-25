--[[
	Script Name	: SpawnScripts/OutpostOverlord/SarylScarscale.lua
	Script Purpose	: Saryl Scarscale <General Goods>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", "All the way back to the days of Cabilis, my family has provided goods to those in need.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", "All you sseek can be found here!", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", "All you sseek can be found here!", "", 1689589577, 4560189, Spawn)
	else
	end

end
