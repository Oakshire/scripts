--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 118, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
