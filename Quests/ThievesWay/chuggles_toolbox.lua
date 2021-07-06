--[[
    Script Name    : Quests/ThievesWay/chuggles_toolbox.lua
    Script Author  : premierio015
    Script Date    : 29.06.2021
    Script Purpose : 

        Zone       : ThievesWay
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find Chuggle's five tools and replace them in the toolbox. There's a good chance that they're down here in the Thieves' Way.", 5, 100, " I need to find a cogspindler on one of the union menders.", 1228,  1540008, 1540016, 1540046, 1540002, 1540021, 1540022, 1540024, 1540028, 1540072, 1540073, 1540029, 1540045, 1540000, 1540032)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found all the tools that were missing from Chuggle's toolbox.")
	AddQuestStepChat(Quest, 2, "I need to speak with  Chuggle Valvesplitter.", 1, "I have to return toolbox to Chuggle Valvesplitter." , 11, 1360021)
    AddQuestStepCompleteAction(Quest, 2, "quest_complete")	
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, 3, "I have spoken with Chuggle Valvesplitter and returned the toolbox.")
	if HasItem(Player, 5014) then
	 RemoveItem(Player, 5014)
	 end
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)

end

