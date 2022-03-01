--[[
	Script Name		:	FortheDogs.lua
	Script Purpose	:	Handles the quest, "For the Dogs"
	Script Author	:	jakejp
	Script Date		:	6/9/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Talvrae asked me to collect fresh terratrodder meat for her.", 6, 100, "I must gather fresh terratrodder meat for Talvrae.", 288, 1080061, 1081094)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the terratrodder meat, and I should return this to Talvrae T'Zyth.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the terratrodder meat that Talvrae needs.")

	AddQuestStepChat(Quest, 2, "I must return the terratrodder meat to Talvrae.  I can find her at the Highland Outposts.", 1, "I must return the fresh terratrodder meat to Talvrae T'Zyth.", 288, 1081107)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Talvrae the fresh terratrodder meat she asked for.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the fresh terratrodder meat to Talvrae.")

	UpdateQuestDescription(Quest, "I was able to gather enough terratrodder meat for Talvrae T'Zyth.  I can't be sure what her plan is, but it looks like she's getting ready to feed her pets rather than conduct any type of study.")
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

	PlayFlavor(QuestGiver, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_004.mp3", "", "", 1310097835, 2111544733, Player)
	AddConversationOption(conversation, "I'm sure that I can.  I'll gather the meat and return soon.", "dlg_23_6")
	StartConversation(conversation, QuestGiver, Player, "I could not explain the details of exactly what I am doing to the likes of you, for I doubt you would understand it.  The only parts important to you are the task, and the result.  Can you handle that?")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end