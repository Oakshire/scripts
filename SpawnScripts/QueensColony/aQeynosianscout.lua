--[[
    Script Name    : SpawnScripts/QueensColony/aQeynosianscout01.lua
    Script Author  : premierio015
    Script Date    : 2020.04.18 05:04:21
    Script Purpose : a Qeynosian scout dialogue
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1,2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Hopefully our brethren can be brought back from the brink of death.", "", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "", "Shhh. The Morak are near!", "", 0, 0, Spawn)
    end
end

function respawn(NPC)
         spawn(NPC)
end

