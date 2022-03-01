--[[
	Script Name	: Quests/Darklight/danyas_order.lua
	Script Purpose	: Handles the quest, "Danya's Order"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Fileyl Alyylharil
	Preceded by: Malkaen Weed (malkaen_weed.lua)
	Followed by: Dirzdia's Order (dirzdias_order.lua)
--]]


function Init(Quest)
	


	AddQuestStepChat(Quest, 1, "I need to give Danya Halfmoon her order.", 1, ".", 0, 340073)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl010.mp3", "", "", 4262099714, 926127362, Player)
			AddConversationOption(conversation, "You're welcome.")
			AddConversationOption(conversation, "Just earning my way.")
			StartConversation(conversation, QuestGiver, Player, "I appreciate it.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have given Danya Halfmoon her order.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
