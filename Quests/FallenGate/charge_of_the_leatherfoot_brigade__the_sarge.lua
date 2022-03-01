--[[
	Script Name		:	Quests/FallenGate/charge_of_the_leatherfoot_brigade__the_sarge.lua
	Script Purpose	:	Handles the quest, "Charge of the Leatherfoot Brigade - The Sarge"
	Script Author	:	premierio015
	Script Date		:	10.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	The Sarge (1190020)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find Special Agent Tippytoe... if there's anything left of him.", 1, 100, "I know none of this will make a difference, but I should try to find Special Agent Tippytoe.  From the wreckage of this place, he could be anywhere!", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/the_sarge/fallengate/qst_the_sarge011.mp3", "", "", 1990431638, 87558142, Player)
	AddConversationOption(conversation, "- Sure... I'll find this halfling... not that it really matters, does it?")
	StartConversation(conversation, QuestGiver, Player, "I know you're scared, kid! I'm scared, too! All I ever wanted was to settle down on a jum-jum farm, eat jum-jum pie all day, watch the sun set with my sweetheart... but we all know why we're here. And that means we leave no one behind. Go find Lumpy--Tippytoe--whatever he calls himself! Bring him and those codes back! Remember our motto: Leatherfoot Forever!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found Special Agent Tippytoe's remains.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the remains of Special Agent Tippytoe.  It seems he stopped for a short lunch and was found.")

	AddQuestStep(Quest, 2, "I need to see if I can open the box next to Tippytoe's remains", 1, 100, "The box next to Tippytoe looks like it might be what held the de-activation codes.  Maybe I should look inside.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've opened the box")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found an odd spectral ring inside the box.")

	AddQuestStepChat(Quest, 3, "I need to speak with the Sarge's ghost", 1, "I should return to the Sarge and see how this all ends.", 11, 1190020)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've spoken with the Sarge's ghost")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've spoken with the Sarge one last time.")

	UpdateQuestDescription(Quest, "It seems that at the last moments of Sarge's life, he took the device and ran deep into the former city of Neriak.  From what is left of the place, it seems he managed to do what he intended.")
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

