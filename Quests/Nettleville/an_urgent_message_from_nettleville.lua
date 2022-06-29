--[[
    Script Name    : Quests/Nettleville/an_urgent_message_from_nettleville.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.24 01:06:35
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: Knight-Captain Hastings
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to take the note to Captain Santis in Starcrest Commune.", 1, "Captain Hastings has asked that I take a note to Captain Santis in Starcrest Commune.", 75, 2340018)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Starcrest Commune")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "chuckle", 0, 0, Player)
	Dialog.AddDialog("Haha!  Before you get too excited, I should tell you that you won't be fending off gnolls or repelling a drakota, but it is still a service to the guard.  Please take this urgent message to the captain of the Starcrest garrison and be swift.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_hastings/qey_village01/captainhastings004.mp3", 3110042960, 4109582117)
	Dialog.AddOption("I will return post-haste!")
	Dialog.Start()end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I delivered the note to Captain Santis.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the note to Captain Santis.")
    UpdateQuestZone(Quest,"Nettleville")
	AddQuestStepChat(Quest, 2, "I need to return to Captain Hastings in Nettleville.", 1, "Captain Hastings will want to know Captain Santis' response.", 11, 2330022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Captain Hastings.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered the response to Captain Hastings.")

	UpdateQuestDescription(Quest, "I delivered the message. It was just a challenge sent by Captain Hastings to Captain Santis. Apparently the Qeynos Guards compete in Phalanx matches, a team sport.  The few coins at least were worth my time.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
