--[[
	Script Name	: Quests/WillowWood/offering_help.lua
	Script Purpose	: Handles the quest, "Offering Help"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Willow Wood
	Quest Giver: Aelis
	Preceded by: None
	Followed by: Tribute Leaves (tribute_leaves.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Davyn Thornbranch just inside the tunnel from the docks.", 1, "I need to go into the Willow Wood and find Davyn Thornbranch. Once I find him, I must offer to help him.", 0, 2370033)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_TalkedToDavyn")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
			
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis_intro004.mp3", "", "", 3255317830, 86303468, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Follow this tunnel into the Willow Wood. I am confident Davyn is just inside.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_TalkedToDavyn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Davyn Thornbranch.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Aelis on the docks for further instruction about creating Davyn's Tier'Dal tribute.", 1, "I need to go into the Willow Wood and find Davyn Thornbranch. Once I find him, I must offer to help him.", 0, 2370038) 
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Aelis.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have offered to help Davyn Thornbranch make his Feir'Dal tribute.")
	
	UpdateQuestDescription(Quest, "I have spoken with Davyn and agreed to help him create his tribute. Aelis will guide me through the process.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_TalkedToDavyn(Quest, QuestGiver, Player)
	end
end