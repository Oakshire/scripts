--[[
    Script Name    : SpawnScripts/NorthQeynos/Knight-LieutenantAlesso.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.13 05:05:50
    Script Purpose : 
                   : 
--]]


local QeynosianCivilService = 463

function spawn(NPC)
	ProvidesQuest(NPC, QeynosianCivilService)
end

function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, QeynosianCivilService)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/sir_alesso/qey_north/sir_alesso000.mp3", "", "", 3475003342, 4075821182, Spawn)
    if not HasQuest(Spawn, QeynosianCivilService) and count <= 5 then
     AddConversationOption(conversation, "Yes, but where?", "dlg_1_1")
     elseif GetQuestStep(Spawn, QeynosianCivilService) == 4 then
    AddConversationOption(conversation, "I've completed my service to Qeynos", "dlg1_2") 
     end
	AddConversationOption(conversation, "I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "You may not enter the citadel at this time.  You'll find better adventuring elsewhere.")
	end

function dlg1_2(NPC, Spawn)
        SetStepComplete(Spawn, QeynosianCivilService, 4)
		PlayFlavor(NPC, "voiceover/english/sir_alesso/qey_north/sir_alesso003.mp3", "", "", 4137826818, 1228273355, Spawn)
		AddConversationOption(conversation, "Thanks.")
		StartConversation(conversation, NPC, Spawn, "You served Qeynos well and shall be rewarded.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sir_alesso/qey_north/sir_alesso001.mp3", "", "", 446291068, 907364683, Spawn)
		AddConversationOption(conversation, "Okay, but what exactly should I do?", "offer")
	StartConversation(conversation, NPC, Spawn, "Outside the gates of Qeynos, Antonica is riddled with vermin. Serve Qeynos by destroying these infectious beasts.")
end



function offer(NPC, Spawn)
	OfferQuest(NPC, Spawn, QeynosianCivilService)
end


