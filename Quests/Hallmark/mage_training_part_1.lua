--[[
    Script Name    : Quests/Hallmark/mage_training_part_1.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 07:11:49
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five bog slugs in the Peat Bog.", 5, 100, "The Magister has sent me to the bog to kill five (5) bog things", 91, 8290005)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Peat Bog")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("I know where you can find creatures pulled from the holes. Lazy summoners beckon forth companions, and when they no longer have use for these friends, they disperse of them in the bog. Your homework is to go to the bog and kill some of these displaced creatures. When you are done, return to me and report your findings.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel005.mp3", 3296291813, 1082692317)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("Alright. I'll investigate the creatures in the bog.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed five bog slugs in the Peat Bog.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the bog things and paid attention to what they looked like.")
    UpdateQuestZone(Quest,"South Qeynos")

	AddQuestStepChat(Quest, 2, "I need to speak with Magister Niksel in South Qeynos.", 1, "I should let Niksel, in South Qeynos, know that the bog things didn't have much of a shape.", 11, 2310376)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with Magister Niksel.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Niksel has let me know what the bog things really were.")
    UpdateQuestZone(Quest,"Multiple Zones")

	AddQuestStepChat(Quest, 3, "I need to speak with Yanari in Castleview.", 1, "Niksel has now directed me to other students to hear more about sorcery.", 11, 2360047)
	AddQuestStepChat(Quest, 4, "I need to find Zipiff Clamorclang.", 1, "Niksel has now directed me to other students to hear more about sorcery.", 11, 2380010	)
	AddQuestStepChat(Quest, 5, "I need to speak with Oolimeminoso in Starcrest.", 1, "Niksel has now directed me to other students to hear more about sorcery.", 11, 2340046)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end


function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Yanari.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Zipiff.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Oolimeminoso")
 QuestCheck(Quest, QuestGiver, Player)
end


function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5767,3) and QuestStepIsComplete(Player,5767,4) and QuestStepIsComplete(Player,5767,5) then
    UpdateQuestTaskGroupDescription(Quest, 3, "I have learned much from Niksel's former students about sorcery.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 6, "I need to tell Magister Niksel what I've learned.", 1, "I should give Niksel, in South Qeynos, a summary of what I learned from his students", 11, 2310376)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
	end
end

--I need to speak with Magister Niksel in South Qeynos about advancing as a mage.
--I have contacted Magister Niksel about advancing.
--Niksel has agreed to continue my lessons at a later time
--Niksel has now directed me to other students to hear more about sorcery
--I should let Niksel, in South Qeynos, know that the bog things didn't have much of a shape.
--I spoke with Magister Niksel.
--Niksel has let me know what the bog things really were.
--I need to speak with Magister Niksel outside the mage tower in South Qeynos.
--I should give Niksel, in South Qeynos, a summary of what I learned from his students


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "Niksel has agreed to continue my lessons at a later time.")
	UpdateQuestTaskGroupDescription(Quest, 6, "Niksel has agreed to continue my lessons at a later time.")

	UpdateQuestDescription(Quest, "I've learned what a summoner and a sorcerer studies from Niksel's lessons.  He has ended my first lesson so that he can write down the magical theory he came up with.  He has offered to teach me more again in the future.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
