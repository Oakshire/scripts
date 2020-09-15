--[[
    Script Name    : SpawnScripts/QueensColony/schooloffishRespawn.lua
    Script Author  : Rylec
    Script Date    : 2020.09.14 12:09:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--        math.randomseed(os.time())
--        local respawnTime = math.random (5,20)

        SpawnSet(NPC, "respawn", "30") 

--        local expireTime = math.random (5,20)

        SpawnSet(NPC, "expire", "10") 
end

function respawn(NPC)
    spawn(NPC)
end

