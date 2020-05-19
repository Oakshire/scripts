--[[
	Script Name	: Quests/TheSprawl/show_em_whos_boss.lua
	Script Purpose	: Handles the quest, "Show 'Em Who's Boss"
	Script Author	: Scatman
	Script Date	    : 2009.07.26
	
	Zone       : The Sprawl
	Quest Giver: Trainer Durbok
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	local choice = math.random(1, 6)
	if choice == 1 then
		AddQuestStepKill(Quest, 1, "I should deliver a beating to six Dervish crooks.", 6, 100, "I need to defeat some rival gang members to show them the Dreadnaughts cannot be trifled with.", 611, ID)
		AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledCrooks")
	elseif choice == 2 then
		AddQuestStepKill(Quest, 1, "I should deliver a beating to six Dervish hoodlums.", 6, 100, "I need to defeat some rival gang members to show them the Dreadnaughts cannot be trifled with.", 611, ID)
		AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledHoodlums")
	elseif choice == 3 then
		AddQuestStepKill(Quest, 1, "I should deliver a beating to six Black Magi anarchists.", 6, 100, "I need to defeat some rival gang members to show them the Dreadnaughts cannot be trifled with.", 611, ID)
		AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledAnarchists")
	elseif choice == 4 then
		AddQuestStepKill(Quest, 1, "I should deliver a beating to six Black Magi fanatics.", 6, 100, "I need to defeat some rival gang members to show them the Dreadnaughts cannot be trifled with.", 611, ID)
		AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledFanatics")
	elseif choice == 5 then
		AddQuestStepKill(Quest, 1, "I should deliver a beating to six Black Magi dissidents.", 6, 100, "I need to defeat some rival gang members to show them the Dreadnaughts cannot be trifled with.", 611, ID)
		AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledDissidents")
	elseif choice == 6 then
		AddQuestStepKill(Quest, 1, "I should deliver a beating to six Black Magi insurgents.", 6, 100, "I need to defeat some rival gang members to show them the Dreadnaughts cannot be trifled with.", 611, ID)
		AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledInsurgents")
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok008.mp3", "", "", 2693497223, 3993753671, Player)
	AddConversationOption(conversation, "Will do.")
	StartConversation(conversation, QuestGiver, Player, "Sounds good. I'll jot down the particulars in your journal. Come back to me for payment when you're finished showing those scum who's boss.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledCrooks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated six Dervish crooks.")
	Step1_Complete_NextStep(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledHoodlums(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated six Dervish hoodlums.")
	Step1_Complete_NextStep(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledAnarchists(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated six Black Magi anarchists.")
	Step1_Complete_NextStep(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledFanatics(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated six Black Magi fanatics.")
	Step1_Complete_NextStep(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledDissidents(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated six Black Magi dissidents.")
	Step1_Complete_NextStep(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledInsurgents(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated six Black Magi insurgents.")
	Step1_Complete_NextStep(Quest, QuestGiver, Player)
end

function Step1_Complete_NextStep(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I taught the Dreadnaughts' rivals a valuable lesson in pain.")
	
	AddQuestStepChat(Quest, 2, "I should return to Trainer Durbok near the Giantslayers for my reward.", 1, "Having taught those thugs a lesson, I should return to Trainer Durbok.", 0, 1260027)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have received my reward from Trainer Durbok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I let Trainer Durbok know my efforts were a success.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I have defeated the enemies of the Dreadnaughts and taught those rival gangs a lesson. The Sprawl should be a bit more orderly thanks to my efforts.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		local choice = math.random(1, 6)
		if choice == 1 then
			Step1_Complete_KilledCrooks(Quest, QuestGiver, Player)
		elseif choice == 2 then
			Step1_Complete_KilledHoodlums(Quest, QuestGiver, Player)
		elseif choice == 3 then
			Step1_Complete_KilledAnarchists(Quest, QuestGiver, Player)
		elseif choice == 4 then
			Step1_Complete_KilledFanatics(Quest, QuestGiver, Player)
		elseif choice == 5 then
			Step1_Complete_KilledDissidents(Quest, QuestGiver, Player)
		elseif choice == 6 then
			Step1_Complete_KilledInsurgents(Quest, QuestGiver, Player)
		end
	end
end