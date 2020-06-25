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

--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/vida_sweeps/qey_village01/vidasweeps000.mp3", "", "", 931509640, 2296016698, Spawn)
	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
			AddConversationOption(conversation, "I brought back the new broom from Tawli.  She was a bit tough to find.", "dlg_13_1")
		elseif GetLevel(Spawn) >= 3 then
			AddConversationOption(conversation, "What little rocks?", "TheseStones")
		end
	end
	AddConversationOption(conversation, "Good luck with your work.")
	StartConversation(conversation, NPC, Spawn, "So much to do!  So little time!  I must get these tents in order, and all this sweeping is giving me blisters.  It wouldn't be so bad if there weren't all these little rocks about.")
end
]]

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
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/vida_sweeps/qey_village01/vidasweeps001.mp3", "", "", 3847370594, 2690301162, Spawn)
	AddConversationOption(conversation, "I'll help you out.  I am interested in the blue stone.", "OfferQuest1")
	AddConversationOption(conversation, "I'm sorry, but I really don't have time to run an errand for you.")
	StartConversation(conversation, NPC, Spawn, "These stones on the ground, of course ... I guess I swept away most of the pebbles, but I did keep one strange blue rock that I found in the dust.  If you agree to help me, I'll give you the precious stone as payment. Unfortunately, I'm short on coin.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_13_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/vida_sweeps/qey_village01/vidasweeps003.mp3", "", "", 1668292894, 3552793002, Spawn)
	AddConversationOption(conversation, "What should I do with this blue stone?", "dlg_13_2")
	AddConversationOption(conversation, "Thank you very much.  ")
	StartConversation(conversation, NPC, Spawn, "Aye, I told you she was a bit flighty.  Thank you for the broom and here is the stone I promised.  I hope it brings you good luck.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/vida_sweeps/qey_village01/vidasweeps004.mp3", "", "", 2095544938, 2706458688, Spawn)
	AddConversationOption(conversation, "Hmm... I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "I suppose that is up to you.  Maybe you can take it to a mineral expert somewhere in the city.")
end