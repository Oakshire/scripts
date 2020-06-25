--[[
	Script Name	: SpawnScripts/WillowWood/Rainwander.lua
	Script Purpose	: Rainwander <Alchemist>
	Script Author	: Scatman
	Script Date	: 2009.09.25
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericAlchemistVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericAlchemistHail(NPC, Spawn, "good")
end