--[[
    Script Name    : SpawnScripts/QueensColony/schooloffishRespawn.lua
    Script Author  : Rylec
    Script Date    : 2020.09.14 12:09:03
    Script Purpose : Random respawn time for School of Fish
                   : 
--]]

function spawn(NPC)
        math.randomseed(os.time())
        local respawnTime = math.random (60,120)

        SpawnSet(NPC, "respawn", respawnTime) 
end

function respawn(NPC)
    spawn(NPC)
end

