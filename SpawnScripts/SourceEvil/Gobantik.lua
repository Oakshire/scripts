--[[
    Script Name    : SpawnScripts/SourceEvil/Gobantik.lua
    Script Author  : Rylec
    Script Date    : 2021.01.16 01:01:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,10)

        if choice == 1 then
            SpawnSet(NPC, "name", "Jonobtik") 
        elseif choice == 2 then
            SpawnSet(NPC, "name", "Jibaner") 
        elseif choice == 3 then
            SpawnSet(NPC, "name", "Zartik")
        elseif choice == 4 then
            SpawnSet(NPC, "name", "Konantik")
        elseif choice == 5 then
            SpawnSet(NPC, "name", "Kebn")
        elseif choice == 6 then
            SpawnSet(NPC, "name", "Lenarn")
        elseif choice == 7 then
            SpawnSet(NPC, "name", "Jonarn")
        elseif choice == 8 then
            SpawnSet(NPC, "name", "Jonober")
        elseif choice == 9 then
            SpawnSet(NPC, "name", "Ganer")
        else
            SpawnSet(NPC, "name", "Gobantik")
        end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

