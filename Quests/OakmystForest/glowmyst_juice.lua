--[[
	Script Name	: Quests/Oakmyst/glowmyst_juice.lua
	Script Purpose	: Handles the quest, "Glowmyst Juice"
	Script Author	: Scatman
	Script Date	: 2009.10.08	
	
	Zone       : Oakmyst Forest
	Quest Giver: Toppa Doppster
	Preceded by: None
	Followed by: None
	Modified by: Ememjr
	      Date : 5/7/2020
	     Notes : Updated NPC ID
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need ten glowmyst beetle fluid sacs for Toppa.", 10, 100, "Toppa would like me to collect some glowmyst juice for her friends.", 146, 1950002) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedBeetles")

end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 
	 AddConversationOption(conversation, "You're welcome.")
	 StartConversation(conversation, QuestGiver, Player, "Great! Thank you!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedBeetles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the fluid sacs.")
	
	AddQuestStepChat(Quest, 2, "I need to give these fluid sacs to Toppa", 1, "Toppa would like me to collect some glowmyst juice for her friends.", 146, 1950005) 
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Toppa the glowmyst juice.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the fluid sacs.")

	UpdateQuestDescription(Quest, "I have given Toppa the glowmyst juice she wanted. She was very thankful.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete_killedBeetles(Quest, QuestGiver, Player)
	end
end