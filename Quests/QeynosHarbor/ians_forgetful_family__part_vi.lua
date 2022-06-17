--[[
    Script Name    : Quests/QeynosHarbor/ians_forgetful_family__part_vi.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.16 10:06:36
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ian Cathlan
        Preceded by:  Ian's Forgetful Family - Part V
        Followed by:  None
--]]

function Init(Quest)
    AddQuestStepKill(Quest, 1, "Ian's brother in law lost his collected bear hides after being chased out of the Thundering Steppes by Steelhoof hunters.", 15, 100, "Only a few more things I can think of that I need found in the Thundering Steppes.  If you could look for the bear hides that my brother in law lost after a run-in with some Steelhoof hunters that would be appreciated.  My grandfather was a bard and always had a variety of flutes on him.  Probably because he lost so many, but if you could find the ones he lost near an area with a lot of skeletal troopers that would be appreciated.  And last of all I lost my father's murky cutlass when walking up Deadview Pass in the Steppes.  A mean giant by the name of Ott Stompgut nearly grabbed me but got the cutlass instead and I'd like it back. - Ian", 123, 2490107)	
    AddQuestStepKill(Quest, 2, "Ian's grandfather a once famous bard lost his instrument bag within the Thundering Steppes after battling skeletal troopers.", 10, 100, "Only a few more things I can think of that I need found in the Thundering Steppes.  If you could look for the bear hides that my brother in law lost after a run-in with some Steelhoof hunters that would be appreciated.  My grandfather was a bard and always had a variety of flutes on him.  Probably because he lost so many, but if you could find the ones he lost near an area with a lot of skeletal troopers that would be appreciated.  And last of all I lost my father's murky cutlass when walking up Deadview Pass in the Steppes.  A mean giant by the name of Ott Stompgut nearly grabbed me but got the cutlass instead and I'd like it back. - Ian", 2246, 2490218)
    AddQuestStepKill(Quest, 3, "Ian's father lost his murky steel cutlass after having to run from Ott Stompgut a powerful giant in the Thundering Steppes", 1, 100, "Only a few more things I can think of that I need found in the Thundering Steppes.  If you could look for the bear hides that my brother in law lost after a run-in with some Steelhoof hunters that would be appreciated.  My grandfather was a bard and always had a variety of flutes on him.  Probably because he lost so many, but if you could find the ones he lost near an area with a lot of skeletal troopers that would be appreciated.  And last of all I lost my father's murky cutlass when walking up Deadview Pass in the Steppes.  A mean giant by the name of Ott Stompgut nearly grabbed me but got the cutlass instead and I'd like it back. - Ian", 1678, 1)
    AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks Ian, I'll hope for the best.")
	StartConversation(conversation, QuestGiver, Player, "Hrm ... well, this set didn't give me as much of a clue as I hoped.  But you can always try where we left off and see where that takes you.  Here, I'll write a few suggestions down. See if those help.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have found the missing bear hides.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the missing instruments.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the murky steel cutlass.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5593, 1) and QuestStepIsComplete(Player, 5593, 2) and QuestStepIsComplete(Player, 5593, 3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've recovered everything Ian needed, I should return to him.")

	AddQuestStepChat(Quest, 4, "I should return to Ian in Qeynos Harbor.", 1, 100, "I need to speak to Ian Cathlan in the Qeynos Harbor.", 11,2210084)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Ian in Qeynos Harbor.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ian in Qeynos Harbor.")

	UpdateQuestDescription(Quest, "Ian has rewarded me with armor for collecting a few of his lost family's possessions.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
