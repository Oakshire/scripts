--[[
    Script Name    : Quests/IsleofRefuge/lasydias_call.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 12:09:40
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: statue_widget (3250011)
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "It is Lasydia's desire that I slay 10 razortooth sharks.", 10, 100, "I feel an overwhelming urge to end the threat that these razortooth sharks present to the refuges and inhabitants of this isle.", 611, 3250159)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I killed 10 razortooth sharks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Lasydia has comforted me and the feeling to slay sharks left me after I had slain a number of them.")

	UpdateQuestDescription(Quest, "A mysterious sash floated to me out of the water after my desire to slay the vicious sharks left me.  I can only guess if it was by accident or by design that the sash found me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end