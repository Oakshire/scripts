--[[
    Script Name    : SpawnScripts/Commonlands/afallenguardian.lua
    Script Author  : gloat
    Script Date    : 2019.01.31 02:01:26
    Script Purpose : 
                   : 
--]]

local BrokenEquipment = 415 -- Broken Equipment Quest

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

