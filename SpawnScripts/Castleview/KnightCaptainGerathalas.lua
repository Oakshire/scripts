--[[
	Script Name	: SpawnScripts/Castleview/Knight-CaptainGerathalas.lua
	Script Purpose	: Knight-Captain Gerathalas <Qeynos Guard>
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
	Say(NPC, "Good day to you, adventurer.  I hope you have been keeping yourself safe.", Spawn)
end