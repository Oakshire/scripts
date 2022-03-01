--[[
	Script Name	: Quests/FrostfangSea/field_testing_part_two.lua
	Script Purpose	: the quest Field Testing Part Two
	Script Author	: theFoof
	Script Date	: 2013.5.20

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Field Testing
        Followed by     : None
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "blorpisa_bogchild/halas/gwenevyns_cove/blorpisa_bogchild/blorpisa_bogchild_057.mp3", "", "", 4242418516, 2706446294, Player)
	AddConversationOption(conversation, "I will return to you once I have scouted out the location.")
	StartConversation(conversation, QuestGiver, Player, "Here, let me cast the spell on you. Do take care!")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,50), math.random(5,12), 0, 0)
    AddQuestStepLocation(Quest, 1, "I must test the Frost-born Ward's effectiveness by scouting the Pride Overlook.", 25, "I must head to the Pride Overlook on the Icemane Plains to test the new Frost-born Ward. Pride Overlook is west of Gwenevyn's Cove.", 3163, 598.01, 66.20, -505.68)
	AddQuestStepCompleteAction(Quest, 1, "ScoutedPride")
end

function ScoutedPride(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have determined that the Frost-born Ward is still ineffective.")
    AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild in Gwenevyn's Cove.", 1, "I must return to Blorpisa Bogchild in Gwenevyn's Cove.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    ScoutedPride(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end