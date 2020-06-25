--[[
	Script Name	: Quests/TimorousDeep/delivery_to_a_veteran.lua
	Script Purpose	: Handles the quest, "Delivery to a Veteran"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Taroche Dry'Zok
	Preceded by: Stuffed Gorger Claws (stuffed_gorger_claws.lua)
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I need to deliver this bait to Citizen Niba'Ouz, fishing just to the east.", 1, ".", 78, 2630024)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/taroche_dry_zok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dryzok/dryzok004.mp3", "", "", 3720573202, 68445257, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thank you. I appreciate it, and I am certain he will as well.")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have delivered the special bait to Citizen Niba'Ouz.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
