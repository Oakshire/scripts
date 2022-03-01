--[[
	Script Name	: Quests/Darklight/smoking_the_competition.lua
	Script Purpose	: Handles the quest, "Smoking the Competition"
	Script Author	: Scatman
	Script Date	: 2009.02.04
	
	Zone       : Darklight Wood
	Quest Giver: Dirzdia T'Zauvirr
	Preceded by: None
	Followed by: Reaping the Benefits of a Monopoly (reaping_the_benefits_of_a_monopoly.lua)
--]]


function Init(Quest)
	-- Cross Stitch Britches
	-- Barkbiter

	-- JA: Why are there two of the same items in a selection? 
	-- Add QuestSelectableRewardItem(Quest, 3, 1) -- had to breakup function name for auto-updates script


	AddQuestStepKill(Quest, 1, "I need to kill the razormaw that swim in the Searing Tendril and bring them back to Dirzdia.", 8, 100, ".", 139, 340137)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedRazormaws")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/dirzdia_t_zauvirr/darklight_wood/tvatar_post/dirzdia/dirzdia006.mp3", "", "", 1689993769, 508680301, Player)
	AddConversationOption(conversation, "I'll be back when I've killed them.")
	StartConversation(conversation, QuestGiver, Player, "Great! I appreciate it!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedRazormaws(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the razormaw.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the razormaw flesh back to Dirzdia.", 1, ".", 0, 340139)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought Dirzdia the razormaw flesh she wanted.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedRazormaws(Quest, QuestGiver, Player)
	end
end
