--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 139, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function casted_on(Target, Caster)
	-- add boom effect once it's found, play it for about 2 seconds
	Despawn(NPC, 2000)
end
