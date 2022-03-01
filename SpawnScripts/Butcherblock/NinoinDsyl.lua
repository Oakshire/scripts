--[[
	Script Name		:	NinoinDsyl.lua
	Script Purpose	:	Ninoin D'syl
	Script Author	:	jakejp
	Script Date		:	06/22/2018
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

-- Quest ID's
local TEIRDALTIMBER = 352
local FLETCHMEMORE = 353
local STRAIGHTANDTOTHEPOINT = 354

function spawn(NPC)
	ProvidesQuest(NPC, TEIRDALTIMBER)
	ProvidesQuest(NPC, FLETCHMEMORE)
	ProvidesQuest(NPC, STRAIGHTANDTOTHEPOINT)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	if CanReceiveQuest(Spawn, TEIRDALTIMBER) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "What's this about arrows?", "dlg_2")
		AddConversationOption(con, "A wise man once told me never to speak with the Teir'Dal when they are angry. Good day, ma'am.")
		StartConversation(con, NPC, Spawn, "Curse these warped arrows! How do they expect us to hit our enemies if our arrows are curved rounder than a halfling's belly?!")
	elseif HasQuest(Spawn, TEIRDALTIMBER) and GetQuestStep(Spawn, TEIRDALTIMBER) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Do not return until you have an ample supply of timber. There should be plenty laying around here. If you lack the skill to gather lumber here, harvest lumber in the Great Faydark forest until you have the skill to gather timber here.", Spawn)
	elseif HasQuest(Spawn, TEIRDALTIMBER) and GetQuestStep(Spawn, TEIRDALTIMBER) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		SetStepComplete(Spawn, TEIRDALTIMBER, 2)
		AddConversationOption(con, "Who said anything about feathers?", "dlg_9")
		StartConversation(con, NPC, Spawn, "Well, well. That's quite a pile of lumber you have there. Good work. I can begin making the arrow shafts at once. Now, give me the feathers.")
	elseif CanReceiveQuest(Spawn, FLETCHMEMORE) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "Who said anything about feathers?", "dlg_9")
		StartConversation(con, NPC, Spawn, "Well, well. That's quite a pile of lumber you have there. Good work. I can begin making the arrow shafts at once. Now, give me the feathers.")
	elseif HasQuest(Spawn, FLETCHMEMORE) and GetQuestStep(Spawn, FLETCHMEMORE) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Hmm, now what is it you don't have for me? Oh, that's right. Feathers! Go, and don't come back until you have a decent amount.", Spawn)
	elseif HasQuest(Spawn, FLETCHMEMORE) and GetQuestStep(Spawn, FLETCHMEMORE) == 2 then
		SetStepComplete(Spawn, FLETCHMEMORE, 2)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "You can't use the arrowheads from the old arrows?", "dlg_13")
		StartConversation(con, NPC, Spawn, "Yes... These will do nicely. Excellent work. I have nearly completed whittling the shafts from the timber you brought, and with these feathers I can attach the fletching. That only leaves the arrowheads to deal with now.")
	elseif CanReceiveQuest(Spawn, STRAIGHTANDTOTHEPOINT) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "You can't use the arrowheads from the old arrows?", "dlg_13")
		StartConversation(con, NPC, Spawn, "Yes... These will do nicely. Excellent work. I have nearly completed whittling the shafts from the timber you brought, and with these feathers I can attach the fletching. That only leaves the arrowheads to deal with now.")
	elseif HasQuest(Spawn, STRAIGHTANDTOTHEPOINT) and GetQuestStep(Spawn, STRAIGHTANDTOTHEPOINT) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "What, did one of those brutes smack you so hard you forgot what you are doing? Leave and do not return until you have gathered an arsenal's worth of stone weapons.", Spawn)
	elseif HasQuest(Spawn, STRAIGHTANDTOTHEPOINT) and GetQuestStep(Spawn, STRAIGHTANDTOTHEPOINT) == 2 then
		SetStepComplete(Spawn, STRAIGHTANDTOTHEPOINT, 2)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "What?! After all that I've done for you?", "dlg_17")
		StartConversation(con, NPC, Spawn, "Well done! These will do nicely. Now, as a token of my appreciation I will refrain from slaying you. You may leave now.")
	elseif HasCompletedQuest(Spawn, STRAIGHTANDTOTHEPOINT) then 
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "You're still alive? Pity.", Spawn)
	end
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Perhaps I could be of service. Could I help?", "dlg_3")
	StartConversation(con, NPC, Spawn, "These arrows! I just received a shipment of them from... Well, that's not important for you to know. The point is, they are ruined! All of them water-logged and warped. I have no choice but to find new ones.")
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Uh...", "dlg_4")
	StartConversation(con, NPC, Spawn, "Hmm, yes that would be excellent. First I need you to find a master fletcher. When you do, beat him to submission until he agrees to follow your every command. Slaughter a family member or two if necessary. Just make sure he can follow orders and that his hands remain in working order.")
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I don't have the time to go find a master fletcher, much less beat him up.", "dlg_5")
	AddConversationOption(con, "Perhaps we could find a solution that does not involve as much violence.", "dlg_5")
	StartConversation(con, NPC, Spawn, "Pretty standard, really. What? Oh, is that too drastic for you?")
end

function dlg_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Why don't I collect the items you need to make new arrows?", "OfferQuest1")
	AddConversationOption(con, "Forget it. I'm not interested.")
	StartConversation(con, NPC, Spawn, "Well, what do you suggest?")
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, TEIRDALTIMBER)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Right away!")
	AddConversationOption(con, "What's in it for me?", "dlg_7")
	StartConversation(con, NPC, Spawn, "Hmm, I suppose that would work. Though I do like the idea of beating someone into submission... Anyways, I need fresh cut timber to whittle down into arrow shafts. Bring me a substantial pile of timber from the trees around here.")
	--]]
end

function dlg_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "Perfect.")
	StartConversation(con, NPC, Spawn, "Fear not, young one. I will pay you for your time.")
end

function dlg_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I know that, you didn't mention you wanted me to get you feathers though.", "dlg_10")
	StartConversation(con, NPC, Spawn, "You can't make arrows without suitable fletching!")
end

function dlg_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "I could bring back feathers from the aviaks that make their home here.", "OfferQuest2")
	AddConversationOption(con, "Nope. Forget it. I'm done working for you.")
	StartConversation(con, NPC, Spawn, "Well, it seemed plain obvious to me. Sheesh. Now, I've tried using the feathers from the hawks here, but they're too... dainty. I need feathers from a larger, more... sturdy beast.")
end

function OfferQuest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, FLETCHMEMORE)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "It will be done in due course.")
	StartConversation(con, NPC, Spawn, "Yes, Kragploom should work quite well. Bring me several feathers from any type of Kragploom you're able to hunt down. Their plumage would be best to make my arrows from.")
	--]]
end

function dlg_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "Where might I find material like that?", "OfferQuest3")
	AddConversationOption(con, "Sigh, not again. You'll have to find it without me.")
	StartConversation(con, NPC, Spawn, "I'm afraid not. Those arrowheads were all rusted and brittle. I can't go slaying people with shoddy arrowheads now can I? Of course not! I need you to procure some sharpened stone which I can use as a substitute.")
end

function OfferQuest3(NPC, Spawn)
	OfferQuest(NPC, Spawn, STRAIGHTANDTOTHEPOINT)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "I take my leave.")
	AddConversationOption(con, "Where are they located?", "dlg_15")
	StartConversation(con, NPC, Spawn, "I've seen lumbering brutes patrolling the Northern reaches of these mountains. Bugbears, I believe they are called. They carry massive weapons made of flint or obsidian. Bring me back a pile of those weapons. I should be able to craft some new arrowheads out of them.")
	--]]
end

function dlg_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "I'm going. I'm going!")
	StartConversation(con, NPC, Spawn, "As I said, in the Northern parts of these mountains. Travel North from the Highlands and look for a natural ramp that stretches Northeast. The brutes have established a formidable camp there. Now go! ")
end

function dlg_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "That's more like it!")
	StartConversation(con, NPC, Spawn, "Fine! You see, this is why I insist on working with only those who are easily subjugated and mute. Soooooo fewer incidents like this. Here, take this. I suppose you've earned it.")
end