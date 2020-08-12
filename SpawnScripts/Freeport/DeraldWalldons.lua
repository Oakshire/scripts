--[[
    Script Name    : SpawnScripts/Freeport/DeraldWalldons.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Freeport - built long ago by human hands, now stands as the pinnacle of civilization on Norrath.  Hail to the Overlord for his strength and vision in leading us here!", "orate", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

