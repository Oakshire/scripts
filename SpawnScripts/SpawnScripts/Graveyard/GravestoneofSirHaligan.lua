--[[
	Script Name	: SpawnScripts/Graveyard/GravestoneofSirHaligan.lua
	Script Purpose	: Gravestone of Sir Haligan
	Script Author	: Scatman
	Script Date	: 2009.07.09
	Script Notes	: 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 231, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, 231) and not QuestStepIsComplete(Caster, 231, 3) then
		--TODO: Display popup. move the spawn to the popup and only spawn him if the specific option is clicked. (Peer into the opening)
		Haligan = GetSpawn(Caster, 1250054)
		if Hailigan == nil then
			SpawnMob(GetZone(Caster), 1250054, false, -76.3563, -15.5289, 20.1095, 299.984)
		end
	end
end