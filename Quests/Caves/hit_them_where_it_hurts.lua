--[[
	Quest Template
	Script Name	: Quests/Caves/hit_them_where_it_hurts.lua
	Script Purpose	: Handles the quest, "Hit Them Where it Hurts"
	Script Author	: Scatman
	Script Date	: 2009.10.08

        Zone            : The Caves
        Quest Giver     : Consul Bree
        Preceded by     : A Lack of Information (a_lack_of_information.lua)
        Followed by     : Elements of a Ritual (elements_of_a_ritual.lua)
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to destroy the forge in the armory.", 1, 100, "Consul Bree has asked for my help in disrupting the gnoll operations here in the Caves. I can help by crippling their ability to craft armor and destroying some of their machine parts.", 12)
	AddQuestStep(Quest, 2, "I need to destroy some of the mechanical parts stashed in the Caves.", 5, 100, "Consul Bree has asked for my help in disrupting the gnoll operations here in the Caves. I can help by crippling their ability to craft armor and destroying some of their machine parts.", 1041)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_DestroyedForge")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_DestroyedParts")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_007a.mp3", "", "", 1177533650, 1696169122, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thank you. The gnolls may not recover from this.")
	
	-- 7 explosives
	for i = 1, 6, 1 do
		SummonItem(Player, 6052, 1)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_DestroyedForge(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the forge.")
	
	if QuestIsComplete(Player, 224) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_DestroyedParts(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed some of the mechanical parts stashed in the Caves.")
	
	if QuestIsComplete(Player, 224) then
		MultipleStepsComplete(Quest, QuestGiver, Player)
	end
end

function MultipleStepsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done as Consul Bree asked.")

	AddQuestStepChat(Quest, 3, "I need to return to Consul Bree.", 1, "Now that I have helped Consul Bree I should return to her.", 0, 1970010) 
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- explosives
	while HasItem(Player, 6052) do
		RemoveItem(Player, 6052)
	end
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Consul Bree.")
	UpdateQuestDescription(Quest, "I have interrupted work in the armory and destroyed a number of machine components for Bree.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_DestroyedForge(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_DestroyedParts(Quest, QuestGiver, Player)
	end
end