--[[
	Script Name	: Quests/GreaterFaydark/herbs_of_healing_and_growth.lua
	Script Purpose	: Handles the quest "Herbs of Healing and Growth
	Script Author	: Zcoretri
	Script Date	: 2009.03.05
	
	Zone       : Greater Faydark
	Quest Giver: Matron of the Nursery
	Preceded by: Grobin Trouble at the Pond
	Followed by: Message from the Matron
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1,  "I need to gather herbs from the faeicia leaf plants west of the nursery", 5, 100,  "I need to gather herbs from the faeicia leaf plant for the Matron of the Nursery. I should be able to find these herbs west of the nursery past the wolves.", 336,  6096) 
	AddQuestStepCompleteAction(Quest, 1, "CollectedAllLeafs")

	
end

function Accepted(Quest, QuestGiver, Player)
	 if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation
	    AddConversationOption(conversation, "I'll be careful")
	    StartConversation(conversation, QuestGiver, Player, "Be careful of the wolves though, they can be quite feisty if they haven't eaten.")
		
	end
	 end
end

function Declined(Quest, QuestGiver, Player)
end

function CollectedAllLeafs(Quest, QuestGiver, Player)
	 UpdateQuestTaskGroupDescription(Quest, 1, "I should have enough of the faeicia leaf herbs for the matron.")
	 AddQuestStepChat(Quest, 2, "I should take these herbs to the Matron of the Nursery.", 1, "I need to take the faeicia leaf herbs I gathered to the Matron of the Nursery so that she can use them to heal the spirit blooms.", 0, 1140004)
	 AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	 UpdateQuestDescription(Quest, "The Matron of the Nursery was able to magically heal the spirit blooms with the herbs I gathered for her.")
	 GiveQuestReward(Quest, Player)
	 RemoveItem(Player, 6096)
end

function Reload(Quest, QuestGiver, Player, Step)
	 if Step == 1 then
	CollectedAllLeafs(Quest, QuestGiver, Player)
	 end
end
