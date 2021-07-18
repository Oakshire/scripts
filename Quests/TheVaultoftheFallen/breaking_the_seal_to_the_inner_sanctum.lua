--[[
	Script Name		:	Quests/TheVaultoftheFallen/breaking_the_seal_to_the_inner_sanctum.lua
	Script Purpose	:	Handles the quest, "Breaking the Seal to the Inner Sanctum"
	Script Author	:	premierio015
	Script Date		:	17.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Prestige
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
    Choice(Quest)
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Choice(Quest)
local choice = MakeRandomInt(1, 10)
if choice == 1 then
Step0Complete(Quest, QuestGiver, Player)
elseif choice == 2 then
Step3Complete(Quest, QuestGiver, Player)
elseif choice == 3  then
Step6Complete(Quest, QuestGiver, Player)
elseif choice == 4 then
  Step9Complete(Quest, QuestGiver, Player)  
 elseif choice == 5 then
  Step12Complete(Quest, QuestGiver, Player) 
  elseif choice == 6 then
 Step15Complete(Quest, QuestGiver, Player) 
 elseif choice == 7 then
 Step18Complete(Quest, QuestGiver, Player)     
 elseif choice == 8 then
   Step21Complete(Quest, QuestGiver, Player)   
elseif choice == 9 then
     Step24Complete(Quest, QuestGiver, Player)    
elseif choice == 10 then     
     Step27Complete(Quest, QuestGiver, Player)
end
   end
-- 1 


function Step0Complete(Quest, QuestGiver, Player)
	AddQuestStepKill(Quest, 1, "The ancient dragoon Z'Talis holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420006)
    AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 2, "The ancient dragoon N'Malas holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420005)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 3, "The ancient dragoon L'Pazn holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420004)
	AddQuestStepCompleteAction(Quest, 3, "Step30Complete")
end

-- 2

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 4, "The ancient dragoon Vyth holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420049)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end



function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 5, "The ancient dragoon K'Narik holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420011)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 6, "The ancient dragoon S'Vol holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420050)
	AddQuestStepCompleteAction(Quest, 6, "Step30Complete")
end

-- 3

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 7, "The ancient dragoon V'Ghen holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420009)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end



function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 8, "The ancient dragoon L'Abril holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420010)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 9, "The ancient dragoon G'Zel holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420008)
	AddQuestStepCompleteAction(Quest, 9, "Step30Complete")
end

-- 4

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have recovered the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 10, "The ancient dragoon L'Na holds the first seal.", 1, 100, "The first seal is held by the power of an ancient dragoon.", 498, 6420007)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end



function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I have recovered the seal from the ancient dragoon.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found and taken the seal from the ancient dragoon.")

	AddQuestStepKill(Quest, 11, "The old dragoon T'Vex holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420051)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 12, "The old dragoon T'Vem holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420052)
	AddQuestStepCompleteAction(Quest, 12, "Step30Complete")
end

-- 5

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 13, "The old dragoon V'Lask holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420053)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end



function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 14, "The old dragoon V'Resh holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420054)
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 15, "The old dragoon T'Kix holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420055)
	AddQuestStepCompleteAction(Quest, 15, "Step30Complete")
end

-- 6

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 16, "The old dragoon C'Luss holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420056)
	AddQuestStepCompleteAction(Quest, 16, "Step16Complete")
end



function Step16Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 16, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 17, "The old dragoon K'Szan holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420012)
	AddQuestStepCompleteAction(Quest, 17, "Step17Complete")
end

function Step17Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 17, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 18, "The old dragoon K'Ixl holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420013)
	AddQuestStepCompleteAction(Quest, 18, "Step30Complete")
end

-- 7

function Step18Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 18, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 19, "The old dragoon Nezzka holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420057)
	AddQuestStepCompleteAction(Quest, 19, "Step19Complete")
end



function Step19Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 19, "I have recovered the seal from the old dragoon.")

	AddQuestStepKill(Quest, 20, "The old dragoon Din'a holds the second seal.", 1, 100, "The second seal is held by an old dragoon.", 546, 6420058)
	AddQuestStepCompleteAction(Quest, 20, "Step20Complete")
end

function Step20Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 20, "I have recovered the seal from the old dragoon.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found and taken the seal from the old dragoon.")

	AddQuestStepKill(Quest, 21, "The legendary dragoon S'Lon holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420059)
	AddQuestStepCompleteAction(Quest, 21, "Step30Complete")
end

-- 8

function Step21Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 21, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 22, "The legendary dragoon S'Nez holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420060)
	AddQuestStepCompleteAction(Quest, 22, "Step22Complete")
end

-- 8

function Step22Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 22, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 23, "The legendary dragoon B'Lavin holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420061)
	AddQuestStepCompleteAction(Quest, 23, "Step23Complete")
end

function Step23Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 23, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 24, "The legendary dragoon E'Tru holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 1)
	AddQuestStepCompleteAction(Quest, 24, "Step30Complete")
end

-- 9

function Step24Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 24, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 25, "The legendary dragoon Z'Den holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420066)
	AddQuestStepCompleteAction(Quest, 25, "Step25Complete")
end



function Step25Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 25, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 26, "The legendary dragoon J'Len holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420065)
	AddQuestStepCompleteAction(Quest, 26, "Step26Complete")
end

function Step26Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 26, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 27, "The legendary dragoon N'Xry holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420064)
	AddQuestStepCompleteAction(Quest, 27, "Step30Complete")
end

-- 10

function Step27Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 27, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 28, "The legendary dragoon K'Gex holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420062)
	AddQuestStepCompleteAction(Quest, 28, "Step28Complete")
end



function Step28Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 28, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 29, "The legendary dragoon V'Kar holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420063)
	AddQuestStepCompleteAction(Quest, 29, "Step29Complete")
end

function Step29Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 29, "I have recovered the seal from the legendary dragoon.")

	AddQuestStepKill(Quest, 30, "The legendary dragoon S'Zjin holds the third seal.", 1, 100, "The third seal is held by a legendary dragoon.", 474, 6420014)
	AddQuestStepCompleteAction(Quest, 30, "Step30Complete")
end

------------------------------------------------------------------------------

function Step30Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 30, "I have recovered the seal from the legendary dragoon.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found and taken the third seal from the legendary dragoon.")

	AddQuestStepChat(Quest, 31, "The keeper will unlock the doorway to the inner sanctum if I return the 3 seals to it.", 1, "The keeper will unlock the inner sanctum if I return the seals to it.", 879, 6420003)
	AddQuestStepCompleteAction(Quest, 31, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 31, "I have returned the seals to the keeper")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have returned the seals to the keeper.")

	UpdateQuestDescription(Quest, "I have found the seals to unlock the doorway into the Inner Sanctum of Bone.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step0Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 12 then
		Step11Complete(Quest, QuestGiver, Player)
	elseif Step == 13 then
		Step12Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 15 then
		Step14Complete(Quest, QuestGiver, Player)
	elseif Step == 16 then
		Step15Complete(Quest, QuestGiver, Player)
	elseif Step == 17 then
		Step16Complete(Quest, QuestGiver, Player)
	elseif Step == 18 then
		Step17Complete(Quest, QuestGiver, Player)
	elseif Step == 19 then
		Step18Complete(Quest, QuestGiver, Player)
	elseif Step == 20 then
		Step19Complete(Quest, QuestGiver, Player)
	elseif Step == 21 then
		Step20Complete(Quest, QuestGiver, Player)
	elseif Step == 22 then
		Step21Complete(Quest, QuestGiver, Player)
	elseif Step == 23 then
		Step22Complete(Quest, QuestGiver, Player)
	elseif Step == 24 then
		Step23Complete(Quest, QuestGiver, Player)
	elseif Step == 25 then
		Step24Complete(Quest, QuestGiver, Player)
	elseif Step == 26 then
		Step25Complete(Quest, QuestGiver, Player)
	elseif Step == 27 then
		Step26Complete(Quest, QuestGiver, Player)
	elseif Step == 28 then
		Step27Complete(Quest, QuestGiver, Player)
	elseif Step == 29 then
		Step28Complete(Quest, QuestGiver, Player)
	elseif Step == 30 then
		Step29Complete(Quest, QuestGiver, Player)
	elseif Step == 31 then
		QuestComplete(Quest, QuestGiver, Player)

	end
end


