--[[
	Script Name	: Quests/Darklight/thexian_taint.lua
	Script Purpose	: Handles the quest, "Thexian Taint"
	Script Author	: Scatman
	Script Date	: 2009.02.01
	
	Zone       : Darklight Wood
	Quest Giver: Sselnyl Do'Zyth
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to kill seven untamed spirits.", 7, 100, "Sselnyl Do'Zyth wants me to kill the spirits near the Wellspring of Nightmares and the Thexian responsible.", 611, 340062, 340061)
	AddQuestStep(Quest, 2, "I need to kill the Thexian responsible for rousing the spirits at the Wellspring of Nightmares.", 1, 100, "Sselnyl Do'Zyth wants me to kill the spirits near the Wellspring of Nightmares and the Thexian responsible.", 611)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedSpirits")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedThexian")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl/sselnyl008.mp3", "", "", 2647473511, 1776002890, Player)
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, QuestGiver, Player, "And you, " .. GetName(Player) .. ".")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedSpirits(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the spirits.")

	if QuestIsComplete(Player, 87) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step2_complete_killedThexian(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the head of the Thexian responsible.")

	if QuestIsComplete(Player, 87) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected slain the Thexian responsible for rousing the untamed spirits.")

	AddQuestStepChat(Quest, 3, "I need to bring Ginryne X'Treval's head to Ginwyss D'Arkenette at T'Vatar Post.", 1, "I need to bring the head to Ginwyss D'Arkenette.", 0, 340110)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I took out the Thexian responsible for the untammed spirits and brought his head to Ginwyss D'Arkenette.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedSpirits(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedThexian(Quest, QuestGiver, Player)
	end
end
