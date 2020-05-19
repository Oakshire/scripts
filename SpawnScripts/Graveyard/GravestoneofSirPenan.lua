--[[
	Script Name	: SpawnScripts/Graveyard/GravestoneofSirPenan.lua
	Script Purpose	: Gravestone of Sir Penan
	Script Author	: Scatman
	Script Date	: 2009.07.09
	Script Notes	: 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 231, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 231) and not QuestStepIsComplete(Caster, 231, 1) then
		--TODO: Display popup
		SetStepComplete(Caster, 231, 1)
	end
end