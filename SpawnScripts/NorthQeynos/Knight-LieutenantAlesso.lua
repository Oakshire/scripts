--[[
    Script Name    : SpawnScripts/NorthQeynos/Knight-LieutenantAlesso.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.13 05:05:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"


local QeynosianCivilService = 463

function spawn(NPC)
	ProvidesQuest(NPC, QeynosianCivilService)
end

function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, QeynosianCivilService)
    if HasQuest(Spawn,5766) and not QuestStepIsComplete(Spawn,5766,7)then --WELCOME TO QEYNOS,CITIZEN
    SetStepComplete(Spawn,5766,7)
    end

	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You may not enter the citadel at this time.  You'll find better adventuring elsewhere.")
    Dialog.AddVoiceover("voiceover/english/sir_alesso/qey_north/sir_alesso000.mp3",3475003342, 4075821182)
    if not HasQuest(Spawn, QeynosianCivilService) and count <= 5 then
     AddConversationOption(conversation, "Yes, but where?", "dlg_1_1")
    elseif GetQuestStep(Spawn, QeynosianCivilService) == 4 then
    Dialog.AddOption("I've completed my service to Qeynos", "dlg1_2") 
     end
	Dialog.AddOption("I'll be on my way.")
	Dialog.Start()
	end

function dlg1_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
       SetStepComplete(Spawn, QeynosianCivilService, 4)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You served Qeynos well and shall be rewarded.")
	Dialog.AddVoiceover("voiceover/english/sir_alesso/qey_north/sir_alesso003.mp3", 4137826818, 1228273355)
	Dialog.AddOption("Thanks.")
	Dialog.Start()
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Outside the gates of Qeynos, Antonica is riddled with vermin. Serve Qeynos by destroying these infectious beasts.")
	Dialog.AddVoiceover("voiceover/english/sir_alesso/qey_north/sir_alesso001.mp3", 446291068, 907364683)
	Dialog.AddOption("Ok, but what exactly should I do?", "offer")
	Dialog.Start()
end



function offer(NPC, Spawn)
	OfferQuest(NPC, Spawn, QeynosianCivilService)
end


