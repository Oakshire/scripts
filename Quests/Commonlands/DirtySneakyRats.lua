--[[
	Script Name		:	dirty_sneaky_rats.lua
	Script Purpose  	:	Handles the quest, "Dirty Sneaky Rats!"
	Script Author	        :	premierio015
	Script Date		:	10.11.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Master of the Hunt
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill the dregs sneaks till I find the journal", 1, 50, "From the crossroads, cross the southern bridge and head south until you find a small encampment of ratonga dregs.  Among them find the sneak that stole the journal.", 195, 330044, 330690, 330691)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/optional2/master_of_the_hunt/commonlands/quests/master_hunter/master_hunter001.mp3", "", "", 849307995, 144655211, Spawn)
        AddConversationOption(conversation, "Yeah, kill the rat and get your book.")
        StartConversation(conversation, QuestGiver, Player, "Splendid. A ratonga stole my hunting journal, the little wretch.  Find him, kill him, and return with my journal.  Is that understood?")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found the stolen journal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the journal and should return it to the Master of the Hunt.")

	AddQuestStepChat(Quest, 2, "Return the journal to the hunter", 1, "I need to go back to the Master of the Hunt and return the stolen journal.", 11, 331134)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned the journal.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the journal, the hunter was very gracious.")

	UpdateQuestDescription(Quest, "I found the journal that the dregs sneak stole and returned it to the Master Hunter, she was pleased and offered to teach me what it means to be a true hunter, when I'm ready... Whenever that may be. <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
