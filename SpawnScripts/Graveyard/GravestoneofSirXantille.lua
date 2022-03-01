--[[
	Script Name	: SpawnScripts/Graveyard/GravestoneofSirXantille.lua
	Script Purpose	: Gravestone of Sir Xantille
	Script Author	: Scatman
	Script Date	: 2009.07.09
	Script Notes	: 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 231, 5)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 231) and not QuestStepIsComplete(Caster, 231, 5) then
		--TODO: Display popup
		SetStepComplete(Caster, 231, 5)
	end
end