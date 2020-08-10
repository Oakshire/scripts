--[[
    Script Name    : SpawnScripts/Freeport/KaherdinSurechest.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.09 06:08:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I will not deny my god, Mithaniel Marr.  No torture brought on by you or others will make me forsake The Truthbringer!", "sit_exit", 1689589577, 4560189, Spawn)  
end

function respawn(NPC)

end

