--[[
    Script Name    : Quests/Everfrost/marta_terrilons_fur_hunt.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.04 11:09:29
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Marta Terrilon
        Preceded by: None
        Followed by: None
--]]

function Init(Quest)
        local Pelt_Type = math.random(1,2)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,80), math.random(3,5), 0)
        if Pelt_Type == 1 then
             AddQuestStepKill(Quest, 1, "Hunt glacier bears in Everfrost", math.random(8,12), 100, "I'm suppose to help Marta Terrilon get the furs that she needs. I should return to her with the furs as soon as I've gathered enough.", 126, 410087, 410088, 410122)
             AddQuestStepCompleteAction(Quest, 1, "KilledBeasts")

        else
	     AddQuestStepKill(Quest, 1, "Hunt northern stags in Everfrost.", math.random(8,12), 100, "I'm suppose to help Marta Terrilon get the furs that she needs. I should return to her with the furs as soon as I've gathered enough.", 122, 410041, 410079)
             AddQuestStepCompleteAction(Quest, 1, "KilledBeasts")
	
	end
end


function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function KilledBeasts(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I've hunted a large number of furred creatures, I hope these will satisfy Marta's quota.")
    SetCompleteFlag(Quest)
    AddQuestStepChat(Quest, 2, "I should return to Marta Terrilon in Everfrost.", 1, "I should return to Marta Terrilon in Everfrost.", 0, 410004)
    AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "Marta rewarded me once I returned with the furs.")
	GiveQuestReward(Quest, Player)

end


function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 161, 1) then
		KilledBeasts(Quest, QuestGiver, Player)
	elseif QuestStepIsComplete(Player, 161, 2) then
		Quest_Complete(Quest, QuestGiver, Player)
	end
end