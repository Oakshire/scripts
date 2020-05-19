--[[
	Script Name	: Quests/Darklight/public_service.lua
	Script Purpose	: Handles the quest, "Public Service"
	Script Author	: Scatman
	Script Date	: 2009.02.03
	
	Zone       : Darklight Wood
	Quest Giver: Laexyra Y'Barriath
	Preceded by: Purposeful Trinkets (purposeful_trinkets.lua)
	Followed by: A Friendly Reminder (a_friendly_reminder.lua)
--]]


function Init(Quest)
	-- Beaded Belt of Persistance
	-- Sacrosanct Signet
	-- Botanical Gloves


	AddQuestStepKill(Quest, 1, "I need to kill eight purulent defenders.", 8, 100, "I need to kill a number of undead soldiers north of T'Vatar Post.", 611, 340117, 340126)
	AddQuestStepKill(Quest, 2, "I need to kill five moldering soldiers.", 5, 100, "I need to kill a number of undead soldiers north of T'Vatar Post.", 611, 340114, 340118)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedDefenders")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedSoldiers")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra011.mp3", "", "", 370299149, 331491163, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Return to me when you are finished.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedDefenders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the purulent defenders.")
	
	if QuestIsComplete(Player, 98) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step2_complete_killedSoldiers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain the moldering soldiers.")
	
	if QuestIsComplete(Player, 98) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the undead soldiers for Laexyra.")
	
	AddQuestStepChat(Quest, 3, "I need to speak with Laexyra Y'Barriath.", 1, "I should return to Laexyra Y'Barriath now that I have thinned out the undead.", 0, 340109)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have thinned out the undead population north of T'Vatar Post.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedDefenders(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedSoldiers(Quest, QuestGiver, Player)
	end
end
