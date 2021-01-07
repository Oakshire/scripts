--[[
	Script Name		:	Quests/Commonlands/ProofisinthePudding.lua
	Script Purpose	:	Handles the quest, "Proof is in the Pudding"
	Script Author	:	premierio015
	Script Date		:	06.01.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	J.P. Feterman
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
    AddQuestStepLocation(Quest, 1, "I need to find The Graveyard entrance north of the Freeport gates", 25, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, -1363, -83, -345)
	AddQuestStepLocation(Quest, 2, "I need to find an old tower far to the southeast, near a river", 25, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11,  -1330, -52, 577)
	AddQuestStepLocation(Quest, 3, "I need to find the killer wasp mound southwest of the Crossroads", 25, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, -0, -35, 21)
	AddQuestStepLocation(Quest, 4, "I need to find The Wailing Caves north of the Crossroads", 25, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11, -209, -43, -915)
	AddQuestStepLocation(Quest, 5, "I need to find the entrance to Nektulos Forest far to the west", 25, "I am tasked with exploring The Commonlands. I am to find the entrance to The Graveyard, a tower far to the southeast of the crossroads near a river, the killer wasp mound, the Wailing Caves and the entrance to Nektulos Forest.", 11,  1116, -42, -636)

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
        conversation = CreateConversation()
          AddConversationOption(conversation, "Alright.")
           StartConversation(conversation, QuestGiver, Player, "Some day a long, long time from now, when you're as experienced as I, you'll know these places like the back of your hand. Run along now!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found The Graveyard.")
     

	 CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the old tower near the river.")
       

	 CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found the killer wasp mound southwest of the Crossroads.")
       

	 CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found The Wailing Caves.")
       

	 CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found the entrance to Nektulos.")

    CheckProgress(Quest, QuestGiver, Player)
end



function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 417, 1) and QuestStepIsComplete(Player, 417, 2) and QuestStepIsComplete(Player, 417, 3) and QuestStepIsComplete(Player, 417, 4) and  QuestStepIsComplete(Player, 417, 5) then
         UpdateQuestTaskGroupDescription(Quest, 1, "I was able to locate all of the areas Feterman spoke of.")
     	AddQuestStepChat(Quest, 6, "I should speak with J.P. Feterman", 1, "I have explored The Commonlands. I should return to J.P. Feterman.", 11, 330261)
	    AddQuestStepCompleteAction(Quest, 6, "QuestComplete")

end
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I spoke with J.P. Feterman.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to J.P. Feterman at the Crossroads.")

	UpdateQuestDescription(Quest, "I have explored the commonlands.  I should return to J.P. Feterman at the Crossroads.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

