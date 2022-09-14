--[[
    Script Name    : Quests/IsleofRefuge/striking_back_at_the_goblins_scout.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.13 09:09:34
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Vladiminn (3250016)
        Preceded by: Scouting the Goblin Camp
        Followed by: Hunting the Orcish Leader
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather four wolf harnesses and return to Vladiminn.", 4, 70, "My part in the raid on the main goblin camp will consist of slaying the trained battle and war wolves that the goblins keep there.  Vladiminn would like me to return four wolf harnesses to him.", 286, 3250128,3250129)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Cinch up your belt and inspect your weapons, you're going goblin hunting.  I need a few of those collars their wolves wear.  You'll probably want to find some friends to go with you.  The island's leaders have decided to try and find out what's behind these attacks, so we need to bring back anything we can find.  All the priests, fighters and mages will be out looking to find what they can as well.")
	Dialog.AddVoiceover("voiceover/english/vladiminn/tutorial_island02/vladiminn008.mp3", 2366018464, 490520943)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("I'll be back when I've gathered what you wish.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I collected four rope harnesses.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected four rope harnesses from the battle at the village.")

	AddQuestStepChat(Quest, 2, "I need to give these harnesses to Vladiminn.", 1, "I need to return to Vladiminn at the outpost and give him these rope harnesses.", 11, 3250016)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned the wolf harnesses to Vladiminn")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gathered the four wolf harnesses and gave them to Vladiminn.")

	UpdateQuestDescription(Quest, "It appears that Vladiminn recognized something about either the workmanship or style of the harnesses I brought him.  He didn't explain directly what he meant, only that my part in all this was at an end, though I think if I prod him a bit, he may divulge what he's afraid of, or at least what it was he noticed about the collars.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end