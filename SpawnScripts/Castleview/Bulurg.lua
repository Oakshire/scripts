--[[
	Script Name	: SpawnScripts/Castleview/Bulurg.lua
	Script Purpose	: Bulurg <Bartender>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericBartenderVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericBartenderHail(NPC, Spawn)
end