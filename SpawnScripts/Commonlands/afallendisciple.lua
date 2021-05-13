--[[
    Script Name    : SpawnScripts/Commonlands/afallendisciple.lua
    Script Author  : gloat
    Script Date    : 2019.01.31 02:01:34
    Script Purpose : 
                   : 
--]]

local BrokenEquipment = 415


require "SpawnScripts/Generic/MovementCircleSmall"
function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function death(NPC, Spawn)
if GetQuestStep(Spawn, BrokenEquipment) > 1 then
 AddLootItem(NPC, 15095, 1)
else
RemoveLootItem(NPC, 15095)    
end  
end

