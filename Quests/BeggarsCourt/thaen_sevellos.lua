--[[
	Script Name	: Quests/BeggarsCourt/thaen_sevellos.lua
	Script Purpose	: Handles the quest, "Thaen Sevellos"
	Script Author	: Scatman (updated by Cynnar 2018.06.14 11:06:19)
	Script Date	: 2009.04.07
	
	Zone       : Beggar's Court
	Quest Giver: Thavian Destrus
	Preceded by: Reel Him In (reel_him_in.lua)
	Followed by: One Last Request (one_last_request.lua)
--]]

local DELCAIRN_SEBASTIAN = 1370038

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to rescue Thaen Sevellos. He is being held in a room in the northwestern end of the northern half of Beggar's Court.", 1, 100, "I need to rescue Thaen Sevellos.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FreedThaen")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn012.mp3", "", "", 2118872421, 1842762930, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "It won't be. Once you free him return to me.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FreedThaen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have rescued Thaen Sevellos.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have rescued Thaen Sevellos.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Delcairn Sebastian. He is upstairs in the western half of the northern half of Beggar's Court.", 1, "I need to return to Delcairn.", 0, DELCAIRN_SEBASTIAN)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have freed Thaen Sevellos.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FreedThaen(Quest, QuestGiver, Player)
	end
end

function Deleted(Quest, QuestGiver, Player)
end
