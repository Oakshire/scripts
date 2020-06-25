--[[
	Script Name		:	Quests/ButcherblockMountains/CoinForTheCaptain
	Script Purpose	:	Handles the quest, "Coin for the Captain"
	Script Author	:	jakejp
	Script Date		:	6/2/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Dockmaster Waulon
	Preceded by		:	None
	Followed by		:	None
--]]

local CoinForTheCaptain = 255
local CaptainSays = 251

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver this sack of coins to Captain Stonnacky.", 1, "I need to deliver a sack of coins to Captain Stonnacky at once.", 11, 1081077)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
        
	UpdateQuestStepDescription(Quest, 1, "I have delivered the coins to Captain Stonnacky.")

	AddQuestStep(Quest, 2, "I need to help Captain Stonnacky with his task.", 1, 100, "I need to deliver a sack of coins to Captain Stonnacky at once.", 11)
 	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")

        

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have helped Captain Stonnacky.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the sack of coins to Captain Stonnacky.")

	AddQuestStepChat(Quest, 3, "I need to speak with Dockmaster Waulon.", 1, "I need to let Dockmaster Waulon know I delivered the sack of coins to Captain Stonnacky, safetly.", 11, 1080008)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke with Dockmaster Waulon.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Dockmaster Waulon.")

	UpdateQuestDescription(Quest, "After delivering the sack of coin to the venerable captain, I took some time to assist him in an errand. Now that I've completed his quest, I need to report back to Dockmaster Waulon.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

