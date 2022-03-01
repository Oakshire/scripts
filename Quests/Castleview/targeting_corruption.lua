--[[
	Script Name	: Quests/Castleview/targeting_corruption.lua
	Script Purpose	: Handles the quest, "Targeting Corruption"
	Script Author	: Scatman
	Script Date	: 2009.10.02
	
	Zone       : Castleview Hamlet
	Quest Giver: Vindain Greenfaith
	Preceded by: Sowing Beauty (sowing_beauty.lua)
	Followed by: The Commune (the_commune.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Shae'Ahla northeast of the entrance to Qeynos Harbor.", 1, "I need to speak with Shae'Ahla and learn how to cleanse the corrupted Green Wisp plant.", 0, 2360035)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToShae")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain024.mp3", "", "", 4092684103, 86187879, Player)
	AddConversationOption(conversation, "I will do this.")
	StartConversation(conversation, QuestGiver, Player, "I thought you would say yes. Find her, cleanse the plant, and then return to me.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToShae(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Shae'Ahla.")
	
	AddQuestStep(Quest, 2, "I need to attempt to cleanse the corrupted Green Wisp northwest of the scribe's shop.", 1, 100, "I need to speak with Shae'Ahla and learn how to cleanse the corrupted Green Wisp plant.", 0)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_cleansedWisp")
end

function step2_complete_cleansedWisp(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have cleansed the corrupted Green Wisp northwest of the scribe's shop. A sprite attacked me after I did so.")
	
	AddQuestStepChat(Quest, 3, "I need to return to Vindain Greenfaith near The Fountain of Valor.", 1, "I need to speak with Shae'Ahla and learn how to cleanse the corrupted Green Wisp plant.", 0, 2360007)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Vindain Greenfaith.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have healed the Green Wisp.")
	UpdateQuestDescription(Quest, "I have cured the Green Wisp, but was attacked by a sprite when I did so.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToShae(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_cleansedWisp(Quest, QuestGiver, Player)
	end
end