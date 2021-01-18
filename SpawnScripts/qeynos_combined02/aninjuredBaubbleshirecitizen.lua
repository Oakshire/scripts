--[[
    Script Name    : SpawnScripts/qeynos_combined02/aninjuredBaubbleshirecitizen.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 01:01:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    math.randomseed(os.time())
    choice = math.random(1133,1139)
    SpawnSet(NPC, "hair_type", choice)
end

function hailed(NPC, Spawn)

end

function respawn(NPC)

end

