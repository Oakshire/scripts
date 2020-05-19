--[[
	Script Name	: Quests/PeatBog/reclaiming_the_bog.lua
	Script Purpose	: Handles the quest, "Reclaiming the Bog"
	Script Author	: Scatman
	Script Date	: 2009.05.10
	
	Zone       : The Peat Bog
	Quest Giver: Lieutenant Dawson
	Preceded by: None
	Followed by: Mysterious Machine (mysterious_machine.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to kill six fungus men.", 6, 100, "Lieutenant Dawson has asked that I kill some ravenous bog slugs and fungus men for her.", 611, 1980078, 1980011, 1980079, 1980033, 1980034)
	AddQuestStepKill(Quest, 2, "I need to kill four ravenous bog slugs.", 4, 100, "Lieutenant Dawson has asked that I kill some ravenous bog slugs and fungus men for her.", 611, 1980089, 1980086)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledFungusMen")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledSlugs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson004a.mp3", "", "", 2845036711, 1744152200, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Once you're done with that return to me.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledFungusMen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain six fungus men.")

	if QuestIsComplete(Player, 215) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledSlugs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed four ravenous bog slugs.")

	if QuestIsComplete(Player, 215) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the ravenous bog slugs and the fungus men.")

	AddQuestStepChat(Quest, 3, "I need to return to Lieutenant Dawson near the gates to Nettleville hovel.", 1, "I need to return to Lieutenant Dawson now that I have completed her task.", 0, 1980022) 
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have completed the small task for Lieutenant Dawson.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledFungusMen(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledSlugs(Quest, QuestGiver, Player)
	end
end
