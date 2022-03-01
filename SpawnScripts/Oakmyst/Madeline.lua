--[[
	Script Name	: SpawnScripts/Oakmyst/Madeline.lua
	Script Purpose	: Madeline  <Guard>
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end