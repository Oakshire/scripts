--[[
    Script Name    : SpawnScripts/qeynos_combined02/aveteranpathfinder257859.lua
    Script Author  : Rylec
    Script Date    : 2022.03.24 04:03:40
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/AppearanceHuman"

function spawn(NPC)
    humanAppearance(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end