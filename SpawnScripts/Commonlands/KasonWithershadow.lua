    --[[
    Script Name    : SpawnScripts/Commonlands/KasonWithershadow.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.20 06:02:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Just fishing my cares away! You should pick up a pole and give it a whirl!", "chuckle", 0, 0)
end

function respawn(NPC)

end

