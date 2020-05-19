--[[
    Script Name    : Quests/ThunderingSteppes/HidesForBrianna.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.11 02:07:04
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Brianna (2490170)
        Preceded by: Supplies for Brianna
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect tough rumbler hides.", 15, 100, "Brianna in Thundermist village has asked me to gather tough hides from rumblers in the Steppes.", 2536, 3570000, 3570001, 3570002, 3570003, 3570004, 3570005, 3570006, 3570007, 3570008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")

end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered the rumbler hides for Brianna.")

	AddQuestStepChat(Quest, 2, "Return these hides to Brianna in Thundermist Village.", 1, "I should return these rumbler hides to Brianna in Thundermist Village.", 11, 2490170)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm on it.")
	StartConversation(conversation, NPC, Spawn, "Well, the first thing I am going to need today is some tough rumbler hides, but only from the subterranean ones. If they have ever seen daylight, they just won't do. There is a special cave I found once where they tend to gather. If you can bring me 15 of them that would be great.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	end
end
