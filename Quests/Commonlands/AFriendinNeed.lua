--[[
	Script Name		:	Quests/Commonlands/AFriendinNeed.lua
	Script Purpose	        :	Handles the quest, "A Friend in Need"
	Script Author	        :	premierio015
	Script Date		:	16.11.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Nethet
	Preceded by		:	The Mysterious Missing Shipment
	Followed by		:	Collecting On What Is Earned
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should find Nikora", 1, "I should try and find Nikora near the Blackshield smuggling docks.  It sounds as if the ratonga is in some trouble with the group.", 11, 330285 )
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra003.mp3", "", "", 2440483082, 3137658382, Spawn)
         conversation = CreateConversation()
         AddConversationOption(conversation, "I'll be right back.")
         StartConversation(conversation, QuestGiver, Player, "I knows.")
end



function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Nikora.")
        UpdateQuestTaskGroupDescription(Quest, 1, "I have found Nikora.")

	AddQuestStepKill(Quest, 2, "I need to find Blackshield assassins looking for Nikora", 20, 100, "I should try and find Nikora near the Blackshield smuggling docks.  It sounds as if the ratonga is in some trouble with the group.", 611, 330001, 330667)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed all the assassins I could find.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found Nikora and helped him by getting rid of several assassins that had been sent after him by the Blackshield smugglers.")

	AddQuestStepChat(Quest, 3, "I should return to Nethet", 1, "Nikora has asked me to return to Nethet and ask what he can do to help now that his life isn't in immediate danger.", 11, 331135)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have returned to Nethet and he gave me a note to try and negotiate with the Blackshield smugglers.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Nethet and he asked me to deliver a note to Jereth Blackshield.")

	AddQuestStepChat(Quest, 4, "I must deliver the note to Jereth Blackshield", 1, "I am supposed to deliver a note to Jereth Blackshield.  I should be careful around this group of thieves and smugglers.", 11, 330281)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have delivered the note from Nethet to Jereth Blackshield.")
        UpdateQuestTaskGroupDescription(Quest, 4, "I have delivered the note from Nethet to Jereth Blackshield.")

	AddQuestStepKill(Quest, 5, "I have to defeat Jereth's thugs", 3, 100, "I am supposed to deliver a note to Jereth Blackshield.  I should be careful around this group of thieves and smugglers.", 11, 330309, 330310, 330308)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have defeated Jereth's thugs in a duel to the death.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I've delivered the note and avoided death at the hands of some of the Blackshield thugs.")

	AddQuestStepChat(Quest, 6, "I need to return to Nethet", 1, "Nethet's ''negotiations'' nearly got me killed.  I need to return to him and find out why he gambled with my life.", 11, 331135)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have spoken with Nethet and am through helping his friend Nikora out of trouble.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have spoken with Nethet and was rewarded.  I'm glad to put this entire thing behind me.")

	UpdateQuestDescription(Quest, "I've helped Nethet and his friend by killing assassins and fighting in a personal duel to the death with several thugs.  Nethet paid me well, but it still does not quite make up for the dangerous position he put me in.")
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


