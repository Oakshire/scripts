--[[
	Script Name	: SpawnScripts/OutpostOverlord/KurgleFrogbane.lua
	Script Purpose	: Kurgle Frogbane 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Smash him I will!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'll cover the walls with dis guy!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1032.mp3", "", "", 0, 0, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Chumpy swings like an elf!", "", 1689589577, 4560189, Spawn)
	else
	end

end

