--[[
	Quest Template
	Script Name	: Quests/Caves/a_lack_of_information.lua
	Script Purpose	: Handles the quest, "A Lack of Information"
	Script Author	: Scatman
	Script Date	: 2009.10.08

        Zone            : The Caves
        Quest Giver     : Consul Bree
        Preceded by     : None
        Followed by     : Hit Them Where it Hurts (hit_them_where_it_hurts.lua)
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to search the Dustpaw gnoll camp for their orders. I should be able to find the camp somewhere through the tunnel to the west of Consul Bree.", 1, 100, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 2693)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundOrders")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_004a.mp3", "", "", 1048313312, 911223295, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "And be wary of the Dustpaw. They didn't have the strength to beat the Rockpaw, but that doesn't mean they're docile.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundOrders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the written orders of the Dustpaw gnolls in their camp.")
	
	-- A Book of Gnollish Orders (regular item)
	if not HasItem(Player, 1245) then
		SummonItem(Player, 1245, 1)
	end

	AddQuestStepChat(Quest, 2, "I need to read the book I found in the Dustpaw camp (Dev note: Talk to Consul Bree for now).", 1, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 0, 1970010) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_ReadBook")
end

function Step2_Complete_ReadBook(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have attempted to read the book in the Dustpaw camp.")

	AddQuestStepKill(Quest, 3, "I need to retrieve the key to the Rockpaw cipher. Any gnoll in the Caves may have one.", 1, 100, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 185, 1970070, 1970035, 1970036, 1970067, 1970027, 1970044, 1970038, 1970069, 1970028, 1970042, 1970061, 1970068, 1970063, 1970041, 1970043, 1970060, 1970024) 
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_GotKey")
end

function Step3_Complete_GotKey(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the key to the cipher.")
	
	-- A Book of Gnollish Orders (regular item)
	while HasItem(Player, 1245) do
		RemoveItem(Player, 1245)
	end
	
	-- A Book of Gnollish Orders (house item)
	if not HasItem(Player, 210020) then
		SummonItem(Player, 210020, 1)
	end

	AddQuestStepChat(Quest, 4, "I need to bring this information to Consul Bree.", 1, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 0, 1970010) 
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained the battle orders for Consul Bree.")
	UpdateQuestDescription(Quest, "I have found the book for Consul Bree.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundOrders(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_ReadBook(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_GotKey(Quest, QuestGiver, Player)
	end
end