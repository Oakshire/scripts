--[[
	Script Name		:	TasksaboardtheFarJourney.lua
	Script Purpose	:	Handles the quest, "Tasks aboard the Far Journey"
	Script Author	:	Cynnar
	Script Date		:	2/23/2020
	Script Notes	:	

	Zone			:	Hallmark
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local Waulon = 270002
local CaptainVarlos = 270000
local Ingrid = 270001

local ARat = 270009
local Goblin = 270008

local WaulonsHat = 15354
local ShardOfLucin = 12565

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should speak to Waulon.", 1, "Captain Varlos has asked me to speak to Waulon.", 11, Waulon)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Waulon.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Waulon as Captain Varlos had asked of me.")

	AddQuestStepObtainItem(Quest, 2, "I should start by opening boxes on the deck.", 1, 100, "Waulon has asked me to look for his hat in one of the boxes on the deck.", 11, WaulonsHat)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found Waulon's hat.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Waulon's hat in one of the boxes.")

	AddQuestStepChat(Quest, 3, "I should speak to Waulon.", 1, "Now that I found Waulon's hat, I should return it.", 258, Waulon)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned Waulon's hat to him.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned Waulon's hat.")

	AddQuestStepChat(Quest, 4, "I should speak to Ingrid.", 1, "Waulon has asked me to speak to Ingrid.", 11, Ingrid)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken to Ingrid as Waulon had asked.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have spoken to Ingrid.")

	AddQuestStepObtainItem(Quest, 5, "I should find a way to buy the shard from Merchant Vim.", 1, 100, "Ingrid would like me to buy her a Shard of Luclin.", 11, ShardOfLucin)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have purchased a Shard of Luclin.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I purchased a Shard of Luclin.")

	AddQuestStepChat(Quest, 6, "Return to Ingrid.", 1, "Ingrid would like me to give her the Shard of Luclin.", 183, Ingrid)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I gave the Shard of Luclin to Ingrid.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I gave the Shard of Luclin to Ingrid.")

	AddQuestStepChat(Quest, 7, "I should speak to Captain Varlos again.", 1, "Captain Varlos is trying to get my attention.", 11, CaptainVarlos)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke with Captain Varlos as Ingrid has asked of me.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I have spoken to Captain Varlos.")

	AddQuestStepKill(Quest, 8, "I must kill the rats on the deck.", 2, 100, "Captain Varlos has asked me to kill the rats on the deck.", 99, ARat)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have killed the rats.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I killed the rats that Captain Varlos requested.")

	AddQuestStepChat(Quest, 9, "I should speak to Captain Varlos.", 1, "Inform Captain Varlos that you have exterminated the vermin.", 11, CaptainVarlos)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I spoke to Captain Varlos.")
	UpdateQuestTaskGroupDescription(Quest, 9, "Captain Varlos has ordered you to kill the escaped goblin.")

	AddQuestStepKill(Quest, 10, "I must kill the goblin.", 1, 100, "Captain Varlos has ordered you to kill the escaped goblin.", 11, Goblin)
	AddQuestStepCompleteAction(Quest, 10, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 10, "I have killed the goblin.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I killed the escaped goblin.")

	UpdateQuestDescription(Quest, "I completed all the tasks assigned to me by Captain Varlos aboard the Far Journey.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_009.mp3", "", "point", 3537393303, 2188767436, Player)
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Whoa there, the seas are gettin' a bit angry. Go speak ta' me first mate, Waulon. He might have something for ya' ta' do.")
	
	local Waulon = GetSpawn(NPC, 270002)
	FaceTarget(NPC, Waulon)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end