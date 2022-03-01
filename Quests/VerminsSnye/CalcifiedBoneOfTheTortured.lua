--[[
	Script Name	:	Quests/VerminsSnye/CalcifiedBoneOfTheTortured.lua
	Script Purpose	:	Handles the quest "Calcified Bone of the Tortured"
	Script Author	:	premierio015
	Script Date	:	03.05.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone		:	Vermin's Snye
	Quest Giver	:	
	Preceded by	:	None
	Followed by	:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find someone that can make use of this bone.", 1, "I need to find someone that could tell me what to do with this bone.  Maybe someone who knows a little about Lika the Tortured can help me out.", 322, 2000007)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	
end

function Declined(Quest, QuestGiver, Player)
	
end

function Deleted(Quest, QuestGiver, Player)
	
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Brawler Bently in the Vermin's Snye.")
	UpdateQuestTaskGroupDescription(Quest, 1, "After speaking with Brawler Bently, I have a clearer understanding of what to do next.")

	AddQuestStepChat(Quest, 2, "I need to find Dylan Ironforge in North Qeynos.", 1, "Brawler Bently said to take the bone to Dylan Ironforge in North Qeynos.  He mentioned Dylan should be able to work with it and he owed Bently a favor anyway.", 11, 2220054)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the bone to Dylan Ironforge.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the bone to Dylan Ironforge to shape.")

	UpdateQuestDescription(Quest, "I was able to get a weapon made by Dylan Ironforge from the calcified bone.  I talked to Brawler Bently about the object and he directed me to Dylan.  He said Dylan owed him a favor and he'd do the work for me to even the score.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

