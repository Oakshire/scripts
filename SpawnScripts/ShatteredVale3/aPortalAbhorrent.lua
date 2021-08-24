--[[
    Script Name    : SpawnScripts/ShatteredVale3/aPortalAbhorrent.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 06:08:32
    Script Purpose : 
                   : 
--]]

local APortalAtrocity = 361968 -- A Portal Atrocity ID

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function aggro(NPC, Spawn)
if not HasLanguage(Spawn, 20) then -- GOBLISH
PlayFlavor(NPC, "voiceover/english/minotaur_base_1/ft/minotaur/minotaur_base_1_1_garbled_4cb5a7e.mp3", "Mortras pluvan kebmetra ein strev'kar", "", 3751978752, 2944985426, Spawn, 20)
end
end


function death(NPC, Spawn)
zone = GetZone(NPC)
SpawnByLocationID(zone, APortalAtrocity)
end



function respawn(NPC)
	spawn(NPC)
end