--[[
	Script Name		:	smugglers_secrets.lua
	Script Purpose	:	Handles the quest, "Smugglers' Secrets"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	07.01.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Receive the courier costume from Tiff", 1, "Tiff cannot personally investigate the outpost, any longer.", 11, 330213)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
            conversation = CreateConversation()
           PlayAnimation(QuestGiver, 11882)
           AddConversationOption(conversation, "I can do that.")
             StartConversation(conversation, QuestGiver, Player, "Clues, of course!  Who is funding 'em.  What're they shippin'.  That kinda' stuff.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have been given the courier costume from Tiff.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Tiff.")
        GiveQuestItem(Quest, Player, "I have spoken to Tiff.", 130009)
	AddQuestStep(Quest, 2, "With the courier costume on, I should investigate the Blackshield Smugglers' outpost", 1, 100, "I am to go investigate who and what is funding the growth of the Blackshield Smugglers.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The smugglers mistook me for the actual courier!")
	UpdateQuestTaskGroupDescription(Quest, 2, "The smugglers mistook me for the actual courier, and gave me a scroll to deliver.")
        GiveQuestItem(Quest, Player, "The smugglers mistook me for the actual courier, and gave me a scroll to deliver.", 9263)

	AddQuestStepChat(Quest, 3, "I expect Tiff will be rather pleased with this scroll", 1, "I should return to Tiff with this scroll, right away!", 11, 330213)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Tiff was unable to open the scroll.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Tiff was unable to open the magically sealed scroll, but she was able to place a tracking potion on it.")

	AddQuestStepChat(Quest, 4, "I need to meet whatever shady character shows at the Pride Lake rendezvous while still wearing the courier costume", 1, "I am to deliver the scroll to Pride Lake, so that Tiff can track the scroll's destination.", 11, 330296)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I gave the sealed scroll to the shady Dark Elf that appeared at the rendezvous point.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I gave the sealed scroll to the shady Dark Elf that appeared at the rendezvous point.")

	AddQuestStepChat(Quest, 5, "I should return to Tiff", 1, "I hope Tiff is satisfied with my delivery.", 11, 330213)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I spoke to Tiff.")
	UpdateQuestTaskGroupDescription(Quest, 5, "Although the mystery was not solved, I survived the delivery and Tiff rewarded me for the help I was able to provide.")

	UpdateQuestDescription(Quest, "Although the mystery behind the Blackshield Smugglers' growth was not solved, I survived the task and Tiff rewarded me for the help I was able to provide.")
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
