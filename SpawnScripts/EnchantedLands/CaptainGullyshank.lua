--[[
	Script Name	: SpawnScripts/EnchantedLands/CaptainGullyshank.lua
	Script Purpose	: Captain Gullyshank 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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
	conversation = CreateConversation()

	local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/halflings/halfling_captain_gullyshank_callout_50d8336.mp3", "Announce yourself!  Are you friend or foe?", "", 2214140192, 919057659, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank006.mp3", "", "", 3764870485, 213873331, Spawn)
		AddConversationOption(conversation, "Good, glad to have helped.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Do you have them? Let's have a look ... they're in better condition than I expected.")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank008.mp3", "", "", 1225501258, 3997832016, Spawn)
		AddConversationOption(conversation, "Ok. ", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "I don't mean to be rude, but I must get back to my watch.  Perhaps we can speak another time.")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank006.mp3", "", "", 3764870485, 213873331, Spawn)
		AddConversationOption(conversation, "Good, glad to have helped.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "Do you have them? Let's have a look ... they're in better condition than I expected.")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank008.mp3", "", "", 1225501258, 3997832016, Spawn)
		AddConversationOption(conversation, "Okay. ", "dlg_23_1")
		StartConversation(conversation, NPC, Spawn, "I don't mean to be rude, but I must get back to my watch.  Perhaps we can speak another time.")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank001.mp3", "", "", 230031672, 333606021, Spawn)
		AddConversationOption(conversation, "Why are you giving me words of caution?", "dlg_26_1")
		AddConversationOption(conversation, "Good bye. ")
		StartConversation(conversation, NPC, Spawn, "Words of caution are all I can lend you, friend.  Our forces are spread far too thin to assist with anything other than defending what is left of our land.")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank001.mp3", "", "", 230031672, 333606021, Spawn)
		AddConversationOption(conversation, "Why are you giving me words of caution?", "dlg_27_1")
		AddConversationOption(conversation, "Good bye. ")
		StartConversation(conversation, NPC, Spawn, "Words of caution are all I can lend you, friend.  Our forces are spread far too thin to assist with anything other than defending what is left of our land.")
	end

	if convo==28 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank001.mp3", "", "", 230031672, 333606021, Spawn)
		AddConversationOption(conversation, "Why are you giving me words of caution?", "dlg_28_1")
		AddConversationOption(conversation, "Good bye. ")
		StartConversation(conversation, NPC, Spawn, "Words of caution are all I can lend you, friend.  Our forces are spread far too thin to assist with anything other than defending what is left of our land.")
	end

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank005.mp3", "", "", 362670140, 3713120877, Spawn)
		AddConversationOption(conversation, "Understood.", "dlg_29_1")
		StartConversation(conversation, NPC, Spawn, "Please don't bother me until you've recovered the documents. ")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/captain_gullyshank/captain_gullyshank007.mp3", "", "", 3374555947, 3228895924, Spawn)
		AddConversationOption(conversation, "Thanks.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Well, that's one thing less to worry about.  Your efforts are appreciated and will not go unrewarded. ")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/captain_gullyshank/enchanted/halflings/halfling_captain_gullyshank_callout_50d8336.mp3", "Announce yourself!  Are you friend or foe?", "", 2214140192, 919057659, Spawn)
--]]

