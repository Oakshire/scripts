--[[
    Script Name    : SpawnScripts/SerpentSewer/KerikLorn.lua
    Script Author  : premierio015
    Script Date    : 2020.06.16 12:06:40
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Venturing into the sewers eh? You are a brave soul aren't ya?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end
