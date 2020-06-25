--[[
	Script Name	: SpawnScripts/Baubbleshire/GanlaDindlenod.lua
	Script Purpose	: Ganla Dindlenod 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericHail(NPC, Spawn)
	PlayFlavor(NPC, mp3, "What brings you to the fair vale of Baubbleshire? Seeking a bit of merriment among the stouts? ", "", 1689589577, 4560189, Spawn)
end