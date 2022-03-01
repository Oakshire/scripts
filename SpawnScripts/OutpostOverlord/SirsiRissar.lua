--[[
	Script Name	: SpawnScripts/OutpostOverlord/SirsiRissar.lua
	Script Purpose	: Sirsi Rissar 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "There it was again!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1027.mp3", "Ever heard of the dreaded Bladefin?", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "I sssee a fin rissing up from the ruins over there!", "", 1689589577, 4560189, Spawn)
	end

end

