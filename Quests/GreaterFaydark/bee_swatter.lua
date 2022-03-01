--[[
	Script Name	: Quests/GreaterFaydark/bee_swatter.lua
	Script Purpose	: Handles the quest, "Bee Swatter"
	Script Author	: Scatman
	Script Date	: 2009.03.29
	
	Zone       : Greater Faydark
	Quest Giver: Ami Augren
	Preceded by: None
	Followed by: Broken Buttons (broken_buttons.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to swat a few stingswarm buzzers to try and make Ami stop crying.", 5, 100, "Little Ami is scared of all the stringswarm buzzers that are flying around the area. If I swat a few of them it might make her happy.", 110, 1140020)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledBees")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren003.mp3", "", "", 240117721, 1491988690, Player)
	AddConversationOption(conversation, "I'll take care of them.")
	StartConversation(conversation, QuestGiver, Player, "They make owies!  Don't let them pinch you!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledBees(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I swatted a few of the stingswarm buzzers. Hopefully that will make Ami stop crying.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I swatted a few of the stingswarm buzzers. Hopefully that will make Ami stop crying.")
	
	AddQuestStepChat(Quest, 2, "I should tell Ami I chased away the buzzers.", 1, "I should go back to Ami Augren and tell her I chased away the stingswarm buzzers.", 110, 1140019)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I swatted a few of the bees that were bothering Ami Augren. I hope this calms her down somewhat.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledBees(Quest, QuestGiver, Player)
	end
end
