--[[
    Script Name    : Quests/MultipleZones/to_speak_as_a_dragon.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 05:06:56
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: Sage of Ages
        Preceded by: None
        Followed by: Of Fire and Ice
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Nagafen within his lair deep in Solusek's Eye.", 1, "I need to travel to the very depths of Solusek's Eye and gain audience with Nagafen in order to find out why the Sage of Ages was attacked by his Drakota.", 11, 2460000)
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
	UpdateQuestStepDescription(Quest, 1, "I spoke with Majordomo Inferinus.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was unable to speak with Nagafen because he won't lower himself to speak in a language other than Ancient Draconic.")

	AddQuestStepChat(Quest, 2, "I need to speak to the Sage of Ages in Antonica.", 1, "I need to find the Sage of Ages in the Tower of the Coldwind Oracles near Qeynos and see if he knows anything about the Draconic language.", 11, 120218)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with the Sage of Ages.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with the Sage of Ages at the Tower of the Coldwind Oracles and told him of Nagafen's refusal to speak with me.")

	AddQuestStep(Quest, 3, "I need to collect the translated Vee rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 4, "I need to collect the translated Fen rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 5, "I need to collect the translated Dar rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 6, "I need to collect the translated Aerr rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 7, "I need to collect the translated Vul rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 8, "I need to collect the translated Phar rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 9, "I need to collect the translated Kor rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 10, "I need to collect the translated Sev rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 11, "I need to collect the translated Tal rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 12, "I need to collect the translated Gor rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 13, "I need to collect the translated Shi rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 14, "I need to collect the translated Mir rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 15, "I need to collect the translated Xak rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 16, "I need to collect the translated Gresh rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 17, "I need to collect the translated Draedan rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 18, "I need to collect the translated Trena rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 19, "I need to collect the translated Trana rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 20, "I need to collect the translated Rakta rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 21, "I need to collect the translated Kyth rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 22, "I need to collect the translated Vak rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 23, "I need to collect the translated Sissra rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 24, "I need to collect the translated Sissthra rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 25, "I need to collect the translated Rett rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 26, "I need to collect the translated Voth rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 27, "I need to collect the translated Nak rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStep(Quest, 28, "I need to collect the translated Fyrm rune.", 1, 100, "I need to find research on the translations of all twenty six Draconic runes.  I will search to the ends of known Norrath and beyond to find these!", 374)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
	AddQuestStepCompleteAction(Quest, 16, "Step16Complete")
	AddQuestStepCompleteAction(Quest, 17, "Step17Complete")
	AddQuestStepCompleteAction(Quest, 18, "Step18Complete")
	AddQuestStepCompleteAction(Quest, 19, "Step19Complete")
	AddQuestStepCompleteAction(Quest, 20, "Step20Complete")
	AddQuestStepCompleteAction(Quest, 21, "Step21Complete")
	AddQuestStepCompleteAction(Quest, 22, "Step22Complete")
	AddQuestStepCompleteAction(Quest, 23, "Step23Complete")
	AddQuestStepCompleteAction(Quest, 24, "Step24Complete")
	AddQuestStepCompleteAction(Quest, 25, "Step25Complete")
	AddQuestStepCompleteAction(Quest, 26, "Step26Complete")
	AddQuestStepCompleteAction(Quest, 27, "Step27Complete")
	AddQuestStepCompleteAction(Quest, 28, "Step28Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I collected the Vee rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I collected the Fen rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I collected the Dar rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I collected the Aerr rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I collected the Vul rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I collected the Phar rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I collected the Kor rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I collected the Sev rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I collected the Tal rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I collected the Gor rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I collected the Shi rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "I collected the Mir rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "I collected the Xak rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step16Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 16, "I collected the Gresh rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step17Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 17, "I collected the Draedan rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step18Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 18, "I collected the Trena rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step19Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 19, "I collected the Trana rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step20Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 20, "I collected the Rakta rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step21Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 21, "I collected the Kyth rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step22Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 22, "I collected the Vak rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step23Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 23, "I collected the Sissra rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step24Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 24, "I collected the Sissthra rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step25Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 25, "I collected the Rett rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step26Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 26, "I collected the Voth rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step27Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 27, "I collected the Nak rune.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step28Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 28, "I collected the Fyrm rune.")
    CheckProgress(Quest, QuestGiver, Player)

end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5577, 3) and QuestStepIsComplete(Player, 5577, 4) and QuestStepIsComplete(Player, 5577, 5) and QuestStepIsComplete(Player, 5577, 6) and QuestStepIsComplete(Player, 5577, 6) and QuestStepIsComplete(Player, 5577, 7) and QuestStepIsComplete(Player, 5577, 8) and QuestStepIsComplete(Player, 5577, 9) and QuestStepIsComplete(Player, 5577, 10) and QuestStepIsComplete(Player, 5577, 11) and QuestStepIsComplete(Player, 5577, 12) and QuestStepIsComplete(Player, 5577, 13) and QuestStepIsComplete(Player, 5577, 14) and QuestStepIsComplete(Player, 5577, 15) and QuestStepIsComplete(Player, 5577, 16) and QuestStepIsComplete(Player, 5577, 17) and QuestStepIsComplete(Player, 5577, 18) and QuestStepIsComplete(Player, 5577, 19) and QuestStepIsComplete(Player, 5577, 20) and QuestStepIsComplete(Player, 5577, 21) and QuestStepIsComplete(Player, 5577, 22) and QuestStepIsComplete(Player, 5577, 23) and QuestStepIsComplete(Player, 5577, 24) and QuestStepIsComplete(Player, 5577, 25) and QuestStepIsComplete(Player, 5577, 26) and QuestStepIsComplete(Player, 5577, 27) and QuestStepIsComplete(Player, 5577, 28) then
	UpdateQuestTaskGroupDescription(Quest, 3, "I found translations for all twenty six Draconic runes!")
	AddQuestStepChat(Quest, 29, "I need to take these translated runes to the Sage of Ages in Antonica.", 1, "I must take these priceless research translations to the Sage of Ages at the Tower of the Coldwind Oracles.", 11, 120218)
	AddQuestStepCompleteAction(Quest, 29, "QuestComplete")
    end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 29, "I took the Draconic runes to the Sage of Ages.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I delivered the translated runes to the Sage of Ages.")
	AddLanguage(Player, 19)
	SendMessage(Player, "You have learned the basics of Draconic.", "White")
	UpdateQuestDescription(Quest, "The red dragon Nagafen would not speak to us unless we were able to speak with him in his ancient language.  This was told to us by his majordomo Inferinus.  By following a theory the Sage of Ages had on the research of the Draconic language, I was able to find researched translations of all twenty six draconic runes which allowed the sage to teach me the ancient tongue. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		Step11Complete(Quest, QuestGiver, Player)
	elseif Step == 12 then
		Step12Complete(Quest, QuestGiver, Player)
	elseif Step == 13 then
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		Step14Complete(Quest, QuestGiver, Player)
	elseif Step == 15 then
		Step15Complete(Quest, QuestGiver, Player)
	elseif Step == 16 then
		Step16Complete(Quest, QuestGiver, Player)
	elseif Step == 17 then
		Step17Complete(Quest, QuestGiver, Player)
	elseif Step == 18 then
		Step18Complete(Quest, QuestGiver, Player)
	elseif Step == 19 then
		Step19Complete(Quest, QuestGiver, Player)
	elseif Step == 20 then
		Step20Complete(Quest, QuestGiver, Player)
	elseif Step == 21 then
		Step21Complete(Quest, QuestGiver, Player)
	elseif Step == 22 then
		Step22Complete(Quest, QuestGiver, Player)
	elseif Step == 23 then
		Step23Complete(Quest, QuestGiver, Player)
	elseif Step == 24 then
		Step24Complete(Quest, QuestGiver, Player)
	elseif Step == 25 then
		Step25Complete(Quest, QuestGiver, Player)
	elseif Step == 26 then
		Step26Complete(Quest, QuestGiver, Player)
	elseif Step == 27 then
		Step27Complete(Quest, QuestGiver, Player)
	elseif Step == 28 then
		Step28Complete(Quest, QuestGiver, Player)
	elseif Step == 29 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
