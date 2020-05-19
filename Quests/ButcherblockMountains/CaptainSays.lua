--[[
	Script Name		:	Quests/ButcherblockMountains/CaptainSays
	Script Purpose	:	Handles the quest, "Captain Says!"
	Script Author	:	jakejp
	Script Date		:	6/2/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Captain Stonnacky
	Preceded by		:	None
	Followed by		:	None
--]]

local CaptainSays = 267

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Alright, next?", "dlg_4_4")
	StartConversation(conversation, QuestGiver, Player, "Go seek out me crew members. First I want ye ta tell Bimine Bowchaser to flemish down the boat falls an' be sure all the lines are coiled correctly!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver orders to Bimini Bowchaser.", 1, "I need to speak with several members of Captain Stonnacky's crew.", 11, 1080197)
    AddQuestStepChat(Quest, 2, "I need to deliver orders to Mizzen Staysail.", 1, "I need to speak with several members of Captain Stonnacky's crew.", 11, 1081057)
	AddQuestStepChat(Quest, 3, "I need to deliver orders to Tally Topgallant.", 1, "I need to speak with several members of Captain Stonnacky's crew.", 11, 1080048)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, CaptainSays, 1) and QuestStepIsComplete(Player, CaptainSays, 2) and QuestStepIsComplete(Player, CaptainSays, 3) then
		HandInQuest(Quest, QuestGiver, Player)
	  end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have delivered the Captain's orders to Bimini Bowchaser.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have delivered orders to Mizzen Staysail.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have delivered orders to Tally Topgallant.")
    CheckProgress(Quest, QuestGiver, Player)
	
end

function HandInQuest(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Captain Stonnacky's crew.")
	AddQuestStepChat(Quest, 4, "I need to speak with Captain Stonnacky.", 1, "I need to tell the captain that I've given his crew their orders.", 11, 1081077)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Captain Stonnacky.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Captain Stonnacky.")

	UpdateQuestDescription(Quest, "I successfully delivered the orders to each of the respective crew members.  The ship will soon be ready and the crew can pursue the dreaded pirate, Blackguard!  I think Captain Stonnacky still believes that I am Bosun Oxeye.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

