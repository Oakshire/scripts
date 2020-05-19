--[[
	Script Name	: quest_iksar_shackles.lua
	Script Purpose	: Iksar Shackles for quest 152
	Script Author	: Xanibunib
	Script Date	: 4.1.2009
	Script Notes	: <special-instructions>
--]]

-- Quest ID's
local QUEST_3 = 342 --152 --Paying homage to the past--

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_3, 4)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 4 and Message == "take the shackles" then
		SetStepComplete(Spawn, QUEST_3, 4)
	end
end