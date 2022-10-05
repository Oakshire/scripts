--[[
    Script Name    : Quests/Nettleville/nias_hissing_fit.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.24 03:06:45
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: Nia Jaja
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
   	AddQuestStepChat(Quest, 1, "I need to go to the scribe shop.", 1, "I need to go to the scribe shop in Nettleville to see if Marjani Kenan is still there.", 11, 2360024)
	AddQuestStepCompleteAction(Quest, 1, "CheckIn")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "scream", 0, 0, Player)
	Dialog.AddDialog("Thank you.  That woman just makes my hair stand on end!  HhurrrrawrR!")
	Dialog.AddVoiceover("voiceover/english/nia_jaja/qey_village01/niajaja002.mp3", 1501623975, 3086315049)
	Dialog.AddOption("I'll be back shortly! Just take the moment to cool off.")
	Dialog.Start()
end


function Declined(Quest, QuestGiver, Player)

end

function CheckIn(Quest, QuestGiver, Player)
UpdateQuestStepDescription(Quest, 1, "I went to the scribe shop.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I went to the scribe shop and found Marjani Kenan still there.")

	AddQuestStepChat(Quest, 2, "I need to return to Nia Jaja.", 1, "Nia should know Marjani is still at the scribe shop.  She most likely won't be happy.", 0, 2330023)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Nia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Nia.  She was less than pleased to hear the news.")

	UpdateQuestDescription(Quest, "I checked out the scribe shop for Nia and reported back. Unfortunately, Marjani hadn't left yet so Nia won't be getting back to work any time soon.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
