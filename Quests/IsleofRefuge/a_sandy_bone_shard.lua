--[[
    Script Name    : Quests/IsleofRefuge/a_sandy_bone_shard.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.16 04:09:01
    Script Purpose : CLASSIC version of this quest.  Has item dialog associated with each step.

        Zone       : IsleofRefuge
        Quest Giver: a sandy bone shard
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to see if other crabs have more missing pieces to the token.", 5, 80, "I need to find the other pieces to the shattered token.", 1085, 3250065,3250092,3250068,3250091)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the remaining pieces.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the remaining pieces.")

    AddQuestStep(Quest,2," I should examine the shard again.",1, 100,"I have found the remaining pieces. I should examine the shard again.", 1085)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have examined the pieces.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have examined the pieces.")

	AddQuestStepKill(Quest, 3, "I should find some fish to make glue from.", 6, 80, "The easiest and nearest source of glue is probably the skin off the fish that can be found in the waters near the docks.  I should collect a few.", 2540, 3250101,3250056,3250157,3250158,3250159, 3250162,3250160)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found some fish and made the glue I need.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found some fish and made the glue I need.")

    AddQuestStep(Quest,4," I should examine the shard again",1, 100,"I have found some fish and made the glue I need. I should examine the shard again.", 1085)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end



function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have glued the pieces of the token back together using the sticky gelatin from the fish skins I collected.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have glued the pieces of the token back together using the sticky gelatin from the fish skins I collected.")

	AddQuestStepKillByRace(Quest, 5, "I should find a replacement cord on the goblins found on the island.", 1, 60, "The pieces of the token are now glued back together I just need a leather cord to wear it.  The goblins on the island must have a suitable one somewhere.", 1113, 300)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found a replacement cord")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have found a leather cord for the token.")
	
    AddQuestStep(Quest,6," I should examine the shard again",1, 100,"I have found a leather cord for the token. I should examine the shard again.", 1085)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have replaced the cord and fashioned a scrimshaw token.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have replaced the cord and fashioned a scrimshaw token.")

	UpdateQuestDescription(Quest, "I have found all the pieces I needed and put the Scrimshaw Token back together.")
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
		QuestComplete(Quest, QuestGiver, Player)
end
end
