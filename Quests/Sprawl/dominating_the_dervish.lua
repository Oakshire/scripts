--[[
	Script Name	: Quests/TheSprawl/dominating_the_dervish.lua
	Script Purpose	: Handles the quest, "Dominating the Dervish"
	Script Author	: Scatman
	Script Date	    : 2009.07.26
	
	Zone       : The Sprawl
	Quest Giver: Enforcer Kurdek
	Preceded by: Investigating the Black Magi (investigating_the_black_magi.lua)
	Followed by: Heading into the Ruins (heading_into_the_ruins.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to deliver a beating to four Dervish hooligans.", 4, 100, "I need to defeat some Dervish in battle.", 0, 1260014, 1260008, 1260015, 1260010, 1260011, 1260012, 1260118, 1260021)
	AddQuestStepKill(Quest, 2, "I must defeat four Dervish hoodlums.", 4, 100, "I need to defeat some Dervish in battle.", 0, 1260110, 1260091, 1260067, 1260092, 1260111, 1260073, 1260073, 1260119, 1260103, 1260090, 1260065, 1260066, 1260113)
	AddQuestStepKill(Quest, 3, "I must best two Dervish crooks in battle.", 2, 100, "I need to defeat some Dervish in battle.", 0, 1260098, 1260105, 1260100, 1260096, 1260117, 1260099, 1260089, 1260115, 1260114, 1260102, 1260101, 1260116)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledHooligans")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledHoodlums")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledCrooks")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek039.mp3", "", "", 2511484682, 858916391, Player)
	AddConversationOption(conversation, "I'll do my best.")
	StartConversation(conversation, QuestGiver, Player, "Take out some of the Dervish hooligans, hoodlums, and crooks. You may have to fight your way deeper in to find some of them. Watch your back, because the Dervish don't fight fairly. But then again, neither should you! Return to me when you've taught them a lesson, and I'll reward you handsomely on behalf of the Dreadnaughts.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledHooligans(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have defeated four Dervish hooligans.")

	if QuestIsComplete(Player, 256) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledHoodlums(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have crushed four Dervish hoodlums")

	if QuestIsComplete(Player, 256) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledCrooks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I must best two Dervish crooks in battle.")

	if QuestIsComplete(Player, 256) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taught the Dervish a lesson they won't soon forget")

	AddQuestStepChat(Quest, 4, "I should proclaim my victory to Enforcer Kurdek.", 1, "I should return to Enforcer Kurdek and tell him that I punished the Dervish.", 0, 1260006)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have informed Enforcer Kurdek of my success.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I defeated a lot of Dervish, but they seem to have established a strong foothold here in the Sprawl. Hopefully my efforts will help the Dreadnaughts maintain control and keep them out of Freeport proper.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_KilledHooligans(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledHoodlums(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledCrooks(Quest, QuestGiver, Player)
	end
end