--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

-- Quest ID's
local A_LESSON_TO_LEARN = 336

function spawn(NPC)
	SetRequiredQuest(NPC, A_LESSON_TO_LEARN, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end