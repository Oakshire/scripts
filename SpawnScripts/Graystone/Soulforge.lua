--[[
	Script Name	: SpawnScripts/Graystone/Steelforge.lua
	Script Purpose	: Steelforge <Weaponsmith>
	Script Author	: Scatman
	Script Date	: 2009.05.30
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "If steel is what you seek, traveler, then look no further.", Spawn)
end