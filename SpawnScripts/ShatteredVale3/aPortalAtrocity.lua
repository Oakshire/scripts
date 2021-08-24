--[[
    Script Name    : SpawnScripts/ShatteredVale3/aPortalAtrocity.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 07:08:05
    Script Purpose : 
                   : 
--]]

local APortalAbomination = 361973 -- A Portal Abomination ID

function spawn(NPC)

end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional3/boarfiend_base_1/ft/boarfiend/boarfiend_base_1_1_aggro_e9c74a58.mp3", "Just when it was starting to get dull.", "", 1137808435, 929091679, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional3/boarfiend_base_1/ft/boarfiend/boarfiend_base_1_1_death_6ed4b247.mp3", "Argh! You'll pay for that.", "", 2376783634, 2470360879, Spawn)
zone = GetZone(NPC)
SpawnByLocationID(zone, APortalAbomination)
end



function respawn(NPC)
	spawn(NPC)
end