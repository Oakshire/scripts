--[[
	Script Name	: Quests/Darklight/malkaen_weed.lua
	Script Purpose	: Handles the quest, "Malkaen Weed"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Fileyl Alyylharil
	Preceded by: Prowler Pelts (prowler_pelts.lua)
	Followed by: Danya's Order (danyas_order.lua)
--]]


function Init(Quest)
	-- Malkaen Weed
	AddQuestStepObtainItem(Quest, 1,  "I need to dig up six Malkaen Weeds.", 6, 100,  ".", 197,  7922)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotWeeds")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl007.mp3", "", "", 700356968, 3682250631, Player)
			AddConversationOption(conversation, "I'll be back.")
			StartConversation(conversation, QuestGiver, Player, "Of course you can, a monkey could do it! But a monkey wouldn't know what to do with the money afterwards.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotWeeds(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the weeds.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the weeds.")
	
	AddQuestStepChat(Quest, 2, "I need to bring the Malkaen Weed back to Fileyl.", 1, ".", 0, 340050)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- Take weeds away
	while HasItem(Player, 7922, 1) do
		RemoveItem(Player, 7922)
	end

	UpdateQuestDescription(Quest, "I have brought Fileyl the Malkaen Weed he neededs for his work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotWeeds(Quest, QuestGiver, Player)
	end
end
