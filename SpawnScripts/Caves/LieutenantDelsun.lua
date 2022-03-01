--[[
	Script Name	: SpawnScripts/Caves/LieutenantDelsun.lua
	Script Purpose	: Lieutenant Delsun <Qeynos Guard>
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST4_FROM_CONSULBREE = 495
local QUEST_1 = 500

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST4_FROM_CONSULBREE) then
			PlayFlavor(NPC, "", "Thanks to you, the city of Qeynos will be safe from the Rockpaw gnolls. We are in your debt.", "salute", 0, 0, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/qst_delsun_done_5c9845fb.mp3", "I appreciate the help. I am confident that soon you and Consul Bree will put an end to this threat.", "", 687681487, 1420406743, Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		WellMet(NPC, Spawn, conversation)
	end
end

---------------------------------------------------------------------------------------------------------------------
--							QUEST 1
---------------------------------------------------------------------------------------------------------------------

function WellMet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_000.mp3", "", "", 633173859, 3236436843, Spawn)
	AddConversationOption(conversation, "What can I do to help?", "dlg_6_4")
	AddConversationOption(conversation, "What is going on down here?", "dlg_5_1")
	AddConversationOption(conversation, "I must go for now.")
	StartConversation(conversation, NPC, Spawn, "Well met. If you're here it's probably because you can help. I'm Lieutenant Delsun of the Qeynos Guard.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_003.mp3", "", "", 3979540292, 2231912258, Spawn)
	AddConversationOption(conversation, "What are the gnolls planning?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Many things, adventurer, many things. Consul Bree, Emma--over there--and I have been down here for some time now. Consul Bree was here by herself before that. The gnolls here are up to something big. I believe Consul Bree had the Queen herself request the presence of a large number of adventurers who showed great potential. Perhaps that is why you are here.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_004.mp3", "", "", 2892187663, 805835825, Spawn)
	AddConversationOption(conversation, "What can I do to help?", "dlg_6_3")
	AddConversationOption(conversation, "I must go for now.")
	StartConversation(conversation, NPC, Spawn, "An attack. I do not know their intent. I do not believe they could ever defeat Qeynos in a war, but perhaps they are serving as a distraction. Either way, they must be stopped before it's too late. Consul Bree may know more of their plans.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_001.mp3", "", "", 339232666, 1307734696, Spawn)
	AddConversationOption(conversation, "I will help you.", "dlg_6_4")
	AddConversationOption(conversation, "I must go for now.")
	StartConversation(conversation, NPC, Spawn, "Well. Consul Bree has a plan of attack that she may need help with. So speak to her if you want to offer your services. As for me, I am more interested in the gnolls than their plans. If you want to help me by taking some of them out, I will gladly accept it.")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_002.mp3", "", "", 455797705, 3616046354, Spawn)
	AddConversationOption(conversation, "I will do this.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "That is good to hear. I'd like you to help me take out the gnollish fighting force. Slay thirty gnolls within the caves. Make sure two of 'em are the Dustpaw armorers from the level above us, and five of 'em are the Rockpaw guards from the level above that. From the same level as the Rockpaw guards, take out five of the gnoll guardians known as alabaster behemoths. Return to me when you're done.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_005.mp3", "", "", 2158069765, 3678013662, Spawn)
	if GetQuestStep(Spawn, QUEST_1) == 5 then
		AddConversationOption(conversation, "I have.", "dlg_21_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Have you done as I asked?")
end

function dlg_21_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/quests/delsun/delsun_006.mp3", "", "", 718413957, 2288759319, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Good. Though we may not directly attack their production as Consul Bree does, we've done a great part in thinning out their armies. Take this, the Qeynos Guard puts aside such things for times like this. I believe you deserve it.")
end