--[[
	Script Name	: Quests/Antonica/a_note_from_the_qeynos_quartermaster.lua
	Script Purpose	: Handles the quest, "High Shaman of the Rockpaw"
	Script Author	: Scatman
	Script Date	: 2009.10.18
	
	Zone       : The Caves
	Quest Giver: A Note from the Qeynos Quartermaster - Adventures in Antonica
	Preceded by: Elements of a Ritual (elements_of_a_ritual.lua)
	Followed by: 
--]]


function Init(Quest)
	--AddQuestStepKill(Quest, 1, "I need to take the summoning staff to the large skull on the level just above Consul Bree. Once there I need to place the staff in the skull to summon the High Shaman.", 1, 100, "I need to summon Zen'Durath and take his head.", 1220, 1970075)
	--AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledZenDurath")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithEmma(Quest, QuestGiver, Player)
	-- A Note from the Qeynos Quartermaster - Adventures in Antonica
	while HasItem(Player, 2156) do
		RemoveItem(Player, 2156)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
end