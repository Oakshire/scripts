--[[
    Script Name    : Quests/MultipleZones/tapping_the_torrent.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 12:06:28
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt fiendish creatures to obtain more ebon storm gems.", 7, 100, "I am driven to obtain more ebon storm gems from the fiendish monsters of Norrath such as the Nightbloods. More gems will bring me closer to understanding a new language.", 1133, 15153)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 6663) then
			RemoveItem(Player, 6663,1)
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
	UpdateQuestStepDescription(Quest, 1, "I have a consumed the power of an ebon storm gem.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Chaos Tongue, language of the fiends in Rivervale and the Enchanted Lands.")
	AddLanguage(Player, 24)
	SendMessage(Player, "You have learned the basics of Chaos Tongue.", "White")
	UpdateQuestDescription(Quest, "I tapped the power of a number of ebon storm gems. Their voices flooded my mind and then all of the sudden I could comprehend the language called Chaos Tongue, spoken by the fiends that have invaded parts of Norrath from worlds unknown.   <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
