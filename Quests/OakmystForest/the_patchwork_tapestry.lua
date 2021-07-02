--[[
	Script Name	: Quests/Oakmyst/the_patchwork_tapestry.lua
	Script Purpose	: Handles the quest, "The Patchwork Tapestry"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	
	Zone       : Unknown
	Quest Giver: None
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	-- Fabric Patch
	AddQuestStepObtainItem(Quest, 1, "Hunt fairies in Norrath to gain fay fabric patches to study.", 7, 100, "I must obtain more patches of fay fabric to piece together the foundation of the fairy language. I must get the fabric patches from fairies of Norrath.", 417, 6079)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have a studied a fay fabric patch.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Fayfolk, language of the fairies.")
	
	-- Learn language (fayfolk)
	
	UpdateQuestDescription(Quest, "I pieced together patches of fay fabric to discover the foundation of two languages, Norrathian and Fay. I have used the fabric patches to learn the language of the fairies, Fayfolk.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end