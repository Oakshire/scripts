--[[
    Script Name    : Quests/Hallmark/path_of_the_sorcerer(Q).lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 07:11:55
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to pass Magister Niksel's trial.", 1, 100, "I must pass Magister Niksel's trial in the testing room south of the mage tower in South Qeynos. The chamber is located at the top of the tower.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("We shall see. In this trial for aspiring sorcerers, you will face against the arcane creations from the Three-Tower's menagerie. They will each be translocated into the testing chamber, but also taken swiftly out once defeated. All for swift repairs, of course!  Defeat these guardians and you will have proven yourself in the art of sorcery.")
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("Once I prove myself, should I find you?","GoodbyeSumm")	
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
	UpdateQuestStepDescription(Quest, 1, "I've passed Magister Niksel's trial.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've passed Magister Niksel's trial.")
	if GetClass(Player)== 21 then
	SetAdventureClass(Player,22)
    SendMessage(Player, "Congratulations! You are a Sorcerer.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Sorcerer.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
	end
	UpdateQuestDescription(Quest, "I passed the trial and will continue on my path as a sorcerer.  I know that I cannot be reckless with my power, or these forces may overwhelm me.")
	GiveQuestReward(Quest, Player)
end



function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
