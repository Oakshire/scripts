--[[
    Script Name    : Quests/Antonica/tillins_gnoll_woes.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.12 07:08:28
    Script Purpose : 

        Zone       : Antonica, Blackburrow
        Quest Giver: Sergeant Tillin(120322)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	local RandomChoice = MakeRandomInt(1, 3)
	if RandomChoice == 1 then
	AddQuestStepKill(Quest, 1, "Gather ore samples from Sabertooth miners and excavators in Blackburrow.", 5, 50, "I need to gather the items required by Sergeant Tillin.", 1164, 170010)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete_OreSamples")
	elseif RandomChoice == 2 then
		AddQuestStepKill(Quest, 1, "Find a set of the plans the Sabertooth tacticians in Blackburrow are going to use.", 1, 50, "I need to gather the items required by Sergeant Tillin.", 185, 170043)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete_Plans")    
	elseif RandomChoice == 3 then
		AddQuestStepKill(Quest, 1, "Gather three of the rune stones from the Sabertooth Diviners in Blackburrow.", 3, 100, "I need to gather the items required by Sergeant Tillin.", 373, 170019)
	AddQuestStepCompleteAction(Quest, 1, "Step1Runestones")    
	end    
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/sergeant_tillin/antonica/sergeant_tillin002.mp3", "", "wink", 3839046012, 1664305594, Player)
	AddConversationOption(conversation, "Sounds good.")
	StartConversation(conversation, QuestGiver, Player, "We need information from a group of gnolls. Let me take a look at that little book at your side, and I'll write down what we're looking for. When you get back, I'll have a fat purse waiting for you!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete_OreSamples(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered the ore samples I needed.")
CheckProgress(Quest, QuestGiver, Player)

end

function Step1Complete_Plans(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a set of the plans Tillin needed.")
CheckProgress(Quest, QuestGiver, Player)

end

function Step1Runestones(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered the rune stones Tillin wanted.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5336, 1) then
     	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the items Sergeant Tillin needed.")
     	AddQuestStepChat(Quest, 2, "Speak with Sergeant Tillin at Gnollslayer Keep in Antonica.", 1, "I need to return to Sergeant Tillin with what I've found.", 11, 120322)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Sergeant Tillin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Sergeant Tillin.")

	UpdateQuestDescription(Quest, "I've gathered all the items that Sergeant Tillin needed.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		local RandomChoice = MakeRandomInt(1, 3)
			if RandomChoice == 1 then
			Step1Complete_OreSamples(Quest, QuestGiver, Player)
			elseif choice == 2 then
			    Step1Complete_Plans(Quest, QuestGiver, Player)
			    elseif choice == 3 then
			 Step1Runestones(Quest, QuestGiver, Player)
			 end
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

