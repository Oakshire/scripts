--[[
	Script Name	: Quests/Oakmyst/natural_causes.lua
	Script Purpose	: Handles the quest, "Natural Causes?"
	Script Author	: Scatman
	Script Date	: 2009.05.03
	modified by : Ememjr
	modified date: 2017.04.21

	Zone       : Oakmyst Forest
	Quest Giver: Lieutenant Charlin
	Preceded by: None
	Followed by: Cause for Investigation (cause_for_investigation.lua)
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect a poison gland from the frogs of Oakmyst Forest, commonly found near The Western Falls.", 1, 25, "Lieutenant Charlin has asked that I collect poison from some of the creatures local to Oakmyst Forest.", 160, 1950020)
	AddQuestStepKill(Quest, 2, "I need to collect a poison sac from the spiders found near The Western Falls.", 1, 25, "Lieutenant Charlin has asked that I collect poison from some of the creatures local to Oakmyst Forest.", 158, 1950014,1950015)
	AddQuestStepKill(Quest, 3, "I need to collect a poison sac from any of the mystail rats in Oakmyst Forest.", 1, 25, "Lieutenant Charlin has asked that I collect poison from some of the creatures local to Oakmyst Forest.", 112, 1950009,1950017,1950010,1950016)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotPoison")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_GotPoison")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_GotPoison")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_charlin/qey_adv01_oakmyst/quests/charlin/charlin005a.mp3", "", "", 3816458075, 1868191399, Player)
	AddConversationOption(conversation, "I will be.")
	StartConversation(conversation, QuestGiver, Player, "Be careful out there.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_GotPoison(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected a frog poison gland.")

	if QuestIsComplete(Player, 207) then
		MultipleStepComplete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_GotPoison(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a poison sac from a spider in Oakmyst Forest.")

	if QuestIsComplete(Player, 207) then
		MultipleStepComplete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_GotPoison(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected a poison sac from a mystail rat in Oakmyst Forest.")

	if QuestIsComplete(Player, 207) then
		MultipleStepComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected some poison for Lieutenant Charlin.")
	AddQuestStepChat(Quest, 4, "I need to speak with Lieutenant Charlin near the gates to Castleview Hamlet.", 1, "I need to return to Lieutenant Charlin and give him the poison that I have collected.", 0, 1950008)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have collected the poisons that Charlin requested. He will send the poisons back to town to have tests run on them.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotPoison(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_GotPoison(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_GotPoison(Quest, QuestGiver, Player)
	end
end
