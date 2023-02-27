--[[
    Script Name    : Quests/StarcrestCommune/catacomb_rat_rummaging.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.02 04:07:34
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Taggan Brookrich
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill and bring back four of any type of rat in the catacombs.", 4, 100, "I need to hunt down any four rats in the Down Below for a spectator at the King's Field game.", 127, 8340033, 8340034, 8340043, 8340041)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "Down Below")	
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("That's a great idea!  And you could fetch'm!  I need dead ones- not too damaged mind you.  Not too damaged mind you.  They have to pass for 'live' rats.")
    PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/taggan_brookrich/qey_village02/tagganbrookrich001.mp3", 299669920, 1586732231)
	Dialog.AddOption("Alright... I'll be back with your dead rats. You'd best pay up for these when I get back!")
	Dialog.AddOption("Err.. What did I just agree to?")
	Dialog.Start()
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered all four corpses of the rats in good condition.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered all four corpses of the rats in good condition.")
	UpdateQuestZone(Quest, "Starcrest Commune")	

	AddQuestStepChat(Quest, 2, "I must return to Taggan Brookrich.", 1, "I need to deliver these dead rats to Staggan Brookrich in Starcrest Commune.", 127, 2340008)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Taggan Brookrich.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered the dead rats to Taggan Brookrich.")

	UpdateQuestDescription(Quest, "I fetched the rats for the spectator, though I don't believe they will do him much good. Judging by how intent Vandis and his opponent are on their King's Field game, I don't think even a dragon standing behind them would interrupt play.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
