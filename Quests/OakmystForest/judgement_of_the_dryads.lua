--[[
	Script Name	: Quests/Oakmyst/judgement_of_the_dryads.lua
	Script Purpose	: Handles the quest, "Judgement of the Dryads"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	
	Zone       : Oakmyst Forest
	Quest Giver: Scholar Neola
	Preceded by: Feed the Sapling (feed_the_sapling.lua)
	Followed by: Destroy the Corruption (destroy_the_corruption.lua)
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay five Sunshimmer Sprites.", 5, 100, "I must hunt down and slay five Sunshimmer Sprites in Oakmyst Forest.", 611, 1950034, 1950036, 1950054, 1950031)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KillSprites")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia002.mp3", "", "", 2678200574, 3115032598, Player)
	AddConversationOption(conversation, "I shall do my best to lower their numbers.")
	StartConversation(conversation, QuestGiver, Player, "They're corrupted fayfolke--bright with beauty but twisted and corrupted to the core. They're called the sunshimmer sprites.  You must destroy them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KillSprites(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain five Sunshimmer Sprites.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain five Sunshimmer Sprites in Oakmyst Forest.")

	AddQuestStepChat(Quest, 2, "Speak to Judge Eunomia.", 1, "I must speak to Judge Eunomia in Oakmyst Forest.", 0, 1950049) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to Judge Eunomia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke to Judge Eunomia in Oakmyst Forest.")
	
	UpdateQuestDescription(Quest, "I have served Judge Eunomia and the dryads of Oakmyst by lowering the population of the Sunshimmer Sprites, a corrupted form of fairies that began to infest the forest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KillSprites(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end