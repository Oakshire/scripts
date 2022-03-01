--[[
	Script Name	: SpawnScripts/ElddarGrove/Duvo.lua
	Script Purpose	: Duvo <Alchemist>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", "My apologies, friend. I did not see you there ... What is it you need?", "", 3948051330, 1166584264, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_multhail1_a72f47c8.mp3", "I'm sorry. I cannot help you.", "", 1448300901, 17119076, Spawn)
	else
	end

end

