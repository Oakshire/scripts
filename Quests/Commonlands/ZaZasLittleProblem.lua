--[[
	Script Name		:	Quests/Commonlands/ZaZasLittleProblem.lua
	Script Purpose	:	Handles the quest, "ZaZa's Little Problem"
	Script Author	:	premierio015
	Script Date		:	20.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands, Fallen Gate
	Quest Giver		:	ZaZa Lenska
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need monitor behemoth tears from the Commonlands.", 2, 100, "I need to collect the required ingredients for ZaZa's potion.", 176, 330065, 330738)
		AddQuestStepKill(Quest, 2, "I need seven vials of coagulated blood from the giant vulrich in the Commonlands.", 7, 100, "I need to collect the required ingredients for ZaZa's potion.", 8, 330087, 330774)
			AddQuestStepKill(Quest, 3, "I need to get four drops of gloom venom from gloom snakes in Fallen Gate.", 4, 100, "I need to collect the required ingredients for ZaZa's potion.", 177, 1190019)


	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
   	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "See you soon.")
	StartConversation(conversation, QuestGiver, Player, "I'm trusting you with the happiness of my marriage.  You are most kind to help poor ZaZa.  I will see you again ... soon.")
	PlayFlavor(NPC, "voiceover/english/zaza_lenska/fprt_hood03/quests/zazalenska/zazalenska004.mp3", "", "", 3780741793, 1494900278)
end



function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I obtained monitor behemoth tears for ZaZa.")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I obtained the vulrich blood for ZaZa.")
end

 function  CheckProgress(Quest, QuestGiver, Player)
      if QuestStepIsComplete(Player, 451, 1) and QuestStepIsComplete(Player, 451, 2) and QuestStepIsComplete(Player, 451, 3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I've obtained the monitor behemoth tears.")
	AddQuestStepChat(Quest, 4, "I need to speak to ZaZa.", 1, "I need to speak with ZaZa Lenska in the Commonlands.", 11, 330051)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
     
 end    
    end


function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I got the venom I needed to complete ZaZa's potion.")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken to ZaZa.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with ZaZa and have been rewarded.")

	UpdateQuestDescription(Quest, "The ingredients are gathered and ZaZa will know soon whether or not her current husband is faithful.  I think.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

