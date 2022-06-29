--[[
	Script Name	: Quests/StarcrestCommune/meeting_with_cayan.lua
	Script Purpose	: Handles the quest, "Meeting with Cayan"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Maareona Ludimintium
	Preceded by: None
	Followed by: Information Merchants (information_merchants.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Cayan Sable, he is in a hiding spot that can be reached by climbing the bench behind the northwestern corner of the armor shop.", 1, "I need to find Cayan Sable and get some needed information from him.", 0, 2340017)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToCayan")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
          	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona015.mp3", "", "nod", 1504116798, 1802645516, Player)
			AddConversationOption(conversation, "I will return once I get the information.")
			StartConversation(conversation, QuestGiver, Player, "He will ask a favor of you. He doesn't accept payment in a traditional sense, but he will ask something of you. The more friends he has, and the more people for whom he does favors, who who do favors for him, the more information he can provide. So, please, indulge him.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_talkedToCayan(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Cayan Sable.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Cayan Sable.") 

	-- Red Sun Berries
	AddQuestStepHarvest(Quest, 2,  "In exchange for his help Cayan Sable requires I help him by collecting Red Sun Berries from the bushes that grow around Starcrest Commune.", 10, 100,  "I need to find Cayan Sable and get some needed information from him.", 788, 11348)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_obtainedBerries")
end

function step2_complete_obtainedBerries(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the Red Sun Berries.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have collected the Red Sun Berries.")

	AddQuestStepChat(Quest, 3, "I must return to Cayan Sable, I can use the bench behind the northwest corner of the armor shop to get to him.", 1, "I need to find Cayan Sable and get some needed information from him.", 0, 2340017)
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToCayan")
end

function step3_complete_talkedToCayan(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have done a task for Cayan in exchange for certain information. According to him I will get this information from a merchant in Starcrest Commune.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToCayan(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_obtainedBerries(Quest, QuestGiver, Player)
		elseif Step == 3 then
		step3_complete_talkedToCayan(Quest, QuestGiver, Player)
	end
end
