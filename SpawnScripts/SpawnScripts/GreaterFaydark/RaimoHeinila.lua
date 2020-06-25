--[[
	Script Name	: SpawnScripts/GreaterFaydark/RaimoHeinila.lua
	Script Purpose	: Raimo Heinila 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/ecology/pub_warrior_raimo_hail_2e22fc60.mp3", "Kelethin belongs to the Fae now.", "", 2984282599, 4013295687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/ecology/pub_warrior_raimo_hail_2e3cf704.mp3", "Times were much simpler when I was younger.  So much has changed since then!", "", 2710697396, 295720892, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/ecology/pub_warrior_raimo_hail_cf24d0e6.mp3", "I remember the old days...before the Outsiders arrived.", "", 1611261803, 2099858771, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/quest/qst_raimo_heinila/qst_raimo_heinila001.mp3", "", "", 1429033185, 3057559002, Spawn)
	AddConversationOption(conversation, "I've started the Rite of Passage and...", "dlg_87_1")
	AddConversationOption(conversation, "Sorry to bother you.")
	StartConversation(conversation, NPC, Spawn, "Yes? What do you want?")
end

function dlg_87_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/quest/qst_raimo_heinila/qst_raimo_heinila002.mp3", "", "", 3640055551, 3826016721, Spawn)
	AddConversationOption(conversation, "But Lyyti said to speak with you!", "dlg_87_2")
	StartConversation(conversation, NPC, Spawn, "That gives you the right to interrupt me on my walk?  It's bad enough that the Outsiders won't leave me in peace, but a young sprout like you should know better.")
end

function dlg_87_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/quest/qst_raimo_heinila/qst_raimo_heinila003.mp3", "", "", 1326667193, 2814659187, Spawn)
	AddConversationOption(conversation, "What kind of mistakes?", "dlg_87_3")
	StartConversation(conversation, NPC, Spawn, "And if Lyyti said to jump off one of the bridges, would you?  The value in history, sprout, is that when you remember it, you can avoid making the same mistakes.  I am still trying to learn that lesson.")
end

function dlg_87_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/quest/qst_raimo_heinila/qst_raimo_heinila004.mp3", "", "", 2298966137, 2453405549, Spawn)
	AddConversationOption(conversation, "We could heal the treants...or cull them.", "dlg_87_4")
	StartConversation(conversation, NPC, Spawn, "Mistakes in war and in peace! We should never have allowed the Outsiders to come to Kelethin. Huh! Look at the poor, diseased treants on Green Knoll -- they're dying of an Outsiders' disease.  Before long, the disease will waste away treants throughout the Faydarks and who knows what else must suffer for that.")
end

function dlg_87_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/quest/qst_raimo_heinila/qst_raimo_heinila005.mp3", "", "", 3829827816, 2730687571, Spawn)
	AddConversationOption(conversation, "Queen Amree says...", "dlg_87_5")
	StartConversation(conversation, NPC, Spawn, "Our healing has proved useless against whatever plague the Outsiders have placed upon those defenseless treants.  You're so eager to defend the Outsiders, you are free to clean up after them as well.  Princess Saphronia is right.  They'll bring nothing but death, as they always have.")
end

function dlg_87_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/quest/qst_raimo_heinila/qst_raimo_heinila006.mp3", "", "", 875120539, 3120603699, Spawn)
	AddConversationOption(conversation, "I'm sorry to have bothered you.", "dlg_87_6")
	StartConversation(conversation, NPC, Spawn, "Queen Amree's spirit comes from a different Ring entirely.  You want to listen to happy stories, go see Hamnal Teolofin.  Now, please, leave an old spirit in peace.  Ugh. Mark my words -- we'll be sorry for the day the Outsiders arrived.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/ecology/pub_warrior_raimo_hail_2e22fc60.mp3", "Kelethin belongs to the Fae now.", "", 2984282599, 4013295687, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/ecology/pub_warrior_raimo_hail_cf24d0e6.mp3", "I remember the old days...before the Outsiders arrived.", "", 1611261803, 2099858771, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/raimo_heinila/_exp03/exp03_cty_kelethin/ecology/pub_warrior_raimo_hail_2e3cf704.mp3", "Times were much simpler when I was younger.  So much has changed since then!", "", 2710697396, 295720892, Spawn)
--]]

