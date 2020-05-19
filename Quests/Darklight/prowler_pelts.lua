--[[
	Script Name	: Quests/Darklight/prowler_pelts.lua
	Script Purpose	: Handles the quest, "Prowler Pelts"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Fileyl Alyylharil
	Preceded by: None
	Followed by: Malkaen Weed (malkaen_weed.lua)
--]]


function Init(Quest)
	


	AddQuestStepKill(Quest, 1, "I need to collect four superb prowler pelts from the dusk prowlers around Hate's Envy.", 4, 100, ".", 126, 340048, 340049)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedProwlers")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/fileyl_alyylharil/darklight_wood/hates_envy/fileyl/fileyl003.mp3", "", "", 627745117, 443565061, Player)
			AddConversationOption(conversation, "I'll return.")
			StartConversation(conversation, QuestGiver, Player, "I'll pay you when you give me the pelts.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedProwlers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've collected the prowler pelts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected the prowler pelts.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these pelts back to Fileyl Alyylharil.", 1, ".", 0, 340050)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought Fileyl the prowler pelts he asked for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedProwlers(Quest, QuestGiver, Player)
	end
end
