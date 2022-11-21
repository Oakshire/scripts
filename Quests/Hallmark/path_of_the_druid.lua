--[[
    Script Name    : Quests/Hallmark/path_of_the_druid.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:31
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I must complete the trial Aldalad has set forth for me.", 1, 100, "I must complete Aldalad's trial in the elddar grove in order to become a druid.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("I cannot tell you exactly what you will face - only that you must use the skills and spells you have learned up to this point in order to win your way past it and become a druid.  Remember that you will be alone with this.  Are you ready to begin?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad030.mp3", 110213528, 850594761)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("Thank you, Aldalad." )	
	Dialog.Start()   
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've completed the trial.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed Aldalad's trial by defeating the fire elemental and become a druid.")
	if GetClass(Player)== 11 then
	SetAdventureClass(Player,15)
    SendMessage(Player, "Congratulations! You are a Druid.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Druid.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
	end
	UpdateQuestDescription(Quest, "I have completed the trial Aldalad set before me, and am finally ready to journey forth as a druid - a defender of the forests and animals, of those who cannot adequately do so for themselves.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end