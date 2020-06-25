--[[
    Script Name    : SpawnScripts/LongshadowAlley2/ArasaiTortureInstruments.lua
    Script Author  : Premierio015
    Script Date    : 2020.06.11 11:06:28
    Script Purpose : 
                   : 
--]]
local TeirDalTurncoats = 566

function spawn(NPC)
SetRequiredQuest(NPC, TeirDalTurncoats , 1, 1)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end
