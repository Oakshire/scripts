--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 87) and not QuestStepIsComplete(Caster, 87, 2) then
		SetStepComplete(Caster, 87, 2)
	end
end