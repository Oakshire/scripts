--[[
    Script Name    : Quests/MultipleZones/fire_and_ice.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.08 07:08:22
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to the Sage of Ages.", 1, "I should speak to the Sage of Ages at the Tower of the Coldwind Oracles in Antonica and let him know what Nagafen said.", 11, 120218)
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
	UpdateQuestStepDescription(Quest, 1, "I spoke to the Sage of Ages.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to the Sage of Ages. He believes Nagafen is lying, but reluctantly agrees that for now we should follow Nagafen's plan of resurrecting Lady Vox.")

	AddQuestStepChat(Quest, 2, "We need to resurrect Lady Vox within her crypt at Permafrost and speak with her.", 1, "We need to resurrect the Lady Vox by recovering her essence shards from the Drakota assassins that hold them and perform the ritual within her crypt.", 11, 1940001)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to Lady Vox.")
	UpdateQuestTaskGroupDescription(Quest, 2, "We were only able to temporarily bring Lady Vox back to life.  She was able to sense that the orb, her egg, is being held by the Ice Giant king.")

	AddQuestStepObtainItem(Quest, 3, "We need to recover the egg from the Ice Giant King.", 1, 100, "We need to rescue the egg from the clutches of the Ice Giant king.", 1159, 3180002)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "We defeated the King Drayek!")
	UpdateQuestTaskGroupDescription(Quest, 3, "We defeated the Ice Giant king, Drayek!")

	UpdateQuestDescription(Quest, "The dragon Darathar was the Sage of Ages all along!  After temporarily resurrecting Lady Vox from the dead, she was able to sense that the Ice Giants held her long lost egg.  We defeated the traitorous King Drayek to recover the egg for Nagafen but the Darathar double crossed us and took it! ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
