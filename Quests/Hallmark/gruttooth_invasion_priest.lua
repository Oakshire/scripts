--[[
    Script Name    : Quests/Hallmark/gruttooth_invasion_priest.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.09 08:09:42
    Script Purpose : 

      Zone       : Hallmark
        Quest Giver: Garven Tralk
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "Grab a weapon from the nearby weapon rack.", 1, 100, "I need to grab a weapon off of the weapon rack on the beach and help defend the outpost.", 45)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("All right then.  Quickly now, grab a weapon from the rack here and go to the west gate.  Our scouts have reported that another group of goblins is going to charge the barricade at any moment now -- if they haven't already.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk017.mp3",2814753632, 2666092435)
	Dialog.AddOption("Continue.", "PContinue2")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	PlayFlavor(QuestGiver, "voiceover/english/garven_tralk/tutorial_island02_fvo_onaoienter.mp3", "You there! Stop standing around like a drunken sailor and get over here!", "", 4010256509, 3318344012, Player)
end

function Deleted(Quest, QuestGiver, Player)
	PlayFlavor(QuestGiver, "voiceover/english/garven_tralk/tutorial_island02_fvo_onaoienter.mp3", "You there! Stop standing around like a drunken sailor and get over here!", "", 4010256509, 3318344012, Player)
end

function Step1Complete(Quest, QuestGiver, Player)

	UpdateQuestStepDescription(Quest, 1, "Got my weapon, now to kill some goblins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've got my weapon and am ready to do my part defending the outpost.")

	AddQuestStepKill(Quest, 2, "I must kill one of the Gruttooth invaders attacking the outpost.", 1, 100, "I must head up the stairs and out to the west gate.  Just past the barricades there I'll find goblin invaders attacking the outpost.  It's my job to kill at least one of the buggers.", 11, 3250063)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed one of the Gruttooth invaders attacking the outpost.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've done my part in helping defend the outpost against a goblin raid.")

	AddQuestStepChat(Quest, 3, "I need to talk to Garven again.", 1, "I've done my duty and should talk to Garven on the beach again.", 11, 3250020)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "Garven has rewarded me for my efforts")
	UpdateQuestTaskGroupDescription(Quest, 3, "Garven has rewarded me for my efforts.")

	UpdateQuestDescription(Quest, "I successfully helped fend off one of the nearly constant goblin raids on this island, even managing to kill one of the invaders myself.  Garven has instructed me to seek out the trainer of my profession on the Isle for further tasks.  With any luck I'll be headed for one of the larger cities sometime soon.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end