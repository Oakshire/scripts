--[[
	Script Name		:	VengeanceforShoreside.lua
	Script Purpose	:	Handles the quest, "Vengeance for Shoreside"
	Script Author	:	jakejp
	Script Date		:	12/29/2018
	Script Notes	:	Wiki says mobs are chosen randomly, attempt at making quest steps random 

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Imperidus
	Preceded by		:	Knock the Fight Out of 'Em
	Followed by		:	Identifying the Lonetusk Ally
--]]

local VengeanceforShoreside = 393

local LieutenantImperidus = 1270031
local LonetuskSentry = 1270021
local LonetuskWarrior = 1270032
local LonetuskCrusher = 1270036
local LonetuskPounder = 1270026
local LonetuskShaman = 1270023
local LonetuskProphet = 1270037
choice = math.random(1, 6)


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay Lonetusk sentries", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskSentry)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepKill(Quest, 2, "Slay Lonetusk warriors", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskWarrior)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	if choice == 1 then
		AddQuestStepKill(Quest, 3, "Slay Lonetusk crushers", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskCrusher)
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
		AddQuestStepKill(Quest, 4, "Slay Lonetusk pounders", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskPounder)
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	elseif choice == 2 then 
		AddQuestStepKill(Quest, 3, "Slay Lonetusk crushers", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskCrusher)
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
		AddQuestStepKill(Quest, 4, "Slay Lonetusk shamans", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskShaman)
		AddQuestStepCompleteAction(Quest, 4, "Step5Complete")
	elseif choice == 3 then 
		AddQuestStepKill(Quest, 3, "Slay Lonetusk crushers", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskCrusher)
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
		AddQuestStepKill(Quest, 4, "Slay Lonetusk prophets", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskProphet)
		AddQuestStepCompleteAction(Quest, 4, "Step6Complete")
	elseif choice == 4 then 
		AddQuestStepKill(Quest, 3, "Slay Lonetusk pounders", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskPounder)
		AddQuestStepCompleteAction(Quest, 3, "Step4Complete")	
		AddQuestStepKill(Quest, 4, "Slay Lonetusk shamans", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskShaman)
		AddQuestStepCompleteAction(Quest, 4, "Step5Complete")
	elseif choice == 5 then 
		AddQuestStepKill(Quest, 3, "Slay Lonetusk pounders", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskPounder)
		AddQuestStepCompleteAction(Quest, 3, "Step4Complete")
		AddQuestStepKill(Quest, 4, "Slay Lonetusk prophets", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskProphet)
		AddQuestStepCompleteAction(Quest, 4, "Step6Complete")
	elseif choice == 6 then
		AddQuestStepKill(Quest, 3, "Slay Lonetusk shamans", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskShaman)
		AddQuestStepCompleteAction(Quest, 3, "Step5Complete")
		AddQuestStepKill(Quest, 4, "Slay Lonetusk prophets", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, LonetuskProphet)
		AddQuestStepCompleteAction(Quest, 4, "Step6Complete")
	end 
	
	--AddQuestStepKill(Quest, 3, "Slay Lonetusk crushers", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, --[[ ID's --]])
	--AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	--AddQuestStepKill(Quest, 4, "Slay Lonetusk pounders", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, --[[ ID's --]])
	--AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
    --AddQuestStepKill(Quest, 5, "Slay Lonetusk shamans", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, --[[ ID's --]])
	--AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	--AddQuestStepKill(Quest, 6, "Slay Lonetusk prophets", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2489, --[[ ID's --]])
	--AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, VengeanceforShoreside, 1) and QuestStepIsComplete(Player, VengeanceforShoreside, 2) and QuestStepIsComplete(Player, VengeanceforShoreside, 3) and QuestStepIsComplete(Player, VengeanceforShoreside, 4) then 
		LastStep(Quest, QuestGiver, Player)
	end 
end 

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain five Lonetusk sentries.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain five Lonetusk warriors.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain five Lonetusk crushers.")
	CheckProgress(Quest, QuestGiver, Player)
	
end

function Step4Complete(Quest, QuestGiver, Player)
	if choice == 1 then 
		UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk pounders.")
	elseif choice == 4 then
		UpdateQuestStepDescription(Quest, 3, "I have slain five Lonetusk pounders.")
	elseif choice == 5 then
		UpdateQuestStepDescription(Quest, 3, "I have slain five Lonetusk pounders.")
	end
	CheckProgress(Quest, QuestGiver, Player)

end

function Step5Complete(Quest, QuestGiver, Player)
	if choice == 2 then 
		UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk shamans.")
	elseif choice == 4 then 
		UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk shamans.")
	elseif choice == 6 then 
		UpdateQuestStepDescription(Quest, 3, "I have slain five Lonetusk shamans.")
	end 
	CheckProgress(Quest, QuestGiver, Player)

end

function Step6Complete(Quest, QuestGiver, Player)
	if choice == 3 then 
		UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk prophets.")
	elseif choice == 5 then
		UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk prophets.")
	elseif choice == 6 then 
		UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk prophets.")
	end 
	CheckProgress(Quest, QuestGiver, Player)
end

function LastStep(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have honored the memory of Freeport's fallen by taking revenge on the Lonetusk.")

	AddQuestStepChat(Quest, 5, "Report to Lieutenant Imperidus", 1, "Having wiped out a considerable number of Lonetusk, I should report back to Lieutenant Imperidus in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantImperidus)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end 

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have reported back to the lieutenant.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Lieutenant Imperidus.")

	UpdateQuestDescription(Quest, "I killed Lonetusk orcs. Lots and lots of orcs. Lieutenant Imperidus and I both feel that we're making progress against these foul beasts, but more must be done to ensure Freeport's safety. The lieutenant has further orders for me that will hopefully help us turn the tide. Perhaps my efforts here have brought some measure of peace to the dead citizens of Shoreside.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus013.mp3", "", "", 1435258692, 228785667, Player)
	AddConversationOption(conversation, "I like the sound of this plan.", "dlg_6_3")
	StartConversation(conversation, QuestGiver, Player, "The surest way to take the fight out of the orcs is to thin their numbers. We have to show we will not tolerate their presence anymore. I need you to make a serious dent in the Lonetusk population. The streets of Shoreside must swell with the blood of these brutes.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end