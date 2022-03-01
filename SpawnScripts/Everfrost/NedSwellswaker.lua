--[[
    Script Name    : SpawnScripts/Everfrost/NedSwellswaker.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.25 12:09:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "This is a harsh and inhospitable region. Perhaps its best you keep your valuables some place safe.")
end

function respawn(NPC)

end

