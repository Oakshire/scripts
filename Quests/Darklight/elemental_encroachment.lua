--[[
	Script Name	: Quests/Darklight/elemental_encroachment.lua
	Script Purpose	: Handles the quest, "Elemental Encroachment"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Verex N'Za
	Preceded by: None
	Followed by: Prowler Annoyance (prowler_annoyance.lua)
--]]


function Init(Quest)
	
	-- Focused Prayer Band
	-- Sullied Marsh Bracers
	-- Soiled Thexian Sleeves 
	-- Bracelet of the Bold


	AddQuestStepKill(Quest, 1, "I need to destroy six Sablevein crumblers.", 6, 100, ".", 611, 340041)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedCrumblers")


end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex002.mp3", "", "", 2793599050, 2740987353, Player)
			AddConversationOption(conversation, "All right.")
			StartConversation(conversation, QuestGiver, Player, "Good. Return to me once you're done.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedCrumblers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the Sablevein crumblers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the Sablevein crumblers.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Verex N'Za.", 1, ".", 0, 340043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end


function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the elementals for Verex N'Za.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedCrumblers(Quest, QuestGiver, Player)
	end
end
