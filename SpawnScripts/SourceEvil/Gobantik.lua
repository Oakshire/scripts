--[[
    Script Name    : SpawnScripts/SourceEvil/Gobantik.lua
    Script Author  : Rylec
    Script Date    : 2021.01.16 01:01:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--[[ Don't use this code (crashes things)

        math.randomseed(os.time())
        local petname = math.random (1,10)

        if petname == 1 then
            SpawnSet(NPC, "name", "Jonobtik") 
        elseif petname == 2 then
            SpawnSet(NPC, "name", "Jibaner") 
        elseif petname == 3 then
            SpawnSet(NPC, "name", "Zartik")
        elseif petname == 4 then
            SpawnSet(NPC, "name", "Konantik")
        elseif petname == 5 then
            SpawnSet(NPC, "name", "Kebn")
        elseif petname == 6 then
            SpawnSet(NPC, "name", "Lenarn")
        elseif petname == 7 then
            SpawnSet(NPC, "name", "Jonarn")
        elseif petname == 8 then
            SpawnSet(NPC, "name", "Jonober")
        elseif petname == 9 then
            SpawnSet(NPC, "name", "Ganer")
        else
            SpawnSet(NPC, "name", "Gobantik")
        end
--]]
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

