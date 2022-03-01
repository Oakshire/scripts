--[[
    Script Name    : SpawnScripts/Edgewater/agarbagegrinder.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 06:07:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/troglodyte_base_1/ft/troglodyte/troglodyte_base_1_1_aggro_ea0c4b59.mp3", "I smell ugly creature ... kill it!", "", 866532327, 3243765546, Spawn)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/troglodyte_base_1/ft/troglodyte/troglodyte_base_1_1_death_faaaf368.mp3", "No ...no!  Puny thing ... smash ... uuuuuugh...", "", 4062290411, 3658436980, Spawn)
end
