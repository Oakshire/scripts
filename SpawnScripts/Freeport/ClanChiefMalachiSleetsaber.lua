--[[
    Script Name    : SpawnScripts/Freeport/ClanChiefMalachiSleetsaber.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Watch what troubles ya find, or find you in this great city.  A back is a fine place to sheathe an axe!", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

