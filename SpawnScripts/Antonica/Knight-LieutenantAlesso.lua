--[[
	Script Name	: SpawnScripts/Antonica/Knight-LieutenantAlesso.lua
	Script Purpose	: Knight-Lieutenant Alesso 
	Script Author	: geordie0511
	Script Date	: 2019.03.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Qeynos1 = 459
local Qeynos2 = 460
local Qeynos3 = 461
local Qeynos4 = 462
local Qeynos5 = 463

function spawn(NPC)
	ProvidesQuest(NPC, Qeynos1)  
	ProvidesQuest(NPC, Qeynos2)  
	ProvidesQuest(NPC, Qeynos3)  
	ProvidesQuest(NPC, Qeynos4)  
	ProvidesQuest(NPC, Qeynos5)  
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

	if GetQuestStep(Spawn, Qeynos1) == 4 or GetQuestStep(Spawn, Qeynos2) == 4 or GetQuestStep(Spawn, Qeynos3) == 4 or GetQuestStep(Spawn, Qeynos4) == 4 or GetQuestStep(Spawn, Qeynos5) == 4 then
		if GetQuestStep(Spawn, Qeynos1) == 4 then
			SetStepComplete(Spawn, Qeynos1, 4)
		end
		if GetQuestStep(Spawn, Qeynos2) == 4 then
			SetStepComplete(Spawn, Qeynos2, 4)
		end
		if GetQuestStep(Spawn, Qeynos3) == 4 then
			SetStepComplete(Spawn, Qeynos3, 4)
		end
		if GetQuestStep(Spawn, Qeynos4) == 4 then
			SetStepComplete(Spawn, Qeynos4, 4)
		end
		if GetQuestStep(Spawn, Qeynos5) == 4 then
			SetStepComplete(Spawn, Qeynos5, 4)
		end
		PlayFlavor(NPC, "voiceover/english/sir_alesso/qey_north/sir_alesso003.mp3", "", "", 4137826818, 1228273355, Spawn)
		AddConversationOption(conversation, "Thanks.")
		StartConversation(conversation, NPC, Spawn, "You served Qeynos well and shall be rewarded.")
	else
       PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, but where?", "dlg_1_1")
		AddConversationOption(conversation, "I'll be on my way.")
		StartConversation(conversation, NPC, Spawn, "Hello!  As you journey into the city, keep in mind that you may not enter the citadel within North Qeynos at this time.  You'll find better adventuring elsewhere.")
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_alesso/qey_north/sir_alesso001.mp3", "", "", 446291068, 907364683, Spawn)
		AddConversationOption(conversation, "Okay, but what exactly should I do?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Outside the gates of Qeynos, Antonica is riddled with vermin. Serve Qeynos by destroying these infectious beasts.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_alesso/qey_north/sir_alesso002.mp3", "", "", 2041064542, 2502837283, Spawn)
	if HasCompletedQuest(Spawn, Qeynos1) == false and HasQuest(Spawn, Qeynos1) == false then
		AddConversationOption(conversation, "I'll do it for Qeynos.", "Quest1")
	elseif HasCompletedQuest(Spawn, Qeynos2) == false and HasQuest(Spawn, Qeynos2) == false and HasCompletedQuest(Spawn, Qeynos1) then
		AddConversationOption(conversation, "I'll do it for Qeynos.", "Quest2")
	elseif HasCompletedQuest(Spawn, Qeynos3) == false and HasQuest(Spawn, Qeynos3) == false and HasCompletedQuest(Spawn, Qeynos2) then
		AddConversationOption(conversation, "I'll do it for Qeynos.", "Quest3")
	elseif HasCompletedQuest(Spawn, Qeynos4) == false and HasQuest(Spawn, Qeynos4) == false and HasCompletedQuest(Spawn, Qeynos3) then
		AddConversationOption(conversation, "I'll do it for Qeynos.", "Quest4")
	elseif HasCompletedQuest(Spawn, Qeynos5) == false and HasQuest(Spawn, Qeynos5) == false and HasCompletedQuest(Spawn, Qeynos4) then
		AddConversationOption(conversation, "I'll do it for Qeynos.", "Quest5")
	end 
	StartConversation(conversation, NPC, Spawn, "Rid Antonica of the rats, snakes and beetles that plague Qeynos.  Dispatch of no less than ten of each and we shall reward your service.")
end

function Quest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, Qeynos1)
end

function Quest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, Qeynos2)
end

function Quest3(NPC, Spawn)
	OfferQuest(NPC, Spawn, Qeynos3)
end

function Quest4(NPC, Spawn)
	OfferQuest(NPC, Spawn, Qeynos4)
end

function Quest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, Qeynos5)
end
