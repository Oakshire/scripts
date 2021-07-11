--[[
	Script Name		:	Quests/FallenGate/charge_of_the_leatherfoot_brigade__frambert.lua
	Script Purpose	:	Handles the quest, "Charge of the Leatherfoot Brigade - Frambert"
	Script Author	:   premierio015
	Script Date		:	10.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	The Sarge
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to smash the first alarm in the marketplace.", 1, 100, "Frambert's duty was to find two separate &quot;alarms&quot; in the marketplaces, possibly in the important looking buildings.  I can only hope these alarms are still around after all these years.", 11)
		AddQuestStep(Quest, 2, "I need to smash the second alarm in the marketplace.", 1, 100, "Frambert's duty was to find two separate &quot;alarms&quot; in the marketplaces, possibly in the important looking buildings.  I can only hope these alarms are still around after all these years.", 11)

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/the_sarge/fallengate/qst_the_sarge008.mp3", "", "", 2152925138, 1149927317, Player)
	AddConversationOption(conversation, "This happened hundred of years ago, ghost!  It won't matter if... fine.  I'll do it.")
	StartConversation(conversation, QuestGiver, Player, "That's the spirit, kid! Now listen close. These dark elves have magical contraptions that can alert the guards on the double. We're gonna make a mad dash to drop the whatchamacallit right in the market, but if they know we're chargin'... well, we won't get too far. You gotta smash these things, got it? Check them big buildings... they probably keep 'em there.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've tried smashing one of the alarms, but it was magically protected.")
  	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've tried smashing one of the alarms, but it was magically protected.")
	
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've spoken with the Sarge's ghost")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with the Sarge again, and I doubt he'll ever pay attention to the fact that I'm not part of his brigade.")

	UpdateQuestDescription(Quest, "I've tried smashing the alarms like Frambert was supposed to do, but was unable to do so.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5310, 1) and QuestStepIsComplete(Player, 5310, 2) then
        	AddQuestStepChat(Quest, 3, "I need to speak with the Sarge's ghost", 1, "Since the alarms weren't destroyed, I can only assume that Frambert was as unsuccessful as I was.  I should return to the Sarge and see if he has anything else to say", 11, 1190020)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've tried smashing the alarms, but they seemed to be invulnerable even after all these years.")
end
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
