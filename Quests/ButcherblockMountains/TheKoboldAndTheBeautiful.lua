--[[
	Script Name		:	Quests/ButcherblockMountains/TheKoboldAndTheBeautiful.lua
	Script Purpose	:	Handles the quest, "The Kobold and the Beautiful"
	Script Author	:	jakejp
	Script Date		:	6/5/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Brulten Hiltstill
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay several kobolds in the area.", 12, 100, "I need to kill several kobolds in the Butcherblock Mountains.", 611, 1080092, 1080095, 1080099, 1080107, 1080108, 1080111, 1080247, 1080248, 1080251, 1080258, 1080268, 1080269, 1080311, 1080315, 1080316, 1080317, 1080321, 1080326, 1080327, 1080335, 1080341, 1080372, 1080383, 1080423, 1080424, 1080425, 1080426, 1080428, 1080431, 1080432, 1080612, 1080616, 1080617, 1080663, 1080701, 1080764, 1080787, 1081102, 1081103, 1081104, 1081121, 1081122, 1081124, 1081138, 1081141, 1081142, 1081143, 1081145, 1081146, 1081148, 1081150, 1081151, 1081153, 1081154, 1081155, 1081170)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain several kobolds in the Butcherblock Mountains.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have successfully killed several kobolds.")

	AddQuestStepChat(Quest, 2, "I should let Brulten know I've slain several kobolds.", 1, "I need to return to the Highland Outposts and let Brulten know that I've killed several kobolds.", 11, 1081114)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I told Brulten that I've slain several kobolds.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Brulten of my deeds. He thanked me for my efforts.")

	UpdateQuestDescription(Quest, "I have slain several kobolds... Alas more and more seem to take the place of the fallen!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "I'm off!")
	AddConversationOption(conversation, "I don't have a blade, but thanks for the well wishes!")
	StartConversation(conversation, QuestGiver, Player, "Good. Now just up ahead are scores of kobold camps. Go and slay at least twenty kobolds. That should thin their ranks enough to stall any assault they have planned. Go swiftly, and may Brell guide your blade!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end