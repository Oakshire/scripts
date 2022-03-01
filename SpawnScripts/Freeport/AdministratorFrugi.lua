--[[
    Script Name    : SpawnScripts/Freeport/AdministratorFrugi.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "This is the Temple of War, dedicated to the Hounds of War - Vallon, Tallon, and Sullon.  Pay proper respect!", "point", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

