--[[
	Script Name		:	Quests/Darklight/SearchingforSigils.lua
	Script Purpose	:	Handles the quest, "Searching for Sigils"
	Script Author	:	Cynnar
	Script Date		:	7/8/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Pellandra D'Xatyl
	Preceded by		:	Sealing the Rift (SealingtheRift.lua)
	Followed by		:	Reclaiming the Sablevein Tear (ReclaimingtheSableveinTear.lua)
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Collect sigil stones from the Sablevein pulverizers", 4, 100, "I must hunt Sablevein pulverizers found outside Sablevein Tear and collect sigil stones from their remains.", 373, 11837)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I collected several sigil stones from the Sablevein pulverizers")

	AddQuestStepChat(Quest, 2, "Return to Pellandra D'Xatyl.", 1, "I must hunt Sablevein pulverizers found outside Sablevein Tear and collect sigil stones from their remains.", 11, 340038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I collected a good number of sigil stones from the remains of the Sablevein pulverizers and brought them to Pellandra.")
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

	PlayFlavor(QuestGiver, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra011.mp3", "", "", 2108547619, 2126682615, Player)
	AddConversationOption(conversation, "I'll return shortly.")
	StartConversation(conversation, QuestGiver, Player, "The face of our enemy will soon be revealed " .. GetName(Player) .. ". Help us lift the veil so we may face them openly!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end