--[[
	Script Name		:   Quests/FallenGate/charge_of_the_leatherfoot_brigade__tippytoe.lua
	Script Purpose	:	Handles the quest, "Charge of the Leatherfoot Brigade - Tippytoe"
	Script Author	:	premierio015
	Script Date		:	09.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	The Sarge(1190020)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to scout around for a dark, shadowy room", 10, "I've been given orders from the ghost to scout out the area, as if I were Special Agent Tippytoe.", 11, -1, 0, -56, 119 )
		AddQuestStepZoneLoc(Quest, 2, "I need to scout around for a trading pit in a marketplace.", 10, "I've been given orders from the ghost to scout out the area, as if I were Special Agent Tippytoe.", 11, 73, 6, -87, 119)
	AddQuestStepZoneLoc(Quest, 3, "I need to scout around for a water supply.", 10, "I've been given orders from the ghost to scout out the area, as if I were Special Agent Tippytoe.", 11, -28, 7, -94, 119)

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/the_sarge/fallengate/qst_the_sarge002.mp3", "", "", 451430790, 1713505088, Player)
	AddConversationOption(conversation, "I'm not Tippytoe!  I'm... you're not listening, are you?  Fine, I'll do it.")
	StartConversation(conversation, QuestGiver, Player, "That's what I wanna hear! I'm entrustin' you with these de-active-maker-code thingies them gnomes gave us in case something goes wrong. You keep them close, got it? Now get in there and find us a good place to put the... the thingamajig. Check for shadowy rooms, their market-stall pit, or maybe a water supply, got it? And don't get caught by those wicked elves. Got it?")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a dark, shadowy room swirling with smoke.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found a trading pit in the ruins of a former market.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a large pool of water surrounded by the undead.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Sarge's ghost")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with the Sarge again, but he didn't remember me speaking with him.")

	UpdateQuestDescription(Quest, "I've scouted the areas that the Sarge mentioned, but it didn't make much of a difference to him")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5308, 1) and QuestStepIsComplete(Player, 5308, 2) and QuestStepIsComplete(Player, 5308, 3) then
        	UpdateQuestTaskGroupDescription(Quest, 1, "I've scouted the area and found nothing but dead beings.")
    	AddQuestStepChat(Quest, 4, "I need to speak with the Sarge's ghost", 10, "Now that I've found the areas that the Sarge's ghost sent Tippytoe to find, maybe I should return to him.", 11, 1190020)
    	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

