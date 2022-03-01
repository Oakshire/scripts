--[[
    Script Name    : SpawnScripts/Zek/transportmine.lua
    Script Author  : Jabantiz
    Script Date    : 2016.08.25 07:08:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddMultiFloorLift(NPC)
end

function respawn(NPC)
spawn(NPC)
end

