--[[
	Script Name	: Quests/Caves/high_shaman_of_the_rockpaw.lua
	Script Purpose	: Handles the quest, "High Shaman of the Rockpaw"
	Script Author	: Scatman
	Script Date	: 2009.10.18
	
	Zone       : The Caves
	Quest Giver: Consul Bree
	Preceded by: Elements of a Ritual (elements_of_a_ritual.lua)
	Followed by: 
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to take the summoning staff to the large skull on the level just above Consul Bree. Once there I need to place the staff in the skull to summon the High Shaman.", 1, 100, "I need to summon Zen'Durath and take his head.", 1220, 6922)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledZenDurath")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- summoning staff
	if not HasItem(Player, 11850) then
		SummonItem(Player, 11850, 1)
	end
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/consul_bree/qey_adv03_caves/quests/bree/bree_015a.mp3", "", "", 3288361383, 1793249646, Player)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, QuestGiver, Player, "And be careful. Zen'Durath will not be pleased to see you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledZenDurath(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain High Shaman Zen'Durath.")

	AddQuestStepChat(Quest, 2, "I need to return to Consul Bree.", 1, "I need to summon Zen'Durath and take his head.", 0, 1970010)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- High Shaman's head
	while HasItem(Player, 6922) do
		RemoveItem(Player, 6922)
	end
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain Zen'Durath.")
	UpdateQuestDescription(Quest, "I have slain Zen'Durath.")
	
	local Emma = GetSpawn(Player, 1970012)
	local Delsun = GetSpawn(Player, 1970011)
	if Emma ~= nil then
		PlayFlavor(Emma, "voiceover/english/tutorial_revamp/emma_torque/qey_adv03_caves/qst_emma_quest_series_done_564c6b5f.mp3", "Great job!", "cheer", 2428113896, 1601999227, Player)
	end
	if Delsun ~= nil then
		PlayFlavor(Delsun, "voiceover/english/tutorial_revamp/lieutenant_delsun/qey_adv03_caves/qst_delsun_quest_series_done_4827769e.mp3", "You make Qeynos proud, soldier.", "salute", 523058466, 3752111752, Player)
	end
	
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledZenDurath(Quest, QuestGiver, Player)
	end
end