--[[
    Script Name      :    Quests/OutpostOverlord/in_the_name_of_prestige.lua
    Script Purpose   :    
    Script Author    :    vo1d
    Script Date      :    2019.11.02
    Script Notes     :    Added quest item for completion the quest.
    Modified by      :    premierio015
    Modified Date    :    18.05.2020
    Zone             :    Outpost of the Overlord
    Quest Giver      :    Charles Arker
    Preceded by      :    None
    Followed by      :    In the Name of Honor
  
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Receive the parchment pieces from Charles Arker.", 1, "Charles Arker will give me the pieces of parchment I'll need to investigate this puzzle.", 11, 2780075)
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
	UpdateQuestStepDescription(Quest, 1, "Received the first parchment pieces.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've received the initial pieces of parchment from Charles Arker.")
        GiveQuestItem(Quest, Player, "I've recieved the initial pieces of parchment from Charles Arker.", 10316)
        
	AddQuestStep(Quest, 2, "I should take a look at these parchment scraps given to me by Charles Arker to get some more clues on where to gather more.", 1, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure.  It will be up to me to shatter their security.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've examined the parchment.")

	AddQuestStepKill(Quest, 3, "Search the Tunarian horse sentries for more pieces of parchment.", 3, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure.  It will be up to me to shatter their security.", 611, 2780070)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've located another piece of parchment.")

	AddQuestStep(Quest, 4, "I should examine the parchment pieces.", 1, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure.  It will be up to me to shatter their security.", 11)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've examined the parchment.")

	AddQuestStepKill(Quest, 5, "Remove some of the wilderbear cubs.  Taking out the young will delay the Tunarian plans for them.", 4, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure.  It will be up to me to shatter their security.", 93, 2780069)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've slain the wilderbear cubs.")

	AddQuestStepKill(Quest, 6, "Now to remove some of the wilderbears themselves!", 4, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure.  It will be up to me to shatter their security.", 93, 2780071)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've slain several wilderbears.")

	AddQuestStep(Quest, 7, "I'm not sure whether there's more to this parchment or not.  I'll take another look and see if it makes any more sense now.", 1, 100, "The Tunarians have probably hidden the rest of this parchment and they feel secure.  It will be up to me to shatter their security.", 11)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've found most, but not all, of the parchment.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've located many pieces of this parchment and pieced together what I could locate.")

	AddQuestStepChat(Quest, 8, "Speak with Charles Arker.", 1, "I need to return to Charles Arker and show him the pieces I've assembled.  Hopefully, he has found the scraps that I missed and we'll know what the Tunarians are doing.", 11, 2780075)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I spoke with Charles Arker.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Charles Arker with the parchment pieces.")

	UpdateQuestDescription(Quest, "Though I located some of the notes' scattered pieces, I wasn't able to locate every piece.  Neither was Charles Arker, though he still believes this note has some significance.  It's frustrating to realize that the Tunarians are planning something, yet we are unable to completely solve the riddle.  Perhaps in time, more will be made clear to me.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
