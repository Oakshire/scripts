--[[
	Script Name		:	ADimLight.lua
	Script Purpose	:	Handles the quest, "A Dim Light"
	Script Author	:	jakejp
	Script Date		:	6/11/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Geldrani A'Zhi'Tel
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay kobold mystics in Butcherblock Mountains to locate a luminescent sphere.", 1, 80, "I must collect a luminescent sphere for Geldrani.", 1180, 1080247, 1081121)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "It appears I have found the luminescent sphere.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It appears I have found the sphere.")

	AddQuestStepChat(Quest, 2, "Bring the luminescent sphere to Geldrani.", 1, "I need to bring the luminescent sphere to Geldrani at the Highland Outposts in the Butcherblock Mountains.", 1180, 1081108)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned the luminescent sphere to Geldrani.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Geldrani appeared satisfied with what I brought him, and he paid me for my work.")

	UpdateQuestDescription(Quest, "I managed to find the sphere Geldrani was looking for.  It was strange, because it didn't have any weight to it, like it was simply a solid ball of warm light.")
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

	PlayFlavor(QuestGiver, "geldrani_a_zhi_tel/_exp03/exp03_rgn_butcherblock/geldrani/qst_geldrani_004.mp3", "", "", 531507699, 1779782633, Player)
	AddConversationOption(conversation, "All right, then.  I will return soon.", "dlg_25_4")
	StartConversation(conversation, QuestGiver, Player, "Excellent, then.  As I said, the mystics are the ones that carry the charms, so you will want to seek them out in favor of the rest of their pack.  Bring the orb you recover back to me.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end