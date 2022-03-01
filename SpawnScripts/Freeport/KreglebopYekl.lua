--[[
    Script Name    : SpawnScripts/Freeport/KreglebopYekl.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Emote(NPC, "groans when he looks at you and goes back to his ale")
end

function respawn(NPC)

end

