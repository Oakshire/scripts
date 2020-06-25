--[[
	Script Name	: SpawnScripts/Caves/EmmaTorque.lua
	Script Purpose	: Emma Torque <Field Engineer>
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST1_FROM_CONSULBREE = 361
local QUEST3_FROM_CONSULBREE = 494
local QUEST4_FROM_CONSULBREE = 495
local QUEST_1 = 496
local QUEST_2 = 497

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- her quests require QUEST1_FROM_CONSULBREE to be completed first
	
	if HasQuest(Spawn, QUEST3_FROM_CONSULBREE) then
		if GetQuestStep(Spawn, QUEST3_FROM_CONSULBREE) == 1 then
			AddConversationOption(conversation, "Consul Bree sent me to you. I need a river stone.", "dlg_17_1")
			
		-- Drawing Ray
		elseif not HasItem(Spawn, 46016) then
			AddConversationOption(conversation, "I need the Drawing Ray.", "dlg_17_2")
		end
	end

	if HasCompletedQuest(Spawn, QUEST1_FROM_CONSULBREE) then
		if HasCompletedQuest(Spawn, QUEST_1) then
			if HasCompletedQuest(Spawn, QUEST_2) then
				if HasCompletedQuest(Spawn, QUEST4_FROM_CONSULBREE) then
					PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/qst_emma_done_3b19b0b7.mp3", "Fulkoir had a great mind, but a poor, poor heart.", "", 4051073368, 1187972437, Spawn)
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
			HaveAlmostEverything(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST1_FROM_CONSULBREE) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/qst_emma_notready_aeac255d.mp3", "Once Consul Bree gets me the information she promised me I'll be able to design these charges! Maybe you can help her.", "", 2803218058, 1631284097, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/qst_emma_notready_aeac255d.mp3", "Once Consul Bree gets me the information she promised me I'll be able to design these charges! Maybe you can help her.", "", 2803218058, 1631284097, Spawn)
	end
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 3 FROM CONSUL BREE
-------------------------------------------------------------------------------------------------------------------

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_bree_000.mp3", "", "", 1968235016, 878780365, Spawn)
	AddConversationOption(conversation, "May I have one?", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "Ah, yes. She had me studying those a while back. Very complicated procedure to draw the stone from a river behemoth. You need to kill one and then, from its remains, you can draw the stone to the surface. After that it is as simple as grabbing it. You'll need a Drawing Ray--one of my inventions--to get it.")
end

function dlg_17_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST3_FROM_CONSULBREE, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Drawing Ray
	if not HasItem(Spawn, 46016) then
		SummonItem(Spawn, 46016, 1)
		SendMessage(Spawn, "You receive [Drawing Ray].")
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_ray.mp3", "", "", 98468078, 2274575394, Spawn)
	AddConversationOption(conversation, "Thanks, I guess.")
	StartConversation(conversation, NPC, Spawn, "Sure. Be careful with it. I don't think it will explode and kill you, but I also don't want you using it anywhere near me.")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 1
-------------------------------------------------------------------------------------------------------------------

function HaveAlmostEverything(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_000.mp3", "", "", 1365042533, 2322859650, Spawn)
	AddConversationOption(conversation, "Destruction?", "dlg_12_1")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "I have almost everything I need! You know, most of my people are so preoccupied with creation that they forget to see the value in proper destruction.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_001.mp3", "", "", 961712587, 2002405652, Spawn)
	AddConversationOption(conversation, "To demolish?", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Oh? Are you a fan of destruction? The elegant need for precise calculation is unobserved to many, but demolitions are not something suited to an ogre mind. Real demolitions, I mean. Sure an ogre can smash all he wants, but with a fraction of that effort a correctly placed explosive charge can render far more damage. That is why I am here.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_002.mp3", "", "", 3590999842, 100037735, Spawn)
	AddConversationOption(conversation, "What kind of machines?", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "Consul Bree asked for me. Well, not me specifically, but the Engineering Guild knew I was perfect for the job. These gnolls have come across some terrible machines, " .. GetName(Spawn) .. ".")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_003.mp3", "", "", 3625869581, 925115546, Spawn)
	AddConversationOption(conversation, "When will you be ready?", "dlg_12_4")
	StartConversation(conversation, NPC, Spawn, "Devices that can be used to tunnel through rock with the speed of dynamite, but the subtlety of manual labor. I have reason to believe that these machines--among others--were provided to the gnolls by Freeportians. A pair of gnomes: Fulkoir and Fluwkowir Haggleton. Consul Bree has seen the machines, that is why she has called for me. And I'm almost ready to move.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_004.mp3", "", "", 1144754177, 2806670128, Spawn)
	AddConversationOption(conversation, "How can I help?", "dlg_12_5")
	StartConversation(conversation, NPC, Spawn, "As soon as I get a large enough collection of blasting powder. I have enough for the smaller devices, those that Consul Bree will be able to take care of--my precision won't really be needed. But the Freeportian gnomes have finished construction on two monstrous machines. Those machines are here, now in the Caves. And it falls to me to destroy them. But I need help.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_005.mp3", "", "", 2949726626, 4278022809, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "All around here are the wasteful remnants of previous dig projects. You will find copious amounts of blasting powder among the ignored, powdered mineral that is spit out by their digging machines. Collect this powder for me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_006.mp3", "", "", 3167880761, 2808104950, Spawn)
	if (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) or (HasCompletedQuest(Spawn, QUEST_1)) then
		AddConversationOption(conversation, "Yes, I have. Here you go.", "dlg_20_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Have you collected the powder?")
end

function dlg_20_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_007.mp3", "", "", 4075800183, 229387878, Spawn)
	AddConversationOption(conversation, "I am ready.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Most precise! This will be enough to create both charges. Are you ready to help me again?")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 2
-------------------------------------------------------------------------------------------------------------------

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_008.mp3", "", "", 3584996398, 1510863126, Spawn)
	AddConversationOption(conversation, "I can.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "When you find the machines, the 2830 series DDBDs, there should be two of them. For our purposes they are 'A' and 'B.' I doubt they'll even be labeled, but you should know them when you see them. It is important that you place these explosives on the main drive shaft, which is external to the inner workings. It will be outside the hardwood casing, it shouldn't be hard to spot. Consul Bree's information suggests that one of the two gnomes responsible for bringing this technology here is already dead. The remaining gnome, Fulkoir Haggleton, must be stopped. He will be near the Rockpaws, though he may be in hiding. Destroying his machines will certainly draw him out. Can you do this?")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_010.mp3", "", "", 3042855134, 2522255224, Spawn)
	if GetQuestStep(Spawn, QUEST_2) == 4 then
		AddConversationOption(conversation, "I have done all that you asked.", "dlg_26_1")
	end
	AddConversationOption(conversation, "Nothing. Bye.")
	StartConversation(conversation, NPC, Spawn, "Well?")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_011.mp3", "", "", 3844748719, 1801822798, Spawn)
	AddConversationOption(conversation, "Yes, the machines are destroyed and Fulkoir is dead.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Most precise! I heard the explosions from here, I am glad you were not in them and that they were in the proper spots--they WERE in the proper spots, right?")
end

function dlg_26_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/quests/emma/emma_012.mp3", "", "", 514277359, 3372853210, Spawn)
	AddConversationOption(conversation, "You are welcome.")
	StartConversation(conversation, NPC, Spawn, "Great! Consul Bree will be very pleased. You have done the Qeynos Guard a great service, " .. GetName(Spawn) .. ". Take this, please. And thank you.")
end