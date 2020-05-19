--[[
	Script Name	: SpawnScripts/SunkenCity/widget_box.lua
	Script Purpose	: widget_box_*
	Script Author	: Scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local QUEST_FROM_LUKUR = 276

function spawn(NPC)
	--SetRequiredQuest(QUEST_FROM_LUKUR, 1)
	--SetRequiredQuest(QUEST_FROM_LUKUR, 2)
	--SetRequiredQuest(QUEST_FROM_LUKUR, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn)
	if HasQuest(Spawn, QUEST_FROM_LUKUR) and (not QuestStepIsComplete(Spawn, QUEST_FROM_LUKUR, 1) or not QuestStepIsComplete(Spawn, QUEST_FROM_LUKUR, 2) or not QuestStepIsComplete(Spawn, QUEST_FROM_LUKUR, 3)) then
		local found = false
		
		-- Pick a random step is update and then update it if it's not already complete.  Do this until we find a step that has not been
		-- completed yet.
		while found == false do
			local choice = math.random(1, 3)
			if not QuestStepIsComplete(Spawn, QUEST_FROM_LUKUR, choice) then
				SetStepComplete(Spawn, QUEST_FROM_LUKUR, choice)
				found = true
				SpawnSet(NPC, "show_command_icon", 0)
				AddTimer(NPC, 60000, "TurnOn")
			end
		end
	end
end

function TurnOn(NPC)
	SpawnSet(NPC, "show_command_icon", 1)
end