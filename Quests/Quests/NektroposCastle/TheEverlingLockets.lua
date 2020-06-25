--[[
    Script Name    : Quests/NektroposCastle/TheEverlingLockets.lua
    Script Author  : smash
    Script Date    : 2016.09.08 03:09:11
    Script Purpose : 

        Zone       : NektroposCastle
        Quest Giver: Alexa
        Preceded by: None
        Followed by: 
--]]

local EVERLING_LOCKETS = 177

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find Elise Everling and gain her locket.", 1, 100, "I need to find Rikantus Everling's six daughters and acquire their lockets.", 20, 1780273)
	AddQuestStepCompleteAction(Quest, 1, "KilledElise")
	
	AddQuestStepKill(Quest, 2, "I need to find Crysta Everling and gain her locket.", 1, 100, "I need to find Rikantus Everling's six daughters and acquire their lockets.", 20, 1780276)
	AddQuestStepCompleteAction(Quest, 2, "KilledCrysta")
	
	AddQuestStepKill(Quest, 3,  "I need to find Melanie Everling and gain her locket.", 1, 100,"I need to find Rikantus Everling's six daughters and acquire their lockets.", 20, 1780275)
	AddQuestStepCompleteAction(Quest, 3, "KilledMelanie")
	
	AddQuestStepKill(Quest, 4, "I need to find Deirdre Everling and gain her locket.", 1, 100, "I need to find Rikantus Everling's six daughters and acquire their lockets.", 20, 1780278)
	AddQuestStepCompleteAction(Quest, 4, "KilledDeirdre")
	
	AddQuestStepKill(Quest, 5, "I need to find Sheila Everling and gain her locket.", 1, 100, "I need to find Rikantus Everling's six daughters and acquire their lockets.", 20, 1780272)
	AddQuestStepCompleteAction(Quest, 5, "KilledSheila")
	
	AddQuestStepKill(Quest, 6, "I need to find Jenni Everling and gain her locket.", 1, 100, "I need to find Rikantus Everling's six daughters and acquire their lockets.", 20, 1780243)
	AddQuestStepCompleteAction(Quest, 6, "KilledJenni")
end

function CheckForStep7(Quest, Player)
	if not QuestIsComplete(Player, EVERLING_LOCKETS) then
		return
	end
	
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found all of the lockets.")
	AddQuestStepKill(Quest, 7, "I need to find a way into the basement.", 1, 100, "I need to find a way into the basement.", 11, 1780268)
	AddQuestStepCompleteAction(Quest, 7, "FoundKey")
end

function KilledElise(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have acquired Elise's Locket.")
	CheckForStep7(Quest, Player)
end

function KilledCrysta(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have acquired Crysta's Locket.")
	CheckForStep7(Quest, Player)
end

function KilledMelanie(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have acquired Melanie's Locket.")
	CheckForStep7(Quest, Player)
end

function KilledDeirdre(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have acquired Deirdre's Locket.")
	CheckForStep7(Quest, Player)
end

function KilledSheila(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have acquired Sheila's Locket.")
	CheckForStep7(Quest, Player)
end

function KilledJenni(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have acquired Jenni's Locket.")
	CheckForStep7(Quest, Player)
end

function FoundKey(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I found a key on a decaying corpse, but I don't know what it is for.")
	AddQuestStepKill(Quest, 8, "I need to figure out what this key goes to.", 1, 100, "I need to figure out what this key goes to.", 11, 1780282)
	AddQuestStepCompleteAction(Quest, 8, "KilledCaptain")
end

function KilledCaptain(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I entered Lord Everling's bedroom and was attacked by the captain of the guard. I found the guard captains sword.")

	AddQuestStepKill(Quest, 9, "I have to find Ollix Everling's pendant.", 1, 100, "I need to find Ollix Everling and take his pendant.", 13, 1780290)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I have Ollix Everling's Pendant.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		KilledElise(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledCrysta(Quest, QuestGiver, Player)
	elseif Step == 3 then
		KilledMelanie(Quest, QuestGiver, Player)
	elseif Step == 4 then
		KilledDeirdre(Quest, QuestGiver, Player)
	elseif Step == 5 then
		KilledSheila(Quest, QuestGiver, Player)
	elseif Step == 6 then
		KilledJenni(Quest, QuestGiver, Player)
	elseif Step == 7 then
		FoundKey(Quest, QuestGiver, Player)
	elseif Step == 8 then
		KilledCaptain(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

