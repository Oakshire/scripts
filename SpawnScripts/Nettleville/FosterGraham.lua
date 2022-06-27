--[[
	Script Name	: SpawnScripts/Nettleville/FosterGraham.lua
	Script Purpose	: Foster Graham 
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]

local QUEST_1 = 309
local Timer = false

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if Timer == false then
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
    	FaceTarget(NPC, Spawn)
        Timer = true
		PlayFlavor(NPC, "voiceover/english/foster_graham/qey_village01/qey_village01_foster_graham_callout_127b0ec4.mp3", "Come to gaze upon me, have you?", "smirk", 918053570, 706207599, Spawn)
        AddTimer(NPC,21000,"ResetTimer")
	end
end
end

function ResetTimer(NPC, Spawn)
            Timer = false
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I see a few lines forming on that face of yours.", "dlg_22_1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I have your toxic glands.", "dlg_5_1")
	end
	AddConversationOption(conversation, "I will leave you to yourself.")
	PlayFlavor(NPC, "voiceover/english/foster_graham/qey_village01/fostergraham000.mp3", "", "", 2810929799, 1251082764, Spawn)
	StartConversation(conversation, NPC, Spawn, "Ahh... my reflection in the water.  How glorious! Nothing is more pleasurable than gazing upon my own beauty.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foster_graham/qey_village01/fostergraham001.mp3", "", "scream", 716330203, 409660304, Spawn)
	AddConversationOption(conversation, "Stop the drama. I can get what you need.", "OfferQuest1")
	AddConversationOption(conversation, "That's your problem, not mine.")
	StartConversation(conversation, NPC, Spawn, "What!  It cannot be!  Nooooo... Where is my face cream?  My 'Erollisi's Bane?'  Have I run out?  Its secret ingredient is rare; the local shops have all been depleted of it.  Alas!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_5_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/foster_graham/qey_village01/fostergraham003.mp3", "", "smile", 399908880, 4101526749, Spawn)
	AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "Many thanks, my homely friend.  Take this payment for your service and use it to improve your looks.")
end
