--[[
	Script Name	: SpawnScripts/ElddarGrove/MasterArcherNightbow.lua
	Script Purpose	: Master Archer Nightbow <Bowyer>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_callout1_f29bf504.mp3", "Welcome to In-Range. How can I oblige you, traveler?", "", 514837561, 1511494370, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_multhail2_8e9f4cb0.mp3", "What is it you need, traveler?", "", 4065639405, 4258763812, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1021.mp3", "", "", 0, 0, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1021.mp3", "", "", 0, 0, Spawn)
	else
	end

end

