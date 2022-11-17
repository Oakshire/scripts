--[[
    Script Name    : Quests/Hallmark/path_of_the_summoner.lua
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
	AddQuestStepKill(Quest, 1, "I need to pass Magister Niksel's trial using a summoned creature.", 1, 100, "I must pass Magister Niksel's trial in the testing room south of the mage tower in South Qeynos. The chamber is located at the top of the tower.", 11,22105121)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Then I suggest you prepare yourself.  The trial you will face places you against the mighty beings you will one day summon on your own.  One from each element will be represented. Destroy them all, and you will be ready to move on in your new role as a summoner.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel030.mp3", 4260640044, 118480964)
    PlayFlavor(QuestGiver, "", "", "scold", 0, 0, Player)
    Dialog.AddOption("Should I return to you once I've completed the trial?","GoodbyeSumm")	
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
	SetAdventureClass(Player,28)
    SendMessage(Player, "Congratulations! You are a Summoner.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Summoner.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
	end


	UpdateQuestDescription(Quest, "Having completed my trial as a summoner, I will be focusing my studies in magic down the path I've chosen.  I am well on my way in Norrath - and have learned valuable lessons in responsible summoning.")
	GiveQuestReward(Quest, Player)
end



function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
