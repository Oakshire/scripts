--[[
    Script Name    : SpawnScripts/Ruins/aharriedvagrantsquatter.lua
    Script Author  : jakejp
    Script Date    : 2018.10.08 09:10:51
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/dancing_script.lua")

function spawn(NPC)
    MakeDance(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

