--[[
	Script Name	: Quests/Darklight/picking_up_slack.lua
	Script Purpose	: Handles the quest, "Picking up Slack"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ginwyss D'Arkenett
	Preceded by: Rotting Scum (rotting_scum.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Brass Braced Leggings
	-- Calcified Breastplate
	-- Smudged Brigandine Shirt
	-- Leaf Crusher Gloves
	-- Alluvial Breastplate


	AddQuestStepKill(Quest, 1, "I need to kill eight wellspring cubs.", 8, 100, ".", 611, 340099, 340097)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killCubs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss012.mp3", "", "", 264010058, 2837526220, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Return to me once you've finished.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killCubs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the cubs.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Ginwyss.", 1, ".", 0, 340110)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the cubs for Ginwynn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killCubs(Quest, QuestGiver, Player)
	end
end
