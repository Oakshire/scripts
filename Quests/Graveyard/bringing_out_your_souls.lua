--[[
	Script Name	: bring_out_your_souls.lua
	Script Purpose	: Handles the quest, "Bring Out Your Souls"
	Script Author	: Scatman
	Script Date	: 2009.07.12
	
	Zone       : The Graveyard
	Quest Giver: Zekvila Dizelk
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten undead and trap their souls.", 10, 100, "I should kill some undead like Zekvila asked of me. I'll hold out the crystal as each one is destroyed.", 611, 1250024, 1250028, 1250035, 1250042, 1250080, 1250068, 1250059, 1250021, 1250029, 1250063, 1250057, 1250081, 1250055, 1250043, 1250064, 1250053, 1250036, 1250087, 1250060, 1250041, 1250056, 1250046, 1250052, 1250049, 1250038, 1250091, 1250026, 1250006, 1250016, 1250037, 1250075, 1250012, 1250019, 1250020, 1250017, 1250097, 1250090, 1250079, 1250066, 1250034, 1250031)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledUndead")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I understand. I'll be back when it's done.")
	StartConversation(conversation, QuestGiver, Player, "You choose wisely, friend. I shall use the lessons taught to the Iksar by our dead emperor, Venril Sathir. This is where you come in ... the magic of the dead will put a stop to Ithelz's pompous belief that he is our new ruler.  I will tell you only once: take the crystal, go to the graveyard, and kill the undead knights. As the beasts die, hold out the crystal and collect their souls. Return when you fill the crystal.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledUndead(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the undead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed ten undead and collected their souls.")
	
	AddQuestStepChat(Quest, 2, "I need to speak with Zekvila.", 1, "I should return to Zekvila the crystal as she had commanded.", 0, 1250069)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)	
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Zekvila.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Zekvila the crystal filled with souls.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "Zekvila was pleased with the crystal. She claims that it will help her topple her rival's rule. I think I may ask her later if she needs any more help, in case she actually is successful.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledUndead(Quest, QuestGiver, Player)
	end
end
