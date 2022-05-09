--[[
    Script Name    : Quests/TheElddarGrove/arrows_for_fanthis.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.08 07:05:27
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Pathfinder Fanthis
        Preceded by: None
        Followed by: Nightbow's Deposit
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I'm picking up arrows from Master Archer Nightbow.", 1, "I must pick up Fanthis' arrows from Master Archer Nightbow in the Elddar Grove.", 11, 2070011)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/patrolman_fanthis/qey_elddar/patrolmanfanthis001.mp3", "", "agree", 1998841979, 1465122374, Player)
	AddConversationOption(conversation, "I'll return with your arrows shortly.")
	StartConversation(conversation, QuestGiver, Player, "I ordered two dozen arrows.  Let armsdealer Nightbow you're picking them up for me, and bring them to me immediately.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've picked up the arrows from Master Archer Nightbow.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've retrieved the arrows Fanthis requested from Master Archer Nightbow.")
	AddQuestStepChat(Quest, 2, "I need to deliver these arrows to Pathfinder Fanthis.", 1, "I need to deliver these arrows to Pathfinder Fanthis in the Elddar Grove.", 403, 2070080)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've delivered the arrows to Fanthis.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the arrows to Fanthis from Master Archer Nightbow.")

	UpdateQuestDescription(Quest, "I restocked Patrolman Fanthis' supply of arrows with the assistance of the local bowyer, Aysabelle Nightbow.  To see such a display of courtesy between shop keeper and customer is wonderful in these times.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	
	end
end


