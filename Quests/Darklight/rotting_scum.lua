--[[
	Script Name	: Quests/Darklight/rotting_scum.lua
	Script Purpose	: Handles the quest, "Rotting Scum"
	Script Author	: Scatman
	Script Date	: 2009.02.02
	
	Zone       : Darklight Wood
	Quest Giver: Ginwyss D'Arkenett
	Preceded by: None
	Followed by: Picking up Slack (picking_up_slack.lua)
--]]


function Init(Quest)
	-- Hammered Steel Necklace
	-- Mineralized Guards
	-- Fallen Corpse Jerkin
	-- Pitted Waraxe
	-- Fire Hardened Pike


	AddQuestStepKill(Quest, 1, "I need to kill seven fallen rangers.", 7, 100, "Ginwyss D'Arkenett wants the zombies southwest of T'Vatar Post slain.", 611, 340096)
	AddQuestStepKill(Quest, 2, "I need to kill seven stout cadavers.", 7, 100, "Ginwyss D'Arkenett wants the zombies southwest of T'Vatar Post slain.", 611, 340098)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedRangers")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedCadavers")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss/ginwyss006.mp3", "", "", 931914154, 1041693399, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Return to me after you've 'killed' them.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedRangers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the fallen rangers.")

	if QuestIsComplete(Player, 88) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function step2_complete_killedCadavers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain the stout cadavers.")

	if QuestIsComplete(Player, 88) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the zombies.")

	AddQuestStepChat(Quest, 3, "I must speak with Ginwyss D'Arkenette.", 1, "I have slain the zombies and should return to Ginwyss D'Arkenette.", 0, 340110)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the zombies for Ginwyss D'Arkenette.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedRangers(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedCadavers(Quest, QuestGiver, Player)
	end
end
