--[[
	Script Name	: Quests/Caves/elements_of_a_ritual.lua
	Script Purpose	: Handles the quest, "Elements of a Ritual"
	Script Author	: Scatman
	Script Date	: 2009.10.08
	
	Zone       : The Caves
	Quest Giver: Consul Bree
	Preceded by: Hit Them Where it Hurts (hit_them_where_it_hurts.lua)
	Followed by: High Shaman of the Rockpaw (high_shaman_of_the_rockpaw.lua)
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Emma Torque.", 1, "I need to acquire the object necessary to get a river stone from a river behemoth from Emma Torque.", 0, 1970012)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithEmma")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_012a.mp3", "", "", 2607411936, 2666860100, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Speak with Emma about the river stone. I believe she has been working on something.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithEmma(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Emma Torque.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have acquired the Drawing Ray.")

	AddQuestStepKill(Quest, 2, "I need to collect five crown scales from albino pythons here in the Caves.", 5, 100, "I need to collect the items necessary for the summoning ritual.", 84, 1970013)
	AddQuestStepObtainItem(Quest, 3,  "I need to collect incantation dust from the Rockpaw camps.", 1, 100,  "I need to collect the items necessary for the summoning ritual.", 10,  7103)
	AddQuestStepObtainItem(Quest, 4, "I need to collect a river stone from a river behemoth. I will need to use Emma's device on the remains of one to get the stone.", 1, 100, "I need to collect the items necessary for the summoning ritual.", 769, 10068)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledSnakes")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_GotDust")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_GotStone")
end

function Step2_Complete_KilledSnakes(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected five crown scales.")

	if QuestIsComplete(Player, 225) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_GotDust(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected incantation dust from the Rockpaw camps.")

	if QuestIsComplete(Player, 225) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_GotStone(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected a river stone.")

	if QuestIsComplete(Player, 225) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have collected the necessary items.")

	AddQuestStepChat(Quest, 5, "I need to return to Consul Bree.", 1, "I need to return to Consul Bree now that I have collected all of the needed items.", 0, 1970010)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- Incantation Dust
	while HasItem(Player, 7103) do
		RemoveItem(Player, 7103)
	end
	-- river stone
	while HasItem(Player, 10068) do
		RemoveItem(Player, 10068)
	end
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Consul Bree.")
	UpdateQuestDescription(Quest, "Now that I have gotten all of the items required for the ritual, I will be able to summon Zen'Durath.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithEmma(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledSnakes(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_GotDust(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_GotStone(Quest, QuestGiver, Player)
	end
end