--[[
	Script Name	: Quests/BeggarsCourt/a_delivery.lua
	Script Purpose	: Handles the quest, "A Delivery"
	Script Author	: Scatman (updated by Cynnar 2018.06.14 06:06:04)
	Script Date	: 2009.04.05
	
	Zone       : Beggar's Court
	Quest Giver: Thavian Destrus
	Preceded by: None
	Followed by: Dirty Work (dirty_work.lua)
--]]

local LIEUTENANT_CERVAEN = 1370037
local DELCAIRN_SEBASTIAN = 1370038

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver this report to Lieutenant Cervaen in the upstairs room in the western end of the northern half of Beggar's Court.", 1, "I need to deliver Thavian's note to Lieutenant Cervaen.", 75, LIEUTENANT_CERVAEN)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToCervaen")
end


function Step1_Complete_SpokeToCervaen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have delivered the note to Lieutenant Cervaen.")
	
	AddQuestStepChat(Quest, 2, "I need to speak with Delcairn Sebastian.", 1, ".", 0, DELCAIRN_SEBASTIAN)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have delivered Thavian's letter. After speaking with Lieutenant Cervaen and Delcairn Sebastian they have offered me more work.")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/thavian_destrus/fprt_hood04/quests/thavian/thavian014.mp3", "", "", 746734341, 3406058828, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good. The Brotherhood Awaits.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToCervaen(Quest, QuestGiver, Player)
	end
end
