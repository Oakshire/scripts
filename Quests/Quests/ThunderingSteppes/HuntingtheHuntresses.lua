--[[
    Script Name    : Quests/ThunderingSteppes/HuntingtheHuntresses.lua
    Script Author  : Jabantiz
    Script Date    : 2015.05.09 06:05:41
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Click barrel at (217, -1, -159)
        Preceded by: None
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay fifteen Amazon huntresses in the Thundering Steppes.", 15, 100, "The Amazon huntresses in the Thundering Steppes are too dangerous to just allow to roam freely. They must be slain for the good of all who come through the area.", 611, 2490138)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "I will slay them.", "Close")
	AddConversationOption(con, "exit", "Close")
	StartDialogConversation(con, 1, QuestGiver, Player, 'Looking inside the barrel you find a large horseshoe with a scroll attached to it that reads: "This horseshoe belonged to the Amazon huntress that attacked my family caravan on a trip to Windstalker Village.  It is all that I have left of that terrible day - Bjorn Stormpeak."  The Amazon huntresses should be destroyed!')
end

function Declined(Quest, QuestGiver, Player)

end

function Deleted(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)

end

