--[[
    Script Name    : SpawnScripts/Everfrost/MaiVentur.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.04 09:09:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Where's my daddy?")
end

function respawn(NPC)

end

