--[[
	Script Name	: SpawnScripts/GreaterFaydark/BrinkTrudger.lua
	Script Purpose	: Brink Trudger 
	Script Author	: John Adams
	Script Date	: 2009.02.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, 1)
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

	-- says this until you are level 5
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/quest/brink_trudger_low_level_c046f9f.mp3", "Hello, youngin'!  Check back with me when you have a bit more experience under your belt.  I may have some work for you then!", "", 1587078746, 1916787035, Spawn)

	--PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger013.mp3", "", "", 4292702593, 57983242, Spawn)
	--AddConversationOption(conversation, "Yes, I have them right here.", "dlg_3_1")
	--AddConversationOption(conversation, "Not yet, but I'm working on it.")
	--StartConversation(conversation, NPC, Spawn, "Hello there, " .. GetName(Spawn) .. ".  Any luck getting those shells from the beach?")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger001.mp3", "", "", 2534543570, 2988502140, Spawn)
		AddConversationOption(conversation, "Who are you?", "dlg_5_1")
		AddConversationOption(conversation, "Thanks, goodbye.")
		StartConversation(conversation, NPC, Spawn, "Hi there, young one'!  Heh. Off to start your adventures in the great-big, crazy world, eh?  Always keep your wits about you! My wits saved me from a few scrapes over the years.")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger004.mp3", "", "", 1893137792, 84245308, Spawn)
		AddConversationOption(conversation, "I have some growler pelts for you.", "dlg_7_1")
		AddConversationOption(conversation, "I don't have the pelts yet.")
		StartConversation(conversation, NPC, Spawn, "Howdy youngin'!  How goes the hunt for the growler pelts?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger001.mp3", "", "", 2534543570, 2988502140, Spawn)
		AddConversationOption(conversation, "Who are you?", "dlg_14_1")
		AddConversationOption(conversation, "Thanks, goodbye.")
		StartConversation(conversation, NPC, Spawn, "Hi there, young one'!  Heh. Off to start your adventures in the great-big, crazy world, eh?  Always keep your wits about you! My wits saved me from a few scrapes over the years.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger007.mp3", "", "", 3075516817, 4149443357, Spawn)
		AddConversationOption(conversation, "Yes, I have some spider silk for you.", "dlg_15_1")
		AddConversationOption(conversation, "Nope, not yet.")
		StartConversation(conversation, NPC, Spawn, "Welcome back, " .. GetName(Spawn) .. ".  Heehee ...Were you able to get your hands on some spider silk?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger007.mp3", "", "", 3075516817, 4149443357, Spawn)
		AddConversationOption(conversation, "Yes, I have some spider silk for you.", "dlg_19_1")
		AddConversationOption(conversation, "Nope, not yet.")
		StartConversation(conversation, NPC, Spawn, "Welcome back, " .. GetName(Spawn) .. ".  Heehee ...Were you able to get your hands on some spider silk?")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger014.mp3", "", "", 4065110799, 2574058259, Spawn)
	AddConversationOption(conversation, "Thanks, Brink.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Ah, these are excellent huhhuh.  Not a scratch on 'em!  Uh, these will make fine plate armor, indeed.  We appreciate everything you've done.  You're going to make a mark in this world, I tell you.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger002.mp3", "", "", 2521303074, 4079509468, Spawn)
	AddConversationOption(conversation, "Sure.  How can I help?", "dlg_5_2")
	AddConversationOption(conversation, "I'm sorry, I'm busy.")
	StartConversation(conversation, NPC, Spawn, "The names Trudger, youngin', Brink Trudger.  I've been where you're going.  I used to be an adventurer, wandering the Shattered Lands, but now I help the Matron of the Nursery by making clothing for newly awakened fae.  Eh, I could use your help, if you're willing.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger003.mp3", "", "", 860825066, 492028532, Spawn)
	AddConversationOption(conversation, "I can get the hides for you.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "I'm running low on leather for my fae outfits.  I'd go out hunting myself, but I don't think my old bones could take it.  Hahaha!  If you get me some growler pelts from the grey growlers west of here, I could tan them to make new strips of leather.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger003_offer.mp3", "", "", 179963171, 4058842652, Spawn)
	AddConversationOption(conversation, "This should be no problem.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger005.mp3", "", "", 904667062, 23815959, Spawn)
	AddConversationOption(conversation, "Sure, what is it?", "dlg_7_2")
	AddConversationOption(conversation, "I don't have time to help anymore, goodbye.")
	StartConversation(conversation, NPC, Spawn, "These are great!  Nice skinning job on the hides.  They'll make great leather pieces.  You know, I hate to ask, but, uh, I need your help just one more time.  ")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger006.mp3", "", "", 429538583, 2492036558, Spawn)
	AddConversationOption(conversation, "I'll get the silk for you.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "While you were out, I discovered I'm almost out of the spider silk I use to sew fae clothes for the magically-inclined.  I'd be in your debt if you'd get me just a small amount of spider silk so that I can continue making the wee fae outfits.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger009.mp3", "", "", 94899034, 3216566812, Spawn)
	AddConversationOption(conversation, "I'll be careful.", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Wonderful!  The silkspinner spiders usually live in an area to the west, past the growlers.  Be careful though, those silkspinners are dangerous fellers!")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger002.mp3", "", "", 2521303074, 4079509468, Spawn)
	AddConversationOption(conversation, "Sure.  How can I help?", "dlg_14_2")
	AddConversationOption(conversation, "I'm sorry, I'm busy.")
	StartConversation(conversation, NPC, Spawn, "The names Trudger, youngin', Brink Trudger.  I've been where you're going.  I used to be an adventurer, wandering the Shattered Lands, but now I help the Matron of the Nursery by making clothing for newly awakened fae.  Eh, I could use your help, if you're willing.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger003.mp3", "", "", 860825066, 492028532, Spawn)
	AddConversationOption(conversation, "I can get the hides for you.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "I'm running low on leather for my fae outfits.  I'd go out hunting myself, but I don't think my old bones could take it.  Hahaha!  If you get me some growler pelts from the grey growlers west of here, I could tan them to make new strips of leather.")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger003_offer.mp3", "", "", 179963171, 4058842652, Spawn)
	AddConversationOption(conversation, "This should be no problem.", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Great! I appreciate it!")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger008.mp3", "", "", 1249335835, 2386333509, Spawn)
	AddConversationOption(conversation, "Is there anything else I can help with?", "dlg_15_2")
	AddConversationOption(conversation, "Thank you, Brink.")
	StartConversation(conversation, NPC, Spawn, "Marvelous!  Uhoh! This silk is very good quality!  You, you did an excellent job, and I know the fae appreciate your hard work.  You'll make a fine adventurer, .. GetName(Spawn) .. .  A fine adventurer, indeed. Huhuh.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger010.mp3", "", "", 1214199522, 2851008750, Spawn)
	AddConversationOption(conversation, "What kind of shells do you need?", "dlg_15_3")
	AddConversationOption(conversation, "I don't feel like getting shells, goodbye.")
	StartConversation(conversation, NPC, Spawn, "Hmmm... I'm running low on hard plates to use in making the armor for the heavy fighter types.  If you get me the shells I need, I'd sure appreciate it.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger011.mp3", "", "", 4145013832, 3563128686, Spawn)
	AddConversationOption(conversation, "I'll get the shells for you.", "dlg_15_4")
	StartConversation(conversation, NPC, Spawn, "I've been using crustacean and turtle shells.  The clawsnaps and sand sifters on the beach seem plentiful.  If you bring me their shells, I'm sure I'll be able to make them into hard armor for newly awakened fae.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger012.mp3", "", "", 3911384586, 1778696172, Spawn)
	AddConversationOption(conversation, "Okay, I'll be right back.", "dlg_15_5")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. ".  I'll be right here putting this gear together.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger008.mp3", "", "", 1249335835, 2386333509, Spawn)
	AddConversationOption(conversation, "Is there anything else I can help with?", "dlg_19_2")
	AddConversationOption(conversation, "Thank you, Brink.")
	StartConversation(conversation, NPC, Spawn, "Marvelous!  Uhoh! This silk is very good quality!  You, you did an excellent job, and I know the fae appreciate your hard work.  You'll make a fine adventurer, .. GetName(Spawn) .. .  A fine adventurer, indeed. Huhuh.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger010.mp3", "", "", 1214199522, 2851008750, Spawn)
	AddConversationOption(conversation, "What kind of shells do you need?", "dlg_19_3")
	AddConversationOption(conversation, "I don't feel like getting shells, goodbye.")
	StartConversation(conversation, NPC, Spawn, "Hmmm... I'm running low on hard plates to use in making the armor for the heavy fighter types.  If you get me the shells I need, I'd sure appreciate it.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger011.mp3", "", "", 4145013832, 3563128686, Spawn)
	AddConversationOption(conversation, "I'll get the shells for you.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "I've been using crustacean and turtle shells.  The clawsnaps and sand sifters on the beach seem plentiful.  If you bring me their shells, I'm sure I'll be able to make them into hard armor for newly awakened fae.")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger012.mp3", "", "", 3911384586, 1778696172, Spawn)
	AddConversationOption(conversation, "Okay, I'll be right back.", "dlg_19_5")
	StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. ".  I'll be right here putting this gear together.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/quest/brink_trudger_low_level_c046f9f.mp3", "Hello, youngin'!  Check back with me when you have a bit more experience under your belt.  I may have some work for you then!", "", 1587078746, 1916787035, Spawn)
--]]

