--[[
	Script Name	: Quests/TimorousDeep/a_reverse_supply_run.lua
	Script Purpose	: Handles the quest, "A Reverse Supply Run"
	Script Author	: Scatman
	Script Date	: 2009.03.10
	
	Zone       : Timorous Deep
	Quest Giver: Tanzikla Hir'Ki
	Preceded by: None
	Followed by: Stealing Their Steel (stealing_their_steel.lua)
--]]


function Init(Quest)


	AddQuestStepSpell(Quest, 1, "I need to destroy the Haoaeran supplies.", 5, 100, ".", 611, 5019)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_DestroyedSupplies")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki002.mp3", "", "", 610788422, 391234971, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Return to me when this is done.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_DestroyedSupplies(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the Haoaeran supplies.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Tanzikla Hir'Ki.", 1, ".", 0, 2630611)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	RemoveItem(Spawn, 2931)
	UpdateQuestDescription(Quest, "I've destroyed the Haoaeran caches.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QusetGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_DestroyedSupplies(Quest, QuestGiver, Player)
	end
end
