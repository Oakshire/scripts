--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end