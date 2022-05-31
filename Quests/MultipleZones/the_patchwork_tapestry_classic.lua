--[[
	Script Name		:	the_patchwork_tapestry.lua
	Script Purpose	:	Handles the quest, "The Patchwork Tapestry"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	5/28/2022
	Script Notes	:	CLASSIC Version of quest.  Gives Studied version of item that actually counts for update.

	Zone			:	Language
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt fairies in Norrath to gain fay fabric patches to study.", 7, 100, "I must obtain more patches of fay fabric to piece together the foundation of the fairy language. I must get the fabric patches from fairies of Norrath.", 417, 13526)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 7003) then
			RemoveItem(Player, 7003,1)
		end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have a studied a fay fabric patch.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Fayfolk, language of the fairies.")
	AddLanguage(Player, 23)
	SendMessage(Player, "You have learned the basics of the Fay language.", "White")
	UpdateQuestDescription(Quest, "I pieced together patches of fay fabric to discover the foundation of two languages, Norrathian and Fay. I have used the fabric patches to learn the language of the fairies, Fayfolk.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


