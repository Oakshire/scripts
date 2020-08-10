--[[
	Script Name		:	Quests/Freeport/SearchForTheMissing.lua
	Script Purpose	        :	Handles the quest, "Search for the Missing"
	Script Author	        :	premierio015
	Script Date		:	08.08.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	City of Freeport
	Quest Giver		:	a weary Kor shaman
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Search for the froglok the shaman mentioned.", 1, "The froglok shaman has asked that I find his companion out in the Commons.", 11, 5590146)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
         FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()

         PlayFlavor(QuestGiver, "a_weary_kor_shaman/rivervale/a_froglok_kor_shaman006.mp3", "", "", 2271895946, 2901122965, Player)
         AddConversationOption(conversation, "I will find her.")
         StartConversation(conversation, QuestGiver, Player, "Then search the land for my mate Kraofla. She only barely managed to escape the guards when we washed up on the shores of the great barren land beyond these walls. Surely she would have sought the comfort of shade and water.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I.O. Gezlowe has informed me of a new duty.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Before I could search out the froglok, I.O. Gezlowe flagged me down. I now have a new assignment...")

	AddQuestStepKill(Quest, 2, "Search for the froglok the shaman mentioned.", 1, 100, "Intelligence Officer Gezlowe has given me instructions to continue my search for the froglok, but instead of helping it... I must murder it.", 2465, 330291)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found and murdered the froglok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Kraofla's lifeless body rests under the shade of the statues of her beloved Marr.")

	AddQuestStepChat(Quest, 3, "Return to the shaman and tell him of Kraofla's untimely death.", 1, "With Kraofla dead, I'll need to return to the frog and sorrowfully inform it of its mate's passing.", 11, 5590139)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've spoken to the shaman and informed him of Kraofla's death.")
	UpdateQuestTaskGroupDescription(Quest, 3, "The death of his mate has saddened the shaman.")

	UpdateQuestDescription(Quest, "After speaking with I.O. Gezlowe, I managed to hunt down the froglok. Perhaps the shaman didn't catch on with what I did to its mate. It certainly doesn't seem to have.  One thing is for certain, Lucan doesn't want this relic of a race among the living.  <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


