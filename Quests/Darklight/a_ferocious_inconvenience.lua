--[[
	Script Name	: Quests/Darklight/a_ferocious_inconvenience.lua
	Script Purpose	: Handles the quest, "A Ferocious Invconvenience"
	Script Author	: Scatman
	Script Date	: 2009.02.01
	
	Zone       : Darklight Wood
	Quest Giver: Jhana Do'Zyth
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	-- Legplates of Ability
	-- Verdurous Belt


	AddQuestStepKill(Quest, 1, "I need to kill the ferocious wolf in western Hate's Envy.", 1, 100, ".", 611, 340094)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedWolf")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/hates_envy/jhana/jhana004.mp3", "", "", 3733651177, 3084298647, Player)
	AddConversationOption(conversation, "All right, I will return once it is slain.", "dlg_3_4")
	StartConversation(conversation, QuestGiver, Player, "Tucked away in the western end of Hate's Envy. INSIDE these useless walls. Once it's slain let me know.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedWolf(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the ferocious wolf.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the ferocious wolf.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Jhana.", 1, ".", 0, 340071)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToJhana")
end

function step2_complete_talkedToJhana(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Jhana cannot pay me and suggests instead that I speak with her mother, Sselnyl.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Jhana cannot pay me and suggests instead that I speak with her mother, Sselnyl.")
	
	AddQuestStepChat(Quest, 3, "I need to get my reward from Jhana's mother.", 1, ".", 0, 340087)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain the wolf for Jhana. Her mother paid me for my services.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedWolf(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToJhana(Quest, QuestGiver, Player)
	end
end
