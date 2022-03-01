--[[
	Script Name	: Quests/Ruins/Prophet and Loss
	Script Purpose	: Handles the quest, "prophet_and_loss.lua"
	Script Author	: Scatman
	Script Date	    : 2009.08.02
	
	Zone       : The Ruins
	Quest Giver: Lieutenant Argosian
	Preceded by: Pounding the Enemy (pounding_the_enemy.lua)
	Followed by: Requesting Further Orders (requesting_further_orders.lua)
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I must find and examine an old shrine guarded by Brokentusk prophets.", 20, "I should search for an old shrine guarded by prophets past the Brokentusks north of the docks. Then I should eliminate the orcs guarding it.", 1215, -67, 0, 65)
	AddQuestStepKill(Quest, 2, "I must defeat four Brokentusk warriors guarding the shrine.", 4, 100, "I should search for an old shrine guarded by prophets past the Brokentusks north of the docks. Then I should eliminate the orcs guarding it.", 2489, 1270037, 1270056)
	AddQuestStepKill(Quest, 3, "I must defeat four prophets around the shrine to see if they draw power from it.", 4, 100, "I should search for an old shrine guarded by prophets past the Brokentusks north of the docks. Then I should eliminate the orcs guarding it.", 2489, 1270053, 1270047)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_ExaminedShrine")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledWarriors")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledProphets")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_argosian/fprt_adv04_ruins/revamp/lieutenant_argosian022b.mp3", "", "", 3696168160, 1150705872, Player)
	AddConversationOption(conversation, "Yes, sir.")
	StartConversation(conversation, QuestGiver, Player, "Go now, and report back when your duty is done.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_ExaminedShrine(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the old shrine, which seems to be a relic of Shoreside.")
	
	if QuestIsComplete(Player, 264) then
		KilledAllOrcs(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledWarriors(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defeated four Brokentusk warriors guarding the old shrine.")
	
	if QuestIsComplete(Player, 264) then
		KilledAllOrcs(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledProphets(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have defeated four Brokentusk prophets, but they don't seem to gain any strength from this shrine.")
	
	if QuestIsComplete(Player, 264) then
		KilledAllOrcs(Quest, QuestGiver, Player)
	end
end

function KilledAllOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the shrine and defeated the orcs guarding it.")
	
	AddQuestStepChat(Quest, 4, "I must report back to Lieutenant Argosian with news on the shrine.", 1, "I should report back to the lieutenant.", 0, 1270031)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have informed the lieutenant that I found the shrine.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to the lieutenant.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the remains of an old shrine in the Ruins, but it does not seem to be giving any divine strength to the orcs. In fact, it seems to be a remnant of the lost community of Shoreside, which is what this area used to be called. I have reported back to Lieutenant Argosian of the Freeport Militia and told him what I found.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_ExaminedShrine(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledWarriors(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledProphets(Quest, QuestGiver, Player)
	end
end