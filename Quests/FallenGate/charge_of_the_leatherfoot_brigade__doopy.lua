--[[
	Script Name		:	Quests/FallenGate/charge_of_the_leatherfoot_brigade__doopy.lua
	Script Purpose	:	Handles the quest, "Charge of the Leatherfoot Brigade - Doopy"
	Script Author	:	premierio015
	Script Date		:	10.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	The Sarge(1190020)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to get a spectral badge from a blighted denizen.", 1, 10, "I doubt this will make much of a difference, but I might as well give it a try.  I should try to find these badges on the undead Teir'Dal the Sarge mentioned.", 1268, 1190039, 1190068)
		AddQuestStepKill(Quest, 2, "I need to get a spectral badge from a blighted shopkeeper.", 1, 100, "I doubt this will make much of a difference, but I might as well give it a try.  I should try to find these badges on the undead Teir'Dal the Sarge mentioned.", 1268, 1190037, 1190041, 1190049, 1190113)
	AddQuestStepKill(Quest, 3, "I need to get a spectral badge from a blighted outcast.", 1, 100, "I doubt this will make much of a difference, but I might as well give it a try.  I should try to find these badges on the undead Teir'Dal the Sarge mentioned.", 1268, 1190038)

	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/the_sarge/fallengate/qst_the_sarge005.mp3", "", "", 1573437629, 1012284227, Player)
	AddConversationOption(conversation, "But they're all dead!  How are you supposed... fine, I'll do it.")
	StartConversation(conversation, QuestGiver, Player, "Here's what you gotta do, Doopy. Go in there and get the attention of the important looking elves and lure them back here. Try to get the soldiers, or witches, heck, even a shopkeeper will do. No! Don't think of fighting them, son. You'll get yerself killed! When you bring them back here, we'll see if they have one of those trader's medallions on them! Now get out there, son!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a spectral badge on a blighted denizen.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found a spectral badge on a blighted shopkeeper.")

   CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a spectral badge on a blighted outcast.")
   CheckProgress(Quest, QuestGiver, Player)
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Sarge's ghost")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with the Sarge again, but he still didn't remember me speaking with him.")

	UpdateQuestDescription(Quest, "I've scouted the areas that the Sarge mentioned, but it didn't make much of a difference to him.  <br>")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5309, 1) and QuestStepIsComplete(Player, 5309, 2) and QuestStepIsComplete(Player, 5309, 3) then
        	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a spectral badge from each one of the Teir'Dal")
    	AddQuestStepChat(Quest, 4, "I need to speak with the Sarge's ghost", 1, "Now that I've found these badges, maybe I should bring them back to the Sarge as well.  Perhaps this time he'll notice me and stop replaying his memories.", 11, 1190020)
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


