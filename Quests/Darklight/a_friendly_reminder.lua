--[[
	Script Name	: Quests/Darklight/a_friendly_reminder.lua
	Script Purpose	: Handles the quest, "A Friendly Reminder"
	Script Author	: Scatman
	Script Date	: 2009.02.03
	
	Zone       : Darklight Wood
	Quest Giver: Laexyra Y'Barriath
	Preceded by: Public Service (public_service.lua)
	Followed by: Reaping (reaping.lua)
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I need to remind Harnen Taptha that Laexyra Y'Barriath was right.", 1, ".", 0, 340127)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToHarnen")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra014.mp3", "", "", 1254557945, 2860942006, Player)
	AddConversationOption(conversation, "I'll see.")
	StartConversation(conversation, QuestGiver, Player, "I think you'll find him quite amusing.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToHarnen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Harnen Taptha has attacked me, I must kill him.")
	
	AddQuestStepKill(Quest, 2, "I must killed Hernen Taptha.", 1, 100, ".", 611, 340127)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedHarnen")
end

function step2_complete_killedHarnen(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed Harnen Taptha.")
	
	AddQuestStepChat(Quest, 3, "I need to return to Laexyra Y'Barriath.", 1, ".", 0, 340109)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Haren Taptha attacked me and I killed him. Laexyra assures me that he'll be back.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToHarnen(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedHarnen(Quest, QuestGiver, Player)
	end
end
