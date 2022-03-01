--[[
    Script Name    : SpawnScripts/Freeport/UlhiraGrissh.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "There are many gods to be worshiped here.  I wonder if people come here to benefit the gods, or just themselves?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

