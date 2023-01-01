--[[
	Script Name		:	taking_the_bait.lua
	Script Purpose	:	Handles the quest, "Taking the Bait"
	Script Author	:	Dorbin
	Script Date		:	5/31/2022
	Script Notes	:	

	Zone			:	Qeynos Harbor
	Quest Giver		:	Sean Wellfayer
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must gather five bog faerie wings for Sean.", 5, 80, "I need to head over to the Peat Bog and get five pieces of bog slug meat and five bog faerie wings.", 110, 8290001,8290002,8290003,8290052,8290008,8290009,8290010,8290013,8290014,8290011,8290012,8290017,8290018,8290019,8290053,8290044)
	AddQuestStepKill(Quest, 2, "I must gather five bog slug meat for Sean.", 5, 80, "I need to head over to the Peat Bog and get five pieces of bog slug meat and five bog faerie wings.", 133, 8290005,8290006,8290031,8290027)
    UpdateQuestZone(Quest, "The Peat Bog")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()
		
        PlayFlavor(QuestGiver, "", "", "happy", 0, 0, Player)
	    AddConversationOption(conversation, "I'll be back when I've gathered your bait.")
	    StartConversation(conversation, QuestGiver, Player, "Great!  What I really need for bait is a family secret from the Peat Bog.  The fish here love bog fairy wings and slug meat.  If you could go gather some, I would be set till the next sunset!  I'll be here trying to catch my dinner till you get back, but please hurry!")
	    end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered the faerie wings Sean needed.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've gathered the slug meat Sean needed.")
	CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5571, 1) and QuestStepIsComplete(Player, 5571, 2) then
--    UpdateQuestStepDescription(Quest, 2,"I've gathered the bait supplies Sean needs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've collected the five pieces of slug meat and five bog faerie wings.")
    UpdateQuestZone(Quest, "Qeynos Harbor")
	AddQuestStepChat(Quest, 3, "I need to return to Sean Wellfayer on the docks of Qeynos Harbor.", 1, "Sean Wellfayer Should be pleased with this bait once I get it back to him at the harbor.", 11, 2210065)
    AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
    end
end 

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've given Sean the bait he asked for.")
	UpdateQuestTaskGroupDescription(Quest,3, "Sean happily accepted the bait since it saved him from leaving his favorite fishing spot.")

	UpdateQuestDescription(Quest, "I got everything Sean needed and he was quite pleased.  The pay was decent and perhaps I'll help him get some more bait in the future.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step ==3 then   
		QuestComplete(Quest, QuestGiver, Player)
    end
end

