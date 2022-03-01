--[[
	Script Name	: SpawnScripts/GreaterFaydark/KalamarVesinger.lua
	Script Purpose	: Kalamar Vesinger <Fae Royal Messenger>
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
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/quest_kalamar_vesinger_maps_6657ebe1.mp3", "Maps are so interesting, aren't they?", "", 3408257918, 268204611, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/quest_kalamar_vesinger_maps_a5c2cc74.mp3", "Sometimes I like to come here just to see the new maps.", "", 2592389380, 2012943859, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/quest_kalamar_vesinger_maps_e032fc6a.mp3", "Fae Royal Messengers are also scouts, you know!", "", 2067512704, 3523424195, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger015.mp3", "", "", 1398288955, 2756756342, Spawn)
	AddConversationOption(conversation, "I located several magical devices and destroyed them.", "dlg_0_1")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Any news, XXXXXXXX?")
	if convo==98 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger001.mp3", "", "", 1370796179, 1768003050, Spawn)
		AddConversationOption(conversation, "Lady Katri said you might be able to help me.", "dlg_98_1")
		AddConversationOption(conversation, "Nothing, thanks.")
		StartConversation(conversation, NPC, Spawn, "Yes? How can I help you?")
	end

	if convo==107 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger008.mp3", "", "", 1634811844, 2197818091, Spawn)
		AddConversationOption(conversation, "I've been everywhere on the list but haven't seen anything about the Grender.", "dlg_107_1")
		AddConversationOption(conversation, "I've misplaced the scroll you gave me.")
		AddConversationOption(conversation, "I'm still searching.")
		StartConversation(conversation, NPC, Spawn, "How goes the hunt?")
	end

	if convo==108 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger008.mp3", "", "", 1634811844, 2197818091, Spawn)
		AddConversationOption(conversation, "I've been everywhere on the list but haven't seen anything about the Grender.", "dlg_108_1")
		AddConversationOption(conversation, "I've misplaced the scroll you gave me.")
		AddConversationOption(conversation, "I'm still searching.")
		StartConversation(conversation, NPC, Spawn, "How goes the hunt?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger016.mp3", "", "", 820648021, 3003512637, Spawn)
	AddConversationOption(conversation, "The central stump.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Ah...so the latest reports were true.  Which stump is that beast using as its lair?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger019.mp3", "", "", 1833569894, 3935541730, Spawn)
	AddConversationOption(conversation, "Thank you!  But what can I do to help now?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "XXXXXXXX, for someone who has not completed the Rite of Passage, you show commendable courage and initiative.  I'm very impressed!  Your spirit has found a worthy place to reawaken.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger018.mp3", "", "", 3857736542, 2958380917, Spawn)
	AddConversationOption(conversation, "I'll do that.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "This might be beyond what Lady Katri had intended when she sent you to me.  Perhaps you should check with her to see if she will allow you to assist us further.  She will be working with other newcomers and Rite of Passage applicants near the Old Kelethin Acorn Lift.")
end

function dlg_98_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger002.mp3", "", "", 3295585723, 2659074372, Spawn)
	AddConversationOption(conversation, "It's about the Grender...I hear you're the first person who saw it.", "dlg_98_2")
	StartConversation(conversation, NPC, Spawn, "Ah, if Lady Katri sent you, I'd be more than happy to help you.  What is it you need, huh?")
end

function dlg_98_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger003.mp3", "", "", 3687515657, 2071313746, Spawn)
	AddConversationOption(conversation, "Why is that?", "dlg_98_3")
	StartConversation(conversation, NPC, Spawn, "I haven't actually seen it myself, but I did some of the initial investigation into its existence.  I'm sure it really exists.  Some folks are skeptical, though.")
end

function dlg_98_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger004.mp3", "", "", 738876397, 3999214733, Spawn)
	AddConversationOption(conversation, "Have the scouts been able to learn anything?", "dlg_98_4")
	StartConversation(conversation, NPC, Spawn, "For one thing, if such a creature existed, why hasn't anyone seen it before? Also, we can't find its lair.  It's possible that it spreads its influence from Lesser Faydark, but then why haven't we seen evidence of disease on creatures anywhere else?")
end

function dlg_98_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger005.mp3", "", "", 3011438280, 2479522140, Spawn)
	AddConversationOption(conversation, "Sounds reasonable.", "dlg_98_5")
	StartConversation(conversation, NPC, Spawn, "We've been debating whether or not no news is good news. No recent incidents have been reported around Kelethin. However, given that only creatures near our town have been affected, it's likely that the Grender is nearby.")
end

function dlg_98_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger006.mp3", "", "", 370779524, 2237372107, Spawn)
	AddConversationOption(conversation, "Of course!", "dlg_98_6")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "A creature that large could only hide in a few places.  Perhaps you'd help out by investigating a few of these places?")
end

function dlg_98_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger007.mp3", "", "", 1729927705, 3759911339, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_98_7")
	StartConversation(conversation, NPC, Spawn, "Excellent.  Here's a scroll for you.  It has a list of some areas that shouldn't be too difficult for you to reach on your own.  Take a quick look around, then come back and let me know what you find out.")
end

function dlg_107_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger014.mp3", "", "", 3537512118, 3683878271, Spawn)
	AddConversationOption(conversation, "Thanks!")
	StartConversation(conversation, NPC, Spawn, "Fortunately, I have several copies of it.  If anyone finds them, they appear to be simple travelogues, so no harm done!")
end

function dlg_108_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger009.mp3", "", "", 3308883973, 1803706282, Spawn)
	AddConversationOption(conversation, "Why's that?", "dlg_108_2")
	StartConversation(conversation, NPC, Spawn, "No? That's disappointing, to say the least.  We did receive one more report while you were gone, but it's not particularly credible.")
end

function dlg_108_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger010.mp3", "", "", 2776180591, 2107105431, Spawn)
	AddConversationOption(conversation, "If the Grender were inside the city, someone would sound the alarm.", "dlg_108_3")
	StartConversation(conversation, NPC, Spawn, "The report indicates that the Grender is in Kelethin! That's just absurd.  And yet, how else would a creature like this be able to affect saplings and other young creatures so close to our home?")
end

function dlg_108_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger011.mp3", "", "", 2655458455, 91161091, Spawn)
	AddConversationOption(conversation, "Well...there are some very large tree stumps.", "dlg_108_4")
	StartConversation(conversation, NPC, Spawn, "My thoughts exactly.  It is possible, however unlikely, that the Grender's lair is beneath Kelethin itself.  You don't recall seeing anything out of the ordinary? Anything that a creature could hide in?")
end

function dlg_108_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger012.mp3", "", "", 3801940384, 3412413593, Spawn)
	AddConversationOption(conversation, "I could check out these stumps for you.", "dlg_108_5")
	StartConversation(conversation, NPC, Spawn, "So you suspect the Grender is inside one of these stumps?  Hm.  This could be dangerous.  Kelethin is linked to two of these stumps via bridges and platforms.  If the Grender has a lair that close, we may have simply been searching for it too far away!")
end

function dlg_108_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/qst_kalamar_vesinger/qst_kalamar_vesinger013.mp3", "", "", 4194593417, 1620249668, Spawn)
	AddConversationOption(conversation, "I'll be thorough.", "dlg_108_6")
	StartConversation(conversation, NPC, Spawn, "Yes...yes, that would be excellent!  Search the stumps carefully.  It could be that the Grender is using some sort of magical device to concentrate his influence around the city.  That would certainly explain why these diseased creatures have only been seen nearby.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/quest_kalamar_vesinger_maps_e032fc6a.mp3", "Fae Royal Messengers are also scouts, you know!", "", 2067512704, 3523424195, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/quest_kalamar_vesinger_maps_6657ebe1.mp3", "Maps are so interesting, aren't they?", "", 3408257918, 268204611, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/kalamar_vesinger/_exp03/exp03_cty_kelethin/quest/quest_kalamar_vesinger_maps_a5c2cc74.mp3", "Sometimes I like to come here just to see the new maps.", "", 2592389380, 2012943859, Spawn)
--]]

