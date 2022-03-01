--[[
	Script Name	: Quests/StarcrestCommune/information_merchants.lua
	Script Purpose	: Handles the quest, "Information Merchants"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Maareona Ludimintium
	Preceded by: Meeting with Cayan (meeting_with_cayan.lua)
	Followed by: Hidden Treasures (hidden_treasures.lua)
--]]

function Init(Quest)
	-- worthless bronze statuette
	AddQuestStepObtainItem(Quest, 1,  "I need to purchase a bronze statuette from Merchant Zinun Loospankina just northwest of the entrance to the Peat Bog.", 1, 100,  "I need to get Maareona's information from Zinun Loospakina in Starcrest Commune.", 1059,  15571)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_obtainedStatue")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/cayan_sable/qey_village02/quests/cayan_sable/cayan_sable013a.mp3", "", "bow", 2406319678, 1434130925, Player)
			AddConversationOption(conversation, "Thank you.")
			StartConversation(conversation, QuestGiver, Player, "You don't need to return once you've acquired it. It was a pleasure.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_obtainedStatue(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have purchased the bronze statuette.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have purchased the bronze statuette.") 
	
	AddQuestStep(Quest, 2, "I need to inspect the bronze statuette and discover where the information is hidden.", 1, 100, "I need to get Maareona's information from Zinun Loospakina in Starcrest Commune.")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_inspectedStatuette")
end

function step2_complete_inspectedStatuette(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the hidden message.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found the hidden message.") 
	
	AddQuestStepChat(Quest, 3, "I need to deliver the message to Maareona in the south eastern area of Starcrest Commune.", 1, "I need to get Maareona's information from Zinun Loospakina in Starcrest Commune.", 0, 2340006)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have given Maareona the information she needed.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToCayan(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_inspectedStatuette(Quest, QuestGiver, Player)
	end
end