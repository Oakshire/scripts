--[[
	Script Name	: SpawnScripts/Castleview/EireneithAlannia.lua
	Script Purpose	: Eireneith Alannia 
	Script Author	: Scatman
	Script Date	: 2009.10.03
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
	PlayFlavor(NPC, "", "One of my responsibilities is controlling the population of creatures in the area, and I'm barely keeping up! The glade deer population has grown out of control. Once their numbers rise, those deer are hard to manage!", "", 1689589577, 4560189)
end