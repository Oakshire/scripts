--[[
	Script Name	: Quests/TimorousDeep/stealing_their_steel.lua
	Script Purpose	: Handles the quest, "Stealing Their Steel"
	Script Author	: Scatman
	Script Date	: 2009.03.10
	
	Zone       : Timorous Deep
	Quest Giver: Tanzikla Hir'Ki
	Preceded by: A Reverse Supply Run (a_reverse_supply_run.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Earthen Loop
	-- Layered Scale Stompers
	-- Woven Trythec Earring


	AddQuestStepKill(Quest, 1, "I need some weapons from the Haoaeran lightfoot attackers.", 5, 100, ".", 287, 2630105)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledAttackers")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tanzikla_hir_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/hirki/hirki005.mp3", "", "", 2732146022, 3045462699, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Though we hope the Haoaerans are not receiving outside help, it would be something of a relief to know that they were -- for them to be capable of making weapons of such quality would be a concern. Be swift, " .. GetName(Player) .. ". We must know what we are up against.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledAttackers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the Haoaeran lightfoot weapons.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Tanzikla Hir'Ki.", 1, ".", 0, 2630611)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	RemoveItem(Spawn, 2931)
	UpdateQuestDescription(Quest, "I have brought the Haoaeran weapons back to Tanzikla Hir'Ki.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QusetGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledAttackers(Quest, QuestGiver, Player)
	end
end
