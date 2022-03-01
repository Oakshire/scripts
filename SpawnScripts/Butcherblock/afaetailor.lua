--[[
    Script Name    : SpawnScripts/Butcherblock/afaetailor.lua
    Script Author  : jakejp
    Script Date    : 2018.06.04 07:06:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Sorry, can't chat, very busy with a rush order right now. Safe travels!")
end

function respawn(NPC)

end

