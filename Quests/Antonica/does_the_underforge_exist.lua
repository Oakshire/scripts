--[[
    Script Name    : Quests/Antonica/does_the_underforge_exist.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.07 10:05:52
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the Underforge.", 10, "I should see if I could find the Underforge within Stormhold.", 11, -130, -1, -55, 15)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Stormhold")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Thank you much.  A rumor's not worth a heap of slag ... but sometimes you can find a grain of truth in a rumor.")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul004.mp3", 2013410863, 3232485103)
	Dialog.AddOption("Yes, that seems to be my experience.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)

end

function Reload(Quest, QuestGiver, Player, Step)

end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the Underforge.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the location of the Underforge within Stormhold.")
    UpdateQuestZone(Quest,"Antonica")

	AddQuestStepChat(Quest, 2, "I need return to Kinamer Galemaul.", 1, "I should return to Kinamer Galemaul and tell him about the Underforge.", 11, 120278)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "	I told Kinamer about the Underforge.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Kinamer that the Underforge exists.")

	UpdateQuestDescription(Quest, "I found the Underforge within Stormhold and returned to Kinamer Galemaul. The forge wasn't as impressive as legend made it out to be. He was surprised and elated by the news.")
	GiveQuestReward(Quest, Player)
end
