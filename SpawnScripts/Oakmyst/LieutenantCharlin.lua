--[[
	Script Name	: SpawnScripts/Oakmyst/LieutenantCharlin.lua
	Script Purpose	: Lieutenant Charlin 
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Modified  by    : Ememjr
	Modified Date   :2017.04.22
	Modified Noes   : modified for current content on official
	Script Notes	:
--]]

local MIN_LEVEL = 5
local QUEST_FROM_JORN = 18
local QUEST_FROM_ADALIN = 294
local QUEST_FROM_MARV = 526
local QUEST_1 = 207
local QUEST_2 = 208
local QUEST_3 = 209
local QUEST_4 = 210
local QUEST_5 = 211
local QUEST_6 = 212

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
	ProvidesQuest(NPC, QUEST_6)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_FROM_JORN) and GetQuestStep(Spawn, QUEST_FROM_JORN) == 3 then
		AddConversationOption(conversation, "I have news for you.", "FoundBookOnGnome")
	end

	if HasQuest(Spawn, QUEST_FROM_ADALIN) and GetQuestStep(Spawn, QUEST_FROM_ADALIN) == 5 then
		AddConversationOption(conversation, "I have news for you.", "GnollAttackedWhileCleansing")
	end

	if HasQuest(Spawn, QUEST_FROM_MARV) and GetQuestStep(Spawn, QUEST_FROM_MARV) == 3 then
		AddConversationOption(conversation, "I have news for you.", "FoundBlackburrowStout")
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						if HasCompletedQuest(Spawn, QUEST_6) then
							Say(NPC, "This land and our people owe you. Thank you.", Spawn)
							StartConversation(conversation, NPC, Spawn, "This land and our people owe you. Thank you.")
						elseif HasQuest(Spawn, QUEST_6) then
							Say(NPC, "This land and our people owe you. Thank you.", Spawn)
							StartConversation(conversation, NPC, Spawn, "This land and our people owe you. Thank you.")
						else
							OnQuest5(NPC, Spawn, conversation)
						end
					elseif HasQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
					else
						OnQuest4(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					OnQuest3(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				OnQuest2(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			OnQuest1(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		BeCareful(NPC, Spawn, conversation)
	end
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST FROM JORN
--------------------------------------------------------------------------------------------------------------------------------

function FoundBookOnGnome(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin_jorn000.mp3", "", "", 3699115243, 1071346940, Spawn)
	AddConversationOption(conversation, "I found this book on a gnome. It's written in Lucanic.", "InterestingWheredYouGetThis")
	StartConversation(conversation, NPC, Spawn, "Oh? What news.")
end

function InterestingWheredYouGetThis(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "From a gnome here in Oakmyst Forest.", "ThisIsVeryConcerning")
	StartConversation(conversation, NPC, Spawn, "Interesting. Where'd you get this?")
end

function ThisIsVeryConcerning(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_JORN, 3)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if (GetLevel(Spawn) < MIN_LEVEL) or (HasQuest(Spawn, QUEST_1) or HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Thank you.")
	else
		AddConversationOption(conversation, "Is there anything else I can do?", "dlg_1_4")
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin_jorn002.mp3", "", "", 1267137268, 405925681, Spawn)
	StartConversation(conversation, NPC, Spawn, "This is very concerning. I'm going to send this book in to be studied, this is a good find. Maybe it will lead to something bigger. Knowing my luck it will just be a joke book. Good work on this.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST_FROM_ADALIN
--------------------------------------------------------------------------------------------------------------------------------

function GnollAttackedWhileCleansing(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I was cleansing some trees in the forest when a gnoll attacked.", "SecondPersonToClaim")
	StartConversation(conversation, NPC, Spawn, "What news is that?")
end

function SecondPersonToClaim(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I have his paw.", "HavePaw")
	StartConversation(conversation, NPC, Spawn, "You're the second person to claim as much. Listen, I'm sure you saw something, but a gnoll is Oakmyst Forest?")
end

function HavePaw(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if (GetLevel(Spawn) < MIN_LEVEL) or (HasQuest(Spawn, QUEST_1) or HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Thank you.")
	else
		AddConversationOption(conversation, "Can I help in anyway?", "dlg_1_4")
	end
	StartConversation(conversation, NPC, Spawn, "Well, that you do. I'll send word of this to my superiors, we'll see where they want to go from there. Until then I will continue as normal, though things are not normal by any stretch of the word.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST FROM MARV
--------------------------------------------------------------------------------------------------------------------------------

function FoundBlackburrowStout(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I was helping someone pull their lost shipment from the water and we found some Blackburrow Stout.", "FoundBlackBurrowStout2")
	StartConversation(conversation, NPC, Spawn, "What news have you brought me?")
end

function FoundBlackBurrowStout2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_MARV, 3)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if (GetLevel(Spawn) < MIN_LEVEL) or (HasQuest(Spawn, QUEST_1) or HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Sure sounds it.")
	else
		AddConversationOption(conversation, "Is there anything I can do to help?", "dlg_1_4")
	end
	StartConversation(conversation, NPC, Spawn, "Hmm, that plus everything else I've been hearing lately is enough to cause concern. Someone reported seeing a gnoll a few days ago, I didn't believe him. Maybe he was telling the truth. Things are getting strange around here.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function BeCareful(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin000.mp3", "", "", 1924665099, 2767332789, Spawn)

	if GetLevel(Spawn) >= MIN_LEVEL then
		AddConversationOption(conversation, "What do I need to look out for?", "dlg_1_1")
	else
		AddConversationOption(conversation, "I will be.")
	end

	StartConversation(conversation, NPC, Spawn, "Be careful out there, citizen.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin001.mp3", "", "", 135128317, 2223244870, Spawn)
	AddConversationOption(conversation, "So everything here is fine?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Oh, I don't know, what was it last time I checked? Poachers maybe, or corruption spreading through the forest, I even heard some guy mention a gnoll. Things are bad, don't let me convince you otherwise, but don't believe the people who say the Oakmyst Forest is in serious danger.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin001a.mp3", "", "", 3642173862, 3828556771, Spawn)
	AddConversationOption(conversation, "Then there is a danger?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Well... I do get nervous when the Tunarian Alliance steps in. It's probably nothing, but they requested a stronger Qeynos Guard presence here. I think they know more than I do.  Still, the danger Oakmyst Forest is in is pretty minor.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin002.mp3", "", "", 103240221, 3198070219, Spawn)
	AddConversationOption(conversation, "Sure, I can help.", "dlg_1_4")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Minor danger. Sure, we can use help, but it's not an emergency like some might have you believe. Would you care to volunteer?")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin003.mp3", "", "", 2962974855, 690833663, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Good, glad to hear it. Even without all this 'supposed' stuff going on I've got my share of duties. An adventurer was slain recently in these parts. Our initial report back seems to suggest poison. The problem is we have no idea what kind of poison. We know that certain animals in the forest use poison. We suspect that the poachers also use it.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin004.mp3", "", "", 2819639943, 1318836680, Spawn)
	AddConversationOption(conversation, "I can do it.", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Well, the poachers are spry enough to avoid detection, so we can't get a sample of their poison from them. We can, however, collect poison samples from some of the wildlife here and use that as a starting point. At most, we can find out what caused the death, and at the least we eliminate some possibilities. What do you say?")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin005.mp3", "", "", 276846636, 4209539187, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Good. Collect some poison samples from frogs, mystail rats, and the spiders. They can all be found in Oakmyst.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin006.mp3", "", "", 1152487104, 26326303, Spawn)

	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 4) or (HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_2)) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_3_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end

	StartConversation(conversation, NPC, Spawn, "Have you collected the poison samples yet?")
end

function dlg_3_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 4)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin007.mp3", "", "", 4118896483, 283789370, Spawn)
	AddConversationOption(conversation, "Sure, what do you need?", "dlg_3_2")
	AddConversationOption(conversation, "Sorry, not now.")
	StartConversation(conversation, NPC, Spawn, "Excellent. I'll send these back to Qeynos as soon as I can. In the mean time we can still use your help, are you willing?")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin008.mp3", "", "", 1585958118, 144641390, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Another one of those weird reports. Dirt piles have been turning up all around the Oakmyst Forest and we have no idea why. I'd like you to go get some mineral samples from the piles and maybe we'll be able to figure out who put them there and why.")
end

function OfferQuest2(NPC, Spawn)
	Say(NPC, "This is me talking try for quest2")
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin009.mp3", "", "", 197933186, 2286710260, Spawn)

	if (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) or (HasCompletedQuest(Spawn, QUEST_2) and not HasQuest(Spawn, QUEST_3)) then
		AddConversationOption(conversation, "Yes, here you go.", "dlg_0_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end

	StartConversation(conversation, NPC, Spawn, "Have you collected the soil yet?")
end

function dlg_0_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin010.mp3", "", "", 2649903060, 3166046323, Spawn)
	AddConversationOption(conversation, "Sure, I can do that.", "dlg_0_2")
	AddConversationOption(conversation, "Not now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Thanks. Maybe this will turn something up, maybe not. I'll send it off to be studied and we'll get some answers. I've received an unofficial request for my presence at the docks west of here. I'm sure it's nothing too important, how' d you like to go in my place?")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin011.mp3", "", "", 2323725305, 107103300, Spawn)
	AddConversationOption(conversation, "Ok.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Great. Go speak with Bardrian Vorsuth, a dock worker. If experience teaches anything my money says Bardrian's going to report 'something strange' that 'confuses' him and he doesn't know what to do.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin012.mp3", "", "", 1377900887, 278814663, Spawn)
		AddConversationOption(conversation, "I'll be back after I've talked with him.")
		StartConversation(conversation, NPC, Spawn, "Bardrian?")
	elseif HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin012.mp3", "", "", 1377900887, 278814663, Spawn)
		AddConversationOption(conversation, "He found some strange machine in an unmarked crate on the docks.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Bardrian?")
	elseif HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin017.mp3", "", "", 3187740271, 4021664312, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Did you find the machine?")
	elseif (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 4) or (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin017.mp3", "", "", 3187740271, 4021664312, Spawn)
		AddConversationOption(conversation, "Yes, it is in the water near the Western Falls.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Did you find the machine?")
	end
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin013.mp3", "", "", 1871272901, 810339026, Spawn)
	AddConversationOption(conversation, "Bardrian says it was just on the docks one day, no post markings at all. He has no idea what the machine is meant to do, but based on its configuration he thinks it is some sort of variable speed and power controller.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Strange machine? What else can you tell me? This may relate to information we discovered from a book we found on a Freeportian gnome a short while ago.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin014.mp3", "", "", 4247692633, 3050935613, Spawn)
	AddConversationOption(conversation, "There were no other machines.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "And the other machines?")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin015.mp3", "", "", 4101124695, 4199131905, Spawn)
	AddConversationOption(conversation, "Can you be certain?", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Hmmm, according to data we intercepted there should have been. You know, things may be starting to come together. There are at least two other machines, I believe we've already seen signs of one: the dirt piles. It was meant as a dirt displacement device, and according to information we intercepted it was being tested here.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin016a.mp3", "", "", 3187383592, 2219030963, Spawn)
	AddConversationOption(conversation, "What about the other machine?", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "No... But the soil you recovered did have elements consistent with processing: the grains were uniform in size, the soil had small traces of elements that are not natural to Oakmyst Forest. To make matters worse none of the soil recovered was top soil, whoever is digging has been digging deep.")
end

function dlg_7_5(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 2)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin016.mp3", "", "", 3315274206, 1719893519, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "The other machine's purpose was unknown, but we know it involved water in some capacity. Maybe that machine is another test or maybe its purpose is more sinister, either way we need to find it. It will be in or near water, you need to figure out where it is. If it can be easily removed do so, but otherwise do not worry about that--just find out where it is located and report back to me. The most likely spot is near the Western Falls.")
end

function dlg_10_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 4)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin018.mp3", "", "", 1856078636, 1149850938, Spawn)
	AddConversationOption(conversation, "What is it?", "dlg_10_2")
	AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Good work, we'll get our people on that right away. I've had my people searching for the other machine but they're coming up without results. Something in my gut tells me it doesn't matter, that it's no longer here. But that doesn't matter, at least not yet. What does matter is our men displacing the machine you found. While they do that I have another task for you.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin019.mp3", "", "", 1411954385, 415072002, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "We've intercepted clues about a possible meeting regarding the machine we found on the docks, apparently it was supposed to be removed from the docks quite some time ago but never was. We don't know who will be involved in this meeting but we'd like you to break it up. Once we figure out who is behind this it will give us a big clue as to what's been going on around here.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin020.mp3", "", "", 2483977262, 3448158171, Spawn)

	if (HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 2) or (HasCompletedQuest(Spawn, QUEST_4)) then
		AddConversationOption(conversation, "Yes, I did.", "dlg_13_5")
	else
		AddConversationOption(conversation, "No, not yet.")
	end

	StartConversation(conversation, NPC, Spawn, "Did you interrupt the meeting?")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin021.mp3", "", "", 2374633916, 1265137198, Spawn)
	AddConversationOption(conversation, "It was a meeting between a gnome and some gnolls. The gnome fled, I slew the gnolls. I believe the leader was named Gilrix. He had this book.", "dlg_13_6")
	StartConversation(conversation, NPC, Spawn, "What did you discover?")
end

function dlg_13_6(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 2)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin022.mp3", "", "", 3210550300, 3185527572, Spawn)
	AddConversationOption(conversation, "How so?", "dlg_13_7")
	StartConversation(conversation, NPC, Spawn, "Gnolls? Then all the reports were right. And that Gilrix. He was mentioned in one of the materials we obtained concerning this whole mess. But we may be a step ahead of them for once.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------------------------------


function dlg_13_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin023.mp3", "", "", 1812542762, 4174950812, Spawn)
	AddConversationOption(conversation, "What must I do?", "dlg_13_8")
	AddConversationOption(conversation, "I may be able to help later.")
	StartConversation(conversation, NPC, Spawn, "The book we obtained had lots of notes and plans. The book you've provided to us has all their contingency plans. If you've disrupted the meeting then the gnolls won't know precisely what happened and will fall to one of their backup plans. This gives us an excellent opportunity to strike.")
end

function dlg_13_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin024.mp3", "", "", 823446036, 800185291, Spawn)
	AddConversationOption(conversation, "What about the others?", "dlg_13_9")
	StartConversation(conversation, NPC, Spawn, "Well, with this book we've got the locations where the gnoll lieutenants will be in hiding while they await orders from Gilrix. While they wait, they are vulnerable. One will be near here--take the path west and turn north before you go under the bridge, that should put you very near him, he's hiding in an alcove.")
end

function dlg_13_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin024a.mp3", "", "", 1440777464, 2474739731, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Another will be on the rocky hill south east of Clearwater Pond. The last will be in a small alcove just north west of the Western Falls.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin025.mp3", "", "", 4104237922, 4156355427, Spawn)

	if (HasQuest(Spawn, QUEST_5) and GetQuestStep(Spawn, QUEST_5) == 4) or (HasCompletedQuest(Spawn, QUEST_5)) then
		AddConversationOption(conversation, "Yes, they are all dead.", "dlg_18_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end

	StartConversation(conversation, NPC, Spawn, "Have you taken out the lieutenants?")
end

function dlg_18_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_5) then
		SetStepComplete(Spawn, QUEST_5, 4)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin026.mp3", "", "", 1438660086, 1610935766, Spawn)
	AddConversationOption(conversation, "Is there anything else?", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "This is great news! With their lieutenants dead the gnoll presence here will be in shambles. Those that don't flee will easily be captured. You have done a great, great thing.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 6
--------------------------------------------------------------------------------------------------------------------------------

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin027.mp3", "", "", 4018442535, 45795752, Spawn)
	AddConversationOption(conversation, "I can face them.", "OfferQuest6")
	StartConversation(conversation, NPC, Spawn, "Yes, in fact. I have good news for you. Elements of the Qeynos Guard--among other factions--have asked for you by name. You've made quite a name for yourself in your work here, and I put in a good word for you. You are asked to report to the Caves, apparently the gnoll movement here was only one of many. The Rockpaw Gnolls may soon pose a threat bigger than we thought possible.")
end

function OfferQuest6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_6)
end
