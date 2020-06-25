--[[
	Script Name	: SpawnScripts/BeggarsCourt/LieutenantCervaen.lua
	Script Purpose	: Lieutenant Cervaen 
	Script Author	: John Adams (updated by Cynnar 2018.06.13 02:06:19)
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HALFELF_MENTOR_QUEST_1 = 307 -- A Delivery
local HALFELF_MENTOR_QUEST_2 = 308 -- Dirty Work
local HALFELF_MENTOR_QUEST_3 = 315 -- Reel Him In
local HALFELF_MENTOR_QUEST_4 = 317 -- Thaen Sevellos

local LIEUTENANT_CERVAEN = 1370037
local DELCAIRN_SEBASTIAN = 1370038

function spawn(NPC)
	ProvidesQuest(NPC, HALFELF_MENTOR_QUEST_3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
			if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_3) then
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/qst_cervaen_quest3complete_2605c4d2.mp3", "Nicely done, I heard it from 'ere. This should put Beggar's Court in a much better state.", "", 2938982399, 3355150485, Spawn)
			elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				OurPlan(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/qst_cervaen_quest1done_b206a1e8.mp3", "Speak with Delcairn for now, please.", "", 3252334581, 753438143, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/qst_cervaen_quest1done_b206a1e8.mp3", "Speak with Delcairn for now, please.", "", 3252334581, 753438143, Spawn)
		end
	elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		Say(NPC, "Yeah? Whadya need?", Spawn)
	end
end

--------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_1
--------------------------------------------------------------------------------------------------------------

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_1) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen001.mp3", "", "", 95573357, 894655204, Spawn)
		AddConversationOption(conversation, "The Brotherhood Awaits. [hand him the note]", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Yes, what do you need?")
	elseif GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/qst_cervaen_quest1done_b206a1e8.mp3", "Speak with Delcairn for now, please.", "", 3252334581, 753438143, Spawn)
	end
end

function dlg_7_1(NPC, Spawn)	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen002.mp3", "", "", 2727322832, 3944021751, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "That we do. Are you interested in helping?")
end

function dlg_7_2(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_1, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen003.mp3", "", "", 1755611144, 3257122999, Spawn)
	AddConversationOption(conversation, "I will, thank you.")
	StartConversation(conversation, NPC, Spawn, "Good. Speak with Delcairn. He'll tell you what you must know.")
end

--------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_2
--------------------------------------------------------------------------------------------------------------

function SebastianTalk1(NPC, Spawn)
	local Sebastian = GetSpawn(Spawn, DELCAIRN_SEBASTIAN)
	
	FaceTarget(Sebastian, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Sebastian, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn_tradeoff000.mp3", "", "", 3389160540, 2015613299, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "CervaenTalk2")
	StartConversation(conversation, Sebastian, Spawn, "What? What happened?")
end

function SebastianTalk2(NPC, Spawn)
	local Sebastian = GetSpawn(Spawn, DELCAIRN_SEBASTIAN)
	
	FaceTarget(Sebastian, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Sebastian, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn_tradeoff001.mp3", "", "", 1732950477, 2016689454, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "CervaenTalk3")
	StartConversation(conversation, Sebastian, Spawn, "What?! Revlos' wife is in the ground because of Rommuls, why would he side with him?")
end

function SebastianTalk3(NPC, Spawn)
	local Sebastian = GetSpawn(Spawn, DELCAIRN_SEBASTIAN)
	
	FaceTarget(Sebastian, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Sebastian, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn_tradeoff002.mp3", "", "", 2504673641, 4239966724, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "CervaenTalk4")
	StartConversation(conversation, Sebastian, Spawn, "To Drundar with Revlos. And Jalya... her loss hurts us. Did Thavian know where they're holding Thaen?")
end

function SebastianTalk4(NPC, Spawn)
	local Sebastian = GetSpawn(Spawn, DELCAIRN_SEBASTIAN)
	
	FaceTarget(Sebastian, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Sebastian, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn004.mp3", "", "", 892666129, 4114076052, Spawn)
	AddConversationOption(conversation, "Yes, to the end.", "GoodLoam")
	AddConversationOption(conversation, "No, I am sorry.")
	StartConversation(conversation, Sebastian, Spawn, "Thank you, Cervaen. You, " .. GetName(Spawn) .. ", we're undermanned, the time to decide is now. Will you help us--to the end?")
end

--------------------------------------------------------------------------------------------------------------------------------------
--							HALFELF_MENTOR_QUEST_3
--------------------------------------------------------------------------------------------------------------------------------------

function OurPlan(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen004.mp3", "", "", 890059642, 2034176036, Spawn)
	AddConversationOption(conversation, "Where do I fit in?", "dlg_23_1")
	StartConversation(conversation, NPC, Spawn, "All right. Our plan revolves around a shipment that's been sitting in Beggar's Court--untouched--for some time now. Rommuls has had his eyes on this shipment ever since it arrived. Obviously it's something important to him, right? Well we looked into it, it's contraband reclaimed from members of the militia in all of Freeport's districts. Rommuls believes some of his men know this, and he's trying to catch any of them in a trap.")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen005.mp3", "", "", 1443615249, 408645931, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Everywhere. We have some supplies stashed around Beggar's court specifically for times like now. They're in barrels marked by The Brotherhood. Go collect some component packs for me, then return here.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HALFELF_MENTOR_QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen006.mp3", "", "", 1369664151, 2007400535, Spawn)
	
	if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_3) == 1 then
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you collected the supplies?")
	elseif GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_3) == 2 then
		AddConversationOption(conversation, "Yes.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the supplies?")
	elseif GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_3) == 3 then
		Say(NPC, "Get to it! This is important.", Spawn)
	elseif GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_3) == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/qst_cervaen_quest3complete_2605c4d2.mp3", "Nicely done, I heard it from 'ere. This should put Beggar's Court in a much better state.", "", 2938982399, 3355150485, Spawn)
	end
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen007.mp3", "", "", 1901158863, 3341418842, Spawn)
	AddConversationOption(conversation, "Where is the shipment?", "dlg_24_2")
	AddConversationOption(conversation, "A bomb? That sounds too dangerous.", "NobodyWillGetHurt")
	StartConversation(conversation, NPC, Spawn, "Good. Now I can use these to put together something that will grab Rommuls' attention. You will be its vehicle, " .. GetName(Spawn) .. ". Take this, it's an explosive device, plant it on the shipment that Rommuls has been watching. It doesn't matter if he sees you do it or not, it will get his attention either way. Get clear of the blast. When Rommuls comes running our people will be in place to escort him quickly out of the public eye.")
end

function NobodyWillGetHurt(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can.", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Nobody will get hurt, trust me. It's a very low-power explosive. This must be done. Can you do this or not?")
end

function dlg_24_2(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen009.mp3", "", "", 591461731, 3072537228, Spawn)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "The shipment is in the east end of the northern part of Beggar's Court. It's just a few barrels sitting out all alone, they shouldn't be hard to find. I've given the arcane fuse on the bomb a five second timer. Return to Delcairn when you're done")
end