--[[
	Script Name		:	Quests/Commonlands/StartingtheNegotiations.lua
	Script Purpose	:	Handles the quest, "Starting the Negotiations"
	Script Author	:	premierio015
	Script Date		:	03.01.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Brandus Levine
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to eliminate Dervish cutthroats", 3, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330092, 330104)
        AddQuestStepKill(Quest, 2, "I need to remove the Dervish thug threat", 3, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330105, 330096)
        AddQuestStepKill(Quest, 3, "I need to quell the Dervish zealots's fervor", 3, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330098)
        AddQuestStepKill(Quest, 4, "I need to exact justice on Dervish ruffians", 2, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330103, 330100)
        AddQuestStepKill(Quest, 5, "I need to execute Dervish assassins", 2, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330102, 330099)
        AddQuestStepKill(Quest, 6, "I need to teach Dervish heretics the error of their ways", 2, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330095, 330107)
        AddQuestStepKill(Quest, 7, "I need to dispose of Dervish outlanders", 2, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330101, 330093)
        AddQuestStepKill(Quest, 8, "I need to rid the lands of Dervish thaumaturges", 2, 100, "I should eliminate a few Dervishes from the Commonlands.  They can be found on the far Western end of the Commonlands.", 611, 330106, 330094)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
        AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
        AddQuestStepCompleteAction(Quest, 3, "Step2Complete")
        AddQuestStepCompleteAction(Quest, 4, "Step2Complete")
        AddQuestStepCompleteAction(Quest, 5, "Step2Complete")
        AddQuestStepCompleteAction(Quest, 6, "Step2Complete")
        AddQuestStepCompleteAction(Quest, 7, "Step2Complete")
        AddQuestStepCompleteAction(Quest, 8, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
        PlayFlavor(QuestGiver, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine015.mp3", "", "", 1439836789, 4202652757, Player)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Right.")
        StartConversation(conversation, QuestGiver, Player, "You'll be back when THEY'RE done, heh.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I feel I have eliminated enough of the Dervish cutthroats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I feel I have eliminated enough of the Dervish cutthroats.")
        CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I feel I have eliminated enough of the Dervish thugs.")

        CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I feel I have eliminated enough of the Dervish zealots.")

	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I feel I have eliminated enough of the Dervish ruffians.")

	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I feel I have eliminated enough of the Dervish assassins.")

	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I feel I have eliminated enough of the Dervish heretics.")

	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I feel I have eliminated enough of the Dervish outlanders.")

	
	CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I feel I have eliminated enough of the Dervish thaumaturges.")

        CheckProgress(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I have spoken with Brandus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Brandus about the next step in the plan.")

	UpdateQuestDescription(Quest, "I have removed quite a number of Dervishes from the Commonlands.  After speaking with Brandus his temper seems to have dissipated some and in his clearer thinking he is working on the next step in the negotiations.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 424, 1) and QuestStepIsComplete(Player, 424, 2) and QuestStepIsComplete(Player, 424, 3) and QuestStepIsComplete(Player, 424, 4) and  QuestStepIsComplete(Player, 424, 5) and QuestStepIsComplete(Player, 424, 6) and QuestStepIsComplete(Player, 424, 7) and QuestStepIsComplete(Player, 424, 8)  then
       UpdateQuestTaskGroupDescription(Quest, 1, "I found the Dervishes and eliminated several of their number.")
       AddQuestStepChat(Quest, 9, "I should return to Brandus", 1, "I have eliminated enough Dervish cutthroats.  I should return to Brandus to see what his next plan is.", 11, 330149)
       AddQuestStepCompleteAction(Quest, 9, "QuestComplete")

end
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
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
