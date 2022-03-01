--[[
	Script Name	: SpawnScripts/FrostfangSea/LondiarInygad.lua
	Script Purpose	: Londiar Inygad <Adorning Daily Tasks>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "hello", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you, I'll keep that in mind.")
	AddConversationOption(conversation, "How would I learn adorning?", "AdornChat1")
	StartConversation(conversation, NPC, Spawn, "Good day, friend.  Let me know if you take up the craft of adorning, I may have some work for you if so.")
end

function AdornChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Visit the adorning trainer in the city of Kelethin, or on the docks of Butcherblock Mountains, if you wish to learn this skill.  While you're there, you can also learn tinkering if you are interested.")
end
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you, I'll keep that in mind.", "dlg_1_1")
		AddConversationOption(conversation, "How would I learn adorning?")
		StartConversation(conversation, NPC, Spawn, "Good day, friend.  Let me know if you take up the craft of adorning, I may have some work for you if so.")
	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you, I'll keep that in mind.", "dlg_2_1")
		AddConversationOption(conversation, "How would I learn adorning?")
		StartConversation(conversation, NPC, Spawn, "Good day, friend.  Let me know if you take up the craft of adorning, I may have some work for you if so.")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you, I'll keep that in mind.", "dlg_5_1")
		AddConversationOption(conversation, "How would I learn adorning?")
		StartConversation(conversation, NPC, Spawn, "Good day, friend.  Let me know if you take up the craft of adorning, I may have some work for you if so.")
	end

	if convo==6 then
		PlayFlavor(NPC, "londiar_inygad/tradeskill/live_quests/adorning_daily_005.mp3", "", "", 2903671869, 119224492, Spawn)
		AddConversationOption(conversation, "Not yet, I'll be back with them soon.", "dlg_6_1")
		AddConversationOption(conversation, "Yes I have, here you go.")
		StartConversation(conversation, NPC, Spawn, "Hello again.  Have you finished those adornments?")
	end

	if convo==7 then
		PlayFlavor(NPC, "londiar_inygad/tradeskill/live_quests/adorning_daily_005.mp3", "", "", 2903671869, 119224492, Spawn)
		AddConversationOption(conversation, "Not yet, I'll be back with them soon.", "dlg_7_1")
		AddConversationOption(conversation, "Yes I have, here you go.")
		StartConversation(conversation, NPC, Spawn, "Hello again.  Have you finished those adornments?")
	end

	if convo==9 then
		PlayFlavor(NPC, "londiar_inygad/tradeskill/live_quests/adorning_daily_007.mp3", "", "", 2470727427, 4215990095, Spawn)
		AddConversationOption(conversation, "Very well.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Unfortunately, I'm out of components now, so you'll have to come back tomorrow if you want to help further.")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Visit the adorning trainer in the city of Kelethin, or on the docks of Butcherblock Mountains, if you wish to learn this skill.  While you're there, you can also learn tinkering if you are interested.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Visit the adorning trainer in the city of Kelethin, or on the docks of Butcherblock Mountains, if you wish to learn this skill.  While you're there, you can also learn tinkering if you are interested.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Visit the adorning trainer in the city of Kelethin, or on the docks of Butcherblock Mountains, if you wish to learn this skill.  While you're there, you can also learn tinkering if you are interested.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll get to work now.", "dlg_5_2")
	AddConversationOption(conversation, "Sorry, I've changed my mind.")
	StartConversation(conversation, NPC, Spawn, "Thank you, we are always in need of more.  Please take this recipe and these components, and get to work.  You will need to supply your own fuel, however, and the cost of this will not be reimbursed.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Thank you, bring them back to me when you're done.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "londiar_inygad/tradeskill/live_quests/adorning_daily_006.mp3", "", "", 287110901, 245711122, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Thank you!  Feel free to stop by tomorrow if you are looking for more work, I might need more assistance by then.")
end
--]]