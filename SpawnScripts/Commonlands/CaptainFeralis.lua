--[[
    Script Name    : SpawnScripts/Commonlands/CaptainFeralis.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.18 08:02:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Loyalty first!", "", 0, 0, Spawn)
end

function respawn(NPC)

end

