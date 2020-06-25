--[[
	Script Name	: Quests/Darklight/dirzdias_order.lua
	Script Purpose	: Handles the quest, "Dirzdia's Order"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Fileyl Alyylharil
	Preceded by: Danya's Order (danyas_order.lua)
	Followed by: None
--]]


function Init(Quest)
	


	AddQuestStepChat(Quest, 1, "I need to deliver Fileyl's net to Dirzdia T'Zauvirr.", 1, ".", 0, 340139)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl014.mp3", "", "", 695536554, 1919499087, Player)
			AddConversationOption(conversation, "Thank you.")
			StartConversation(conversation, QuestGiver, Player, "Excellent. I'll  be sure to speak highly of you in my dealings, " .. GetName(Player) .. ".")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have delivered Fileyl's net to Dirzdia T'Zauvirr.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
