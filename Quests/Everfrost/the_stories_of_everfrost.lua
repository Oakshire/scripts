--[[
    Script Name    : Quests/Everfrost/the_stories_of_everfrost.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.10.14 12:10:29
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Brahnagan MacLahnan
        Preceded by: None
        Followed by: Cull the Threat to the Pioneers
--]]

function Init(Quest)

     AddQuestRewardCoin(Quest, math.random(20,60), math.random(30,90), math.random(3,5), 0)

     AddQuestStepChat(Quest, 1, "I should interview Newlyn Icebreaker.", 1, "I have been sent by MacLahnan to speak with a number of individuals around Stormedge Isle so I can better appreciate the situation in Everfrost.", 0, 410013)
     AddQuestStepChat(Quest, 2, "I should interview Li Ning Ventur.", 1, "I have been sent by MacLahnan to speak with a number of individuals around Stormedge Isle so I can better appreciate the situation in Everfrost.", 0, 410011)
     AddQuestStepCompleteAction(Quest, 1, "Spoke_To_Newlyn_Icebreaker")
     AddQuestStepCompleteAction(Quest, 2, "Spoke_To_Li_Ning_Ventur")

end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function Reload(Quest, QuestGiver, Player, Step)

end

function Spoke_To_Newlyn_Icebreaker(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have interviewed Newlyn Icebreaker.")
	ProgressCheck_Quest1(Quest, QuestGiver, Player)
end

function Spoke_To_Li_Ning_Ventur(Quest, QuestGiver, Player)
        UpdateQuestStepDescription(Quest, 2, "I have interviewed Li Ning Ventur")
	ProgressCheck_Quest1(Quest, QuestGiver, Player)
end

function ProgressCheck_Quest1(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 167, 1) and QuestStepIsComplete(Player, 167, 2) then
		Add_Quest1_Step3(Quest, QuestGiver, Player)
	end
end

function Add_Quest1_Step3(Quest, QuestGiver, Player)
        UpdateQuestTaskGroupDescription(Quest, 1, "I have heard the stories of the people of Stormedge Isle.")
        SetCompleteFlag(Quest)
        AddQuestStepChat(Quest, 3, "I should speak with Brahnagan MacLahnan.", 1, "Having spoken with a number of individuals around Stormedge Isle, I should return to MacLahnan", 0, 410006)
        AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")

end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

