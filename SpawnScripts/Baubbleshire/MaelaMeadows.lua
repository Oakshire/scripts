--[[
	Script Name	: SpawnScripts/Baubbleshire/MaelaMeadows.lua
	Script Purpose	: Maela Meadows 
	Script Author	: John Adams
	Script Date	: 2009.01.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local HELPING_A_FRIEND = 323 -- was 70
local HELPING_A_FRIEND_AGAIN = 324 -- was 71

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if HasQuest(Spawn, HELPING_A_FRIEND) and GetQuestStep(Spawn, HELPING_A_FRIEND) == 1 then
		WaterfallCalming(NPC, Spawn)
	elseif HasQuest(Spawn, HELPING_A_FRIEND_AGAIN) and GetQuestStep(Spawn, HELPING_A_FRIEND_AGAIN) == 2 then
		HelloAgain(NPC, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/qst_maela_meadows_notonquest_16832d73.mp3", "I simply love this view.", "", 3857807927, 2547090735, Spawn)
	end
end

------------------------------------------------------------------------------------
--				QUEST 1
------------------------------------------------------------------------------------

function WaterfallCalming(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sometimes we all need to be calmed.", "dlg_14_1")
	AddConversationOption(conversation, "Perhaps I will view it later.")
	StartConversation(conversation, NPC, Spawn, "The waterfall can be so calming. Don't you think?")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows002.mp3", "", "", 1134137897, 143123492, Spawn)
	AddConversationOption(conversation, "Oh, no reason. Life can get to us all. What about yourself?", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "You read my thoughts! Why have you come to calm yourself, friend?")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows003.mp3", "", "", 3490828923, 1776770993, Spawn)
	AddConversationOption(conversation, "Are you certain?", "IAmCertain")
	StartConversation(conversation, NPC, Spawn, "No reason for me either.")
end

function IAmCertain(NPC, Spawn)
	SetStepComplete(Spawn, HELPING_A_FRIEND, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Good day.")
	StartConversation(conversation, NPC, Spawn, "I am certain, but thanks.")
end

------------------------------------------------------------------------------
--			QUEST 2
------------------------------------------------------------------------------

function HelloAgain(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows002.mp3", "", "", 1134137897, 143123492, Spawn)
	AddConversationOption(conversation, "Yes. I also brought these for you.", "dlg_10_1")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Hello again. Come to watch the calming waters?")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows006.mp3", "", "", 89578648, 3127754238, Spawn)
	AddConversationOption(conversation, "You suppose?", "dlg_10_2")
	AddConversationOption(conversation, "Don't you like them?", "dlg_10_2")
	AddConversationOption(conversation, "Don't you think they're pretty?", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Oh... Shadebloom. Hmm, thank you, I suppose.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows007.mp3", "", "", 3571289059, 2379238420, Spawn)
	AddConversationOption(conversation, "I just thought you could use them.", "dlg_12_3")
	AddConversationOption(conversation, "Rondo was hoping they would open you up some.", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "I'm sorry. Please don't take offense, I just don't understand why you picked these flowers for me.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows008.mp3", "", "", 3621726001, 463966533, Spawn)
	AddConversationOption(conversation, "What significance do the flowers have?", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "Well... these flowers are special to me. I'm sure there is no way you could've known.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows009.mp3", "", "", 1834924938, 3448661763, Spawn)
	AddConversationOption(conversation, "What significance do the flowers have?", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "That little ruffian! He always knows how to get to me. He must know these flowers mean something to me.")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows010.mp3", "", "", 1115627334, 19199546, Spawn)
	AddConversationOption(conversation, "Oh, I'm terribly sorry. I didn't realize.", "dlg_14_5")
	StartConversation(conversation, NPC, Spawn, "Well, I suppose it won't hurt to tell you. These are the flowers my husband used to give me.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows011.mp3", "", "", 2910641607, 257093534, Spawn)
	AddConversationOption(conversation, "What is he doing there?", "dlg_14_6")
	StartConversation(conversation, NPC, Spawn, "Oh, don't get too upset. He's not gone, not forever at least. He's just off in the Enchanted Lands.")
end

function dlg_14_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows011a.mp3", "", "", 2125755974, 213215636, Spawn)
	AddConversationOption(conversation, "How long has he been gone?", "dlg_14_7")
	StartConversation(conversation, NPC, Spawn, "He's responding to the call that all halflings get. He has returned to what was once our homeland. After we lost Rivervale many of us never thought we would ever get it back. Now, and to my husband especially, reclaiming it seems possible. He couldn't wait that long, however, and has decided he needed to visit.")
end

function dlg_14_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows012.mp3", "", "", 3231833073, 1031763109, Spawn)
	AddConversationOption(conversation, "You have friends you can talk to, right?", "dlg_14_8")
	StartConversation(conversation, NPC, Spawn, "Only a couple of weeks. That's why it's so upsetting that I miss him so much. He isn't scheduled back for three months. I don't know if I'll be able to handle it.")
end

function dlg_14_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows013.mp3", "", "", 9272878, 2191624347, Spawn)
	AddConversationOption(conversation, "Do you think any less of the many people who come to you for advice?", "dlg_14_9")
	StartConversation(conversation, NPC, Spawn, "Yes, but I hate to complain. I don't like to burden other people with my problems, it makes me feel like I'm not being a good friend.")
end

function dlg_14_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows014.mp3", "", "", 2061524224, 2107406265, Spawn)
	AddConversationOption(conversation, "I'm sure your friends would be very happy to keep you company and lend you support. From what I hear you're a very good listener yourself, I'm sure your friends would jump at the chance to return the favor.", "dlg_14_10")
	StartConversation(conversation, NPC, Spawn, "No, I do not.")
end

function dlg_14_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows015.mp3", "", "", 3752197711, 2604822585, Spawn)
	AddConversationOption(conversation, "Probably not.", "dlg_14_11")
	StartConversation(conversation, NPC, Spawn, "Oh, you're probably right. I don't suppose I'm doing myself any good trying to bottle up these feelings, either.")
end

function dlg_14_11(NPC, Spawn)
	SetStepComplete(Spawn, HELPING_A_FRIEND_AGAIN, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maela_meadows/qey_village06/quests/maela_meadows/maela_meadows016.mp3", "", "", 1285927202, 381670493, Spawn)
	AddConversationOption(conversation, "You're quite welcome.")
	StartConversation(conversation, NPC, Spawn, "Thank you so much for your help.")
end