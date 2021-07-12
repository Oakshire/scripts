--[[
    Script Name    : Quests/FallenGate/ye_olde_onetime_pick.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 07:07:39
    Script Purpose : 

        Zone       : FallenGate
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should find the broken pick spike on the corporeal undead in Fallen Gate.", 1, 100, "I need to find the missing haft to the pick head.  If it is to be found it is likely to be on one of the remaining unliving denizens of Fallen Gate where I first found the remains of the hammer head.", 1021, 1190130, 1190096, 1190064, 1190048, 1190009, 1190010, 1190013, 1190066, 1190077, 1190100, 1190033, 1190012, 1190040, 1190042, 1190054, 1190055, 1190111, 1190099, 1190016, 1190032, 1190046, 1190047, 1190056, 1190087, 1190014, 1190015, 1190027, 1190028, 1190031, 1190114, 1190074, 1190085, 1190086, 1190088, 1190089, 1190043, 1190006, 1190063, 1190007, 1190081, 1190098, 1190065, 1190083, 1190006, 1190063, 1190043, 1190007, 1190067)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the broken pick spike.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the pick piece stuck deeply within the remains of one of the undead here in Fallen Gate.")

	AddQuestStepKill(Quest, 2, "I should find the ore used in the construction of the original weapon within Fallen Gate.", 4, 10, "The pick spike and hammered head need to be melded together once again.  I should see if I can find some of the strange metal used in its construction to reattach the spike.", 1122, 1190130, 1190096, 1190064, 1190048, 1190009, 1190010, 1190013, 1190066, 1190077, 1190100, 1190033, 1190012, 1190040, 1190042, 1190054, 1190055, 1190111, 1190099, 1190016, 1190032, 1190046, 1190047, 1190056, 1190087, 1190014, 1190015, 1190027, 1190028, 1190031, 1190114, 1190074, 1190085, 1190086, 1190088, 1190089, 1190043, 1190006, 1190063, 1190007, 1190081, 1190098, 1190065, 1190083, 1190006, 1190063, 1190043, 1190007, 1190067)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the ore used in the construction of the original weapon.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found what appears to be some of the ore used in the original forging of the weapon.")

	AddQuestStepKill(Quest, 3, "I should find the original shaft or a replacement for this pick within Fallen Gate.", 1, 100, "It seems as if all that remains is to find the original haft or to find a suitable replacement for the weapon.", 663, 1190130, 1190096, 1190064, 1190048, 1190009, 1190010, 1190013, 1190066, 1190077, 1190100, 1190033, 1190012, 1190040, 1190042, 1190054, 1190055, 1190111, 1190099, 1190016, 1190032, 1190046, 1190047, 1190056, 1190087, 1190014, 1190015, 1190027, 1190028, 1190031, 1190114, 1190074, 1190085, 1190086, 1190088, 1190089, 1190043, 1190006, 1190063, 1190007, 1190081, 1190098, 1190065, 1190083, 1190006, 1190063, 1190043, 1190007, 1190067)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found the original shaft for Skullcrusher.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found the original haft for the weapon.")
    if HasItem(Player,  1284) then
    RemoveItem(Player, 1284)
    end
	UpdateQuestDescription(Quest, "I have found replacements for the pick and reassembled the weapon which was once known as Skullcrusher.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

