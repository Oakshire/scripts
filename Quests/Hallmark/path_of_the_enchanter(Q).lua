--[[
    Script Name    : Quests/Hallmark/path_of_the_enchanter(Q).lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 08:11:22
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I should look to the middle of the southern row of buildings in South Qeynos for the Wayfarer's Rest.", 5, "I must enter the Wayfarer's Rest in South Qeynos and take care of the disturbance.", 11,6.50, -0.15, 0.88,215)
	AddQuestStepCompleteAction(Quest, 1, "QuestStep1")
end

function QuestStep1(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have entered the Wayfarer's Rest.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have entered the Wayfarer's Rest.")
	AddQuestStep(Quest, 2, "I need to discover and neutralize the cause of the brawl in the Wayfarer's Rest.", 1, 100, "I must practice 'Crowd Control' in the Wayfarer's Rest.", 11)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("You'll be an enchanter... yes... perhaps ... First, let's see how you deal with an angry crowd.  Not everyone is cut out to deal with the thought required behind this choice ... we need to make sure that you are.")
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("Alright. I'll deal with the crowd.","GoodbyeEnch")	
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
	UpdateQuestStepDescription(Quest, 2, "I have taken care of the disturbance in the Wayfarer's Rest.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have taken care of the disturbance for Niksel and proven myself as an enchanter.")
	if GetClass(Player)== 21 then
	SetAdventureClass(Player,25)
    SendMessage(Player, "Congratulations! You are an Enchanter.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are an Enchanter.",250,250,200)
    ApplySpellVisual(Player, 324)
 -- PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
	end
	UpdateQuestDescription(Quest, "After thinking about it rationally, I realized that there was no way for those tavern patrons to have been so upset.  So naturally, I went to find the root of their animosity.  Having done so, I find myself in a new role as an enchanter.  I suppose I'll have much to learn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestStep1(Quest, QuestGiver, Player)
		elseif Step == 2 then
        QuestComplete(Quest, QuestGiver, Player)
    end
end
