--[[
	Script Name		:	Quests/TheCommonlands/components_for_gimble.lua
	Script Purpose	:	Handles the quest, "Components for Gimble"
	Script Author	:	premierio015
	Script Date		:	07.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands, Wailing Caves
	Quest Giver		:	Gimble Cognoggin
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect Strongbox Deceiver meat", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 320, 2580027)
		AddQuestStepKill(Quest, 2, "I need to collect goo from a Primordial Menace", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 8, 2580026)
			AddQuestStepKill(Quest, 3, "I need to collect essence from a Shin`Ree Spiritist", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 182, 2580015)
	AddQuestStepKill(Quest, 4, "I need to collect an egg sac from a Lurid Ripper", 5, 100, "I'm searching for components that Gimble Cognoggin needs me to retrieve in the Wailing Caves. ", 144, 2580011)


	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")

end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/gimble_cognoggin/commonlands/gimblecognoggin001.mp3", "", "", 3183728317, 519978883, Player)
	AddConversationOption(conversation, "I'll return with what you need, have no doubt about that.  What do you need?")
	StartConversation(conversation, QuestGiver, Player, "Folks are so greedy these days.  I suppose I don't blame them.  In recent years, it's become every gnome for himself.  I need you to venture into the Wailing Caves and retrieve some reagents. I can't tell you why I need them, but I will reward you well if you return with the ingredients. Here, let me write in your journal what I need.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found some Strongbox Deceiver meat.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've collected the Primordial Menace goo.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've collected the Spiritist's essence.")
   CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5304, 1) and QuestStepIsComplete(Player, 5304, 2) and QuestStepIsComplete(Player, 5304, 3) and QuestStepIsComplete(Player, 5304, 4) then
       	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected the components for Gimble Cognoggin's potion.")
    AddQuestStepChat(Quest, 5, "I still need to return to Gimble Cognoggin to give him the components", 1, "I still need to return to Gimble Cognoggin to give him the components.", 11, 330187)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end	
end





function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've collected the Lurid Ripper's egg sack.")

   CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've spoken with Gimble Cognoggin after finding all the components he needed.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Gimble Cognoggin after finding all the components he needed.")

	UpdateQuestDescription(Quest, "Having delved deeply into the Wailing Caves, I can now say that goo is disgusting!  That place is filled with slime and skeletons.  But I did see something that piqued my interest. There were a couple of live orcs in that cave of a clan named the Ree.  I wonder what they're doing there.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end


