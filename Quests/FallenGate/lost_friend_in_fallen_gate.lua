--[[
	Script Name		:	Quests/FallenGate/lost_friend_in_fallen_gate.lua
	Script Purpose	:	Handles the quest, "Lost Friend in Fallen Gate"
	Script Author	:	premierio015
	Script Date		:	07.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	Logan Belchbottom (1190017)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Find Mr. Burpbelly", 1, 100, "Logan was separated from Mr. Burpbelly in a cavern with Trolls and Ogres.  This can't be good.  I'll look around and see if I can find him, or what's left of him.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom003.mp3", "", "", 3755751992, 2875160831, Player)
	AddConversationOption(conversation, "I'll do what I can.")
	StartConversation(conversation, QuestGiver, Player, "Oh, thank you!  You are a god send!  We became separated in a large cavern with trolls and ogres. He stands a few sprockets taller than me and goes by the name Mr. Burpbelly.  Please hurry so we can get out of this wretched place.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found what's left of Mr. Burpbelly")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Mr. Burpbelly in a cauldron.  Looks like he wasn't as fortunate as Logan, speaking of which I should inform Logan of what I've found.")

	AddQuestStepChat(Quest, 2, "Return to Logan Belchbottom", 1, "I've found a corpse in a cauldron looks like the Trolls where making something to eat.  The corpse had a necklace that had the name &quot;Burpbelly&quot; on it.  I should inform Logan.", 11, 1190017)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Logan")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Logan and told him what I saw.  Needless to say he was grief stricken.")

	UpdateQuestDescription(Quest, "I found Logan Belchbottom's friend in a cauldron.  Looks like the Trolls and Ogres were making a stew.  I told Logan what I saw and he didn't seem to take the news very well.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
