--[[
	Script Name	: SpawnScripts/Nettleville/VidaSweeps.lua
	Script Purpose	: Vida Sweeps 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local QUEST_1 = 310

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
AddTimer(NPC, 5000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/vida_sweeps/qey_village01/qey_village01_groundskeeper_vida_sweeps_callout_6c14234e.mp3", "So much to do!  So little time! I must finish my sweeping, but I need a new broom. Perhaps you'll help me in return for a precious stone?", "confused", 1752767860, 1342853234, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
	
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Dialog.New(NPC,Spawn)
	
	Dialog.AddDialog("So much to do!  So little time!  I must get these tents in order, and all this sweeping is giving me blisters.  It wouldn't be so bad if there weren't all these little rocks about.")
	Dialog.AddVoiceover("voiceover/english/vida_sweeps/qey_village01/vidasweeps000.mp3", 931509640, 2296016698)
	
	Dialog.AddOption("I brought back the new broom from Tawli.  She was a bit tough to find.", "dlg_13_1")
	Dialog.AddOptionRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, QUEST_1)
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, QUEST_1, 2)
	
	Dialog.AddOption("What little rocks?", "TheseStones")
	Dialog.AddOptionRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, QUEST_1)
	Dialog.AddOptionRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, QUEST_1)
	Dialog.AddOptionRequirement(REQ_LEVEL_GREATER_OR_EQUAL, 3)
	
	Dialog.AddOption("Good luck with your work.")
	
	Dialog.Start()
end



function TheseStones(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These stones on the ground, of course ... I guess I swept away most of the pebbles, but I did keep one strange blue rock that I found in the dust.  If you agree to help me, I'll give you the precious stone as payment. Unfortunately, I'm short on coin.")
	Dialog.AddVoiceover("voiceover/english/vida_sweeps/qey_village01/vidasweeps001.mp3", 3847370594, 2690301162)
	Dialog.AddOption("I'll help you out.  I am interested in the blue stone.", "OfferQuest1")
	Dialog.AddOption("I'm sorry, but I really don't have time to run an errand for you.")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	Dialog.AddDialog("Aye, I told you she was a bit flighty.  Thank you for the broom and here is the stone I promised.  I hope it brings you good luck.")
	Dialog.AddVoiceover("voiceover/english/vida_sweeps/qey_village01/vidasweeps003.mp3", 1668292894, 3552793002)
	Dialog.AddOption("What should I do with this blue stone?", "Dialog7")
	Dialog.AddOption("Thank you very much.  ")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(QuestGiver, "", "", "ponder", 0, 0, Player)
	Dialog.AddDialog("I suppose that is up to you.  Maybe you can take it to a mineral expert somewhere in the city.")
	Dialog.AddVoiceover("voiceover/english/vida_sweeps/qey_village01/vidasweeps004.mp3", 2095544938, 2706458688)
	Dialog.AddOption("Hmm... I'll keep that in mind.")
	Dialog.Start()
end



    
function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end