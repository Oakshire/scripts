--[[
	Script Name	: Quests/Darklight/prowler_annoyance.lua
	Script Purpose	: Handles the quest, "Prowler Annoyance"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Verex N'Za
	Preceded by: Elemental Encroachment (elemental_encroachment.lua)
	Followed by: The First Step (the_first_step.lua)
--]]


function Init(Quest)
	


	AddQuestStepKill(Quest, 1, "I need to kill six dusk prowlers.", 6, 100, ".", 611, 340048, 340049)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedProwlers")


end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex006.mp3", "", "", 1353181644, 668433489, Player)
			AddConversationOption(conversation, "All right.")
			StartConversation(conversation, QuestGiver, Player, "Good to hear. Return to me once you've finished.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedProwlers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the dusk prowlers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the dusk prowlers.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Verex N'Za.", 1, ".", 0, 340043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the dusk prowlers as Verex N'Za requested.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedProwlers(Quest, QuestGiver, Player)
	end
end
