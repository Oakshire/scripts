--[[
    Script Name    : SpawnScripts/Commonlands/DurioCaepio.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.20 06:02:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Nice to have a healer here.", "", 0, 0, Spawn)
end

function respawn(NPC)

end

