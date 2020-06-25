--[[
	Script Name		:	Quests/ButcherblockMountains/SarnakSympathizerPart1.lua
	Script Purpose	:	Handles the quest, "Sarnak Sympathizer: Part 1"
	Script Author	:	jakejp
	Script Date		:	6/4/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Raghunatha
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to complete all the Irontoe Dwarf tasks so that they will agree to help Raghunatha. To begin, I must speak with Griss Brumbaugh at the Butcherblock Docks.", 1, "I need to complete all the Irontoe Dwarf tasks.", 11, 1081075)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found Griss Brumbaugh.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Griss Brumbaugh and began working for the Irontoe Dwarves.")

	UpdateQuestDescription(Quest, "The dwarves have a great many threats to deal with in Butcherblock Mountains, but hopefully, with my continued assistance they will agree to provide military and engineering support for the sarnak of Gorowyn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha007.mp3", "", "", 3396264823, 906309207, Player)
	AddConversationOption(conversation, "I'll begin at once!")
	StartConversation(conversation, QuestGiver, Player, "Thank you, friend, I'll do my best to make sure you're rewarded kindly. Now, let me write down the names of all the dwarves you'll need to speak with. Complete their tasks and then return to me. Time is of the essence, and the Haoaeran's attacks grow stronger every day.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end