--[[
    Script Name    : Quests/Hallmark/path_of_the_rogue.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 02:11:26
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Councilor Vemerik 
        Preceded by: Scout Training pt. II
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to steal the orders from the safehouse in Qeynos Harbor.", 1, 100, "I need to steal the plans from a lieutenant in the Qeynos harbor.", 75)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("I'd like you to check in on a new squad of soldiers. Go steal a note from underneath their noses.  If you succeed, then the guards need more training and if you fail, then obviously, you're not ready to be a rogue.")
 	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik029.mp3", 2070937138, 2065993519)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("What kind of note am I looking for?","Rogue3")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've stolen the orders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've stolen the plans out from under the watchful patrol.")

	AddQuestStepChat(Quest, 2, "I need to return the document to Vemerik.", 1, "I need to return the documents I've stolen to Counselor Vemerik in North Qeynos.", 75, 2220485)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Vemerik.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned and spoken with Counselor Vemerik.")
	if GetClass(Player)== 31 then
	SetAdventureClass(Player,32)
    SendMessage(Player, "Congratulations! You are a Rogue.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Rogue.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
	end
	UpdateQuestDescription(Quest, "I managed to grab the lieutenant's orders out from under the watchful eye of the Qeynos guard.  I'm sure they'll be put through some rigorous training after this to help them keep a sharper eye out in the future, but that's not my concern now!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end