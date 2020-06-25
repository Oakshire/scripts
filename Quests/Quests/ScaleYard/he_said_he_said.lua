--[[
	Script Name	: Quests/ScaleYard/he_said_he_said.lua
	Script Purpose	: Handles the quest, "He said, he said"
	Script Author	: Xanibunib	
	Script Date	: 2009.03.13

	
	Zone       : The Scale Yard
	Quest Giver: Brood Matron Vrim Malthyk
	QuestID #	: 341
	Preceded by: A Puppy for Your Potion
	Followed by: Paying Homage to the Past
--]]


function Init(Quest)

	-- Brood Matron's Private Reserve
	-- Kunark Krisps
		
	AddQuestStepChat(Quest, 1, "I must speak with Tristan. He is standing near the Heated Stone Inn.", 1, "I need to manipulate two Barbarians into hating each other.", 0, 1390015)

	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Tristan") 

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance (Player, QuestGiver) < 30 then
			FaceTarget (QuestGiver, Player)
			conversation = CreateConversation()
					
			AddConversationOption(conversation, "Then, I'm off!")
			StartConversation(conversation, QuestGiver, Player, "No, that should be enough to send thouse two off the deep end. You should be able to find Tristan near the Heated Stone Inn and Wesley tends to lurk around the South Freeport Gate.")
		end
	end
end

function Declined(Quest, GuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1_Complete_Tristan(Quest, QestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Tristan.")
	
	AddQuestStepChat(Quest, 2, "I must speak with Wesley Tundrafoot. He is standing near the South Freeport gate.", 1, "I need to manipulate two Barbarians into hating each other.", 0, 1390026)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_Wesley")
end

function Step2_Complete_Wesley(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Sucess! Tristan and Wesley are furious at one another!")
	UpdateQuestTaskGroupDescription(Quest, 1, "Sucess! Tristan and Wesley are furious at one another!")
	
	AddQuestStepChat(Quest, 3, "These two Barbarians have completely fallen for my ruse. I must report back to Vrim.", 1, "I need to speak with Vrim", 0, 1260003)
	AddQuestStepCompleteAction(Quest, 3, "Step3_QuestComplete")
end

function Step3_QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "Success! I have fooled the Barbarians and turned them agaisnt one another.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_Tristan(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_Wesley(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_QuestComplete(Quest, QuestGiver, Player)
	end
end