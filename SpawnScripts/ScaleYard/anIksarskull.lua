--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

-- Quest ID's
local QUEST_3 = 342 --152 --Paying homage to the past--

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_3, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end