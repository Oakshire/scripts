--[[
	Script Name	: SpawnScripts/TheRuinsofVarsoon/DibbleRootweaver.lua
	Script Purpose	: Dibble Rootweaver 
	Script Author	: Dorbin
	Script Date	: 2022.01.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HalfPint = 5448

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, HalfPint)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasQuest(Spawn, HalfPint) and not HasCompletedQuest(Spawn,HalfPint)then
    local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/030_halfling_male_dibble_rootweaver_aoi_00_b74acb43.mp3", "Oh!?  Did I hear something?  Hello?  Anybody there!", "peer", 318278760, 343204042, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/030_halfling_male_dibble_rootweaver_aoi_01_bd03e30f.mp3", "Do be careful, adventurer. It's dreadful down here.", "wave", 652077101, 2601145137, Spawn)
	AddTimer(NPC, 100000, "InRange",1,Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

 if not HasQuest(Spawn, HalfPint) and not HasCompletedQuest(Spawn,HalfPint)then
		PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/dibble_rootweaver/dibble_rootweaver001.mp3", "", "", 3675279916, 1794610415, Spawn)
		AddConversationOption(conversation, "What do you need?","WhatNeed")
		AddConversationOption(conversation, "No you may not.")
	    StartConversation(conversation, NPC, Spawn, "Am I ever in a pickle! May I be so bold as to ask for your assistance?")
	    
    else
        FaceTarget(NPC, Spawn)
	    conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/dibble_rootweaver/dibble_rootweaver002.mp3", "", "", 4209059986, 1434611010, Spawn)
		AddConversationOption(conversation, "Fine have it your way.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Please don't waste your time with me.  I'm sure I'll figure a way out of here.")
    end
    end
end

function dlg_1_5 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, HalfPint)
end

function WhatNeed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/dibble_rootweaver/dibble_rootweaver004.mp3", "", "", 480715574, 1552997346, Spawn)
	AddConversationOption(conversation, "What research is a halfling doing down here?","dlg_1_2")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Oh no, no, not for me.  That would  be rude.  It's far too late for me, but you could aid in the research I was conducting down here.  It's very important, more important than little ol' me. ")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/dibble_rootweaver/dibble_rootweaver005.mp3", "", "", 3065266222, 2445669156, Spawn)
		AddConversationOption(conversation, "What, escape?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "I was down here collecting material components for someone very dear.  Just when I had finished, and was on my way out, these guards apprehended me. How embarrassing for me.  Oh, how I dread to think that I let my sweet dear down.  What do you say?  Will you help me?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/dibble_rootweaver/dibble_rootweaver006.mp3", "", "", 3360260430, 2594499977, Spawn)
		AddConversationOption(conversation, "Alright, I will help.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "By Bristlebane's belly, no! Haven't you been listening?  I need you to recover all of the components I gathered and make sure that my sweet receives them.  Will you do this?")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/dibble_rootweaver/varsoon/dibble_rootweaver/dibble_rootweaver007.mp3", "", "", 3554591931, 3863234032, Spawn)
		AddConversationOption(conversation, "I'll do what I can.", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Splendid! I'll write down everything that was taken from me in your journal. Once you recover them, take them to Armorer Peona; you'll find her in the Baubbleshire village in Qeynos.")
end

