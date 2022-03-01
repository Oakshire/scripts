--[[
	Script Name	: Quests/Darklight/the_first_step.lua
	Script Purpose	: Handles the quest, "The First Step"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Verex N'Za
	Preceded by: Prowler Annoyance (prowler_annoyance.lua)
	Followed by: Reclaiming the Sablevein Tear (reclaiming_the_sablevein_tear.lua)
--]]


function Init(Quest)
	
	-- Shadowed Glen Blade
	-- Blade of the Outcast
	-- Smoldering Scepter


	AddQuestStepKill(Quest, 1, "I need to destroy six Sablevein pulverizers.", 6, 100, ".", 611, 340058)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedPulverizers")


end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex010.mp3", "", "", 1616419105, 2681650739, Player)
			AddConversationOption(conversation, "On my way.")
			StartConversation(conversation, QuestGiver, Player, "All right. Get to work, then.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedPulverizers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the Sablevein pulverizers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the Sablevein pulverizers.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Verex N'Za.", 1, ".", 0, 340043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have destroyed the Sablevein pulverizers and am ready to move further into the cave.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedPulverizers(Quest, QuestGiver, Player)
	end
end
