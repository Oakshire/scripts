--[[
    Script Name    : Quests/IsleofRefuge/striking_back_at_the_goblins.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.13 09:09:56
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Nathinia Sparklebright (3250014)
        Preceded by: Venom Sac Collection
        Followed by: Removing the Orc Menace 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect 4 goblin totems from Gruttooth Brutes.", 4, 70, "I need to collect four goblin totems for Nathinia.  The totems can be obtained by killing Gruttooth brutes in the main goblin encampments found on the northern part of the island.", 372, 3250134,3250123,3250124)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("I believe the goblin shaman may be stirring up their people into an aggressive frenzy using the power of their vile totems.  Go with the other adventurers.  If you see some of these totems fall from the defeated goblins' hands, please collect them and bring them to me.  I would like to learn what is causing these goblins to be so hostile.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright010.mp3", 2848196169,4101313986)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("I will gather the totems for you.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I collected 4 goblin totems.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected four goblin totems for Nathinia while attacking the goblin village.")

	AddQuestStepChat(Quest, 2, "I need to take these totems to Nathinia.", 1, "I need to take these goblin totems to Nathinia back at the outpost.", 11, 3250014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the totems to Nathinia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the totems to Nathinia.")

	UpdateQuestDescription(Quest, "I was able to collect four goblin totems for Nathinia and gave them to her for her study.  She may be able to determine the power of the totems and if they are the reason the goblins have become so aggressive.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
