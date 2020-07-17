--[[
    Script Name    : SpawnScripts/Freeport/ForbiddenLore.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Ha fool!  You are not ready for these teachings.  Just a mere glance upon these pages would burn the eyes from your sockets.  Return to me when you have purified your spirit and only then will you receive what you seek!", "combat_idle", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

