--[[
	Script Name	: Quests/Darklight/the_mother_lode.lua
	Script Purpose	: Handles the quest, "The Mother Lode"
	Script Author	: Scatman
	Script Date	: 2009.02.03
	
	Zone       : Darklight Wood
	Quest Giver: Ilmtar D'Viervs
	Preceded by: More Luxuries (more_luxuries.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Changeling Sigil
	-- Rusty Dragoon Javelin
	-- Cured Rawhide Boots
	-- Iron Ingot Leggings


	AddQuestStepKill(Quest, 1, "I need to collect the scales from eight scar wurms for Ilmtar D'Viervs.", 8, 100, "Ilmtar D'Viervs needs more snake scales, this time from the scar wurms in Innoruuk's Scar. He also wants pheromone sacs from the male scar wurms.", 172, 340104, 340101, 340102, 340103)
	AddQuestStepKill(Quest, 2, "I need to collect pheromone sacs from the scar wurms.", 4, 35, "Ilmtar D'Viervs needs more snake scales, this time from the scar wurms in Innoruuk's Scar. He also wants pheromone sacs from the male scar wurms.", 187, 340104, 340101, 340102, 340103)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotScales")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_gotSacs")

end

--example only from Murrar Shar.lua
function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			Say(QuestGiver, "Thank you for accepting this task " .. GetName(Player) .. ".  Please return to me when you have completed it.")
			Emote(QuestGiver, " thanks you warmly.", Player)
		end
	end
end

function Declined(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			Say(QuestGiver, "If you change your mind " .. GetName(Player) .. ", you know where to find me.")
			Emote(QuestGiver, " glares at you.", Player)
		end
	end
end

function KilledAllCrabs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the crabs as Murrar requested.")
	UpdateQuestDescription(Quest, "I killed some of the crabs on the beach.  Return to Murrar Shar for your reward.")
end



