--[[
    Script Name    : SpawnScripts/Commonlands/aBloodskullorc2.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.08 07:03:08
    Script Purpose : 
                   : 
--]]

local BloodskullDisruption = 404

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


function death(NPC, Spawn)
if GetQuestStep(Spawn, BloodskullDisruption) == 2 then
SetStepComplete(Spawn, BloodskullDisruption, 2)
end
  end

function respawn(NPC)

end

