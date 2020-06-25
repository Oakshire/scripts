--[[
    Script Name    : SpawnScripts/Ruins/Fangtarn.lua
    Script Author  : jakejp
    Script Date    : 2020.04.28 12:04:02
    Script Purpose : Fangtarn <Mender>
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "At peace or at war, my work must go on.", Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

