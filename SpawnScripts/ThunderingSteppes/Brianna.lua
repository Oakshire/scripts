--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Brianna.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.11 02:07:39
    Script Purpose : Brianna (2490170)
                   : 
--]]

local WatchYourStepinTheTSPartIII = 101
local SuppliesForBrianna = 108
local HidesForBrianna = 109

function spawn(NPC)
	ProvidesQuest(NPC, HidesForBrianna)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1009.mp3", "", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1009.mp3", "", "", 0, 0, Spawn)
	end
	
	if HasQuest(Spawn, WatchYourStepinTheTSPartIII) and GetQuestStep(Spawn, WatchYourStepinTheTSPartIII) == 3 then
		-- start SuppliesForBrianna
		AddConversationOption(conversation, "No, I'm here to deliver a package to you.", "dlg_0_1")
		AddConversationOption(conversation, "Oh okay. Thanks anyways.")
		StartConversation(conversation, NPC, Spawn, "Har har, what kind of work do you think you can do with little arms like those? If you are here for the apprenticeship, it has been filled.")
	elseif (HasQuest(Spawn, SuppliesForBrianna) and GetQuestStep(Spawn, SuppliesForBrianna) < 2) or (HasQuest(Spawn, HidesForBrianna) and GetQuestStep(Spawn, HidesForBrianna) < 2) then
		-- on SuppliesForBrianna or HidesForBrianna but not ready for turn in
		AddConversationOption(conversation, "No but I have my best people working on it.")
		StartConversation(conversation, NPC, Spawn, "Well, did you bring the supplies yet?")
	elseif HasQuest(Spawn, SuppliesForBrianna) and GetQuestStep(Spawn, SuppliesForBrianna) == 2 then
		-- turn in SuppliesForBrianna
		AddConversationOption(conversation, "Yes right here.", "dlg_1_1")
		AddConversationOption(conversation, "Um, I have some but not for you.")
		StartConversation(conversation, NPC, Spawn, "Well, do you have the supplies?")
	elseif HasCompletedQuest(Spawn, SuppliesForBrianna) and not HasQuest(Spawn, HidesForBrianna) and not HasCompletedQuest(Spawn, HidesForBrianna) then
		-- start HidesForBrianna
		AddConversationOption(conversation, "Yes I am.", "dlg_2_1")
		AddConversationOption(conversation, "Not at this time.")
		StartConversation(conversation, NPC, Spawn, "Har har, what kind of work do you think you can do with little arms like those? Are you here for the apprenticeship? ")
	elseif HasQuest(Spawn, HidesForBrianna) and GetQuestStep(Spawn, HidesForBrianna) == 2 then
		-- turn in HidesForBrianna
		AddConversationOption(conversation, "Yes, right here.", "dlg_3_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Well, do you have the supplies?")
	elseif HasCompletedQuest(Spawn, SuppliesForBrianna) and HasCompletedQuest(Spawn, HidesForBrianna) then
		-- finished both SuppliesForBrianna and HidesForBrianna
		PlayFlavor(NPC, "", "Thanks for your help, I really do appreciate it.  Adventurers like you are really good to have around!", "hello", 1689589577, 4560189, Spawn)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, I was chased by some dogs and accidentally dropped it.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Sure, let's see it... my it looks damaged, what happened here? Did you open it up?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Um, okay.", "dlg_0_3")
	AddConversationOption(conversation, "I am not going to do that.")
	StartConversation(conversation, NPC, Spawn, "Ok, these things happen. However, it says right here on top that it was insured by you and your delivery service, so I am going to need you to replace these items.")
end

function dlg_0_3(NPC, Spawn)
	OfferQuest(NPC, Player, SuppliesForBrianna)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, SuppliesForBrianna, 2)
	SetStepComplete(Spawn, WatchYourStepinTheTSPartIII, 3)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Good they look like they will do, here is your receipt.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sure thing.", "dlg_2_2")
	AddConversationOption(conversation, "Not today.")
	StartConversation(conversation, NPC, Spawn, "The job is mostly odd-jobs. It's what I do; fix things for people, patch up armor, repair broken fences, and occasionally help with party decorations. Do you think you could assist me with some odd jobs?")
end

function dlg_2_2(NPC, Spawn)
	OfferQuest(NPC, Player, HidesForBrianna)
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, HidesForBrianna, 2)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Great, these look like it's the first time they have ever seen the sun. Thanks for your help. I don't have anything else for you today, but check back again.")
end