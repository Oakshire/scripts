--[[
	Script Name	: Quests/Nettleville/to_the_source.lua
	Script Purpose	: Handles the quest, "To The Source"
	Script Author	: Scatman
	Script Date	: 2008.09.27
	
	Zone       : Nettleville
	Quest Giver: Lakosha Maera
	Preceded by: Unfortunate Mistakes (unfortunate_mistakes.lua)
	Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should go speak with Botanist Lith in the Peat Bog.", 1, ".", 0, 1980001) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToBotanist")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			AddConversationOption(conversation, "I shall.")
			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera025a.mp3", "", "", 3263220772, 3077282581, Player)
			StartConversation(conversation, QuestGiver, Player, "I do not know if he was looking for something like this especially, but I am sure the news will interest him. Please, seek him out.")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_talkedToBotanist(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have spoken with Botanist Lith.")
	GiveQuestReward(Quest, Spawn)
end
