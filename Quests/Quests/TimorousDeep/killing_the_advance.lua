--[[
	Script Name	: Quests/TimorousDeep/killing_the_advance.lua
	Script Purpose	: Handles the quest, "Killing the Advance"
	Script Author	: Scatman
	Script Date	: 2009.03.10
	
	Zone       : Timorous Deep
	Quest Giver: Tertiary Dih'Ha
	Preceded by: None
	Followed by: Reinforcements of a Sort (reinforcements_of_a_sort.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to kill some Haoaeran advancers.", 7, 100, "", 611, 2630124)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledAdvancers")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tertiary_dih_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/dihha/dihha003.mp3", "", "", 187701860, 3892292625, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "You had better. Return to me when it's done.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledAdvancers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Haoaeran advancers.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Tertiary Dih'Ha.", 1, "", 0, 2630108)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	RemoveItem(Spawn, 2931)
	UpdateQuestDescription(Quest, "I have slain the Haoaeran advancers and returned to Tertiary Dih'Ha.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QusetGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledAdvancers(Quest, QuestGiver, Player)
	end
end
