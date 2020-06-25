--[[
	Script Name		:	AStrangeMix.lua
	Script Purpose	:	Handles the quest, "A Strange Mix"
	Script Author	:	jakejp
	Script Date		:	6/14/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local EmptyVial = 46457
local FilledVial = 7641
local AStrangeMix = 314

function Init(Quest)
	AddQuestStep(Quest, 1, "I have not yet filled Geldrani's Vial.", 1, 100, "I must fill Geldrani's Vial with water from the pond in the center of the Druid Rings.", 176)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Geldrani's Vial is now filled with water from the Druid Ring.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have filled Geldrani's Vial with the water he requested.")

	AddQuestStepChat(Quest, 2, "Geldrani should still be near the Highland Outposts. ", 1, "Geldrani will want this water as fresh as possible.  I should return it to him immediately.", 176, 1081108)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "This water appears to be the last thing Geldrani needed.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Geldrani used the vial to water his strange plant.")

	UpdateQuestDescription(Quest, "Geldrani now has the water from the druid rings, and evidently he is going to use it to help grow his plant.  There's something odd about his experiment, but he is quite evasive about it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
FaceTarget(QuestGiver, Player)
conversation = CreateConversation()
	        SummonItem(Player, EmptyVial, 1)

		PlayFlavor(QuestGiver, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Player)
		AddConversationOption(conversation, "All right, then. I will return with the water soon.")
		StartConversation(conversation, QuestGiver, Player, "Indeed. It shouldn't take much more than what would be in that vial, as the water near the rings is quite rich in magical properties.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
    if HasItem(Player, EmptyVial) then 
         RemoveItem(Player, EmptyVial)
    end

    if HasItem(Player, FilledVial) then 
         RemoveItem(Player, FilledVial)
    end
end