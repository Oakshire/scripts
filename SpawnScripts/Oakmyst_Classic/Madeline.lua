--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/Madeline.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 02:10:08
    Script Purpose : 
                   : 
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