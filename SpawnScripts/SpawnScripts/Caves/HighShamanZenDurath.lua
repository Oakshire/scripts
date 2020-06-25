--[[
	Script Name	: SpawnScripts/Caves/HighShamanZenDurath.lua
	Script Purpose	: High Shaman Zen Durath
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
	-- Head of High Shaman Zen'Durath
	if not HasItem(Spawn, 6922) then
		SummonItem(Spawn, 6922)
	end
end