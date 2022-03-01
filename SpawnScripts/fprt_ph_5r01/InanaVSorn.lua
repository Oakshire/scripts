--[[
    Script Name    : SpawnScripts/fprt_ph_5r01/InanaVSorn.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.03 04:06:48
    Script Purpose : 
                   : 
--]]

local KeyToFallenGate = 5252 

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
if GetQuestStep(Spawn, KeyToFallenGate) == 5 then
  AddStepProgress(Spawn, KeyToFallenGate, 5, 1)
end  
   end

function respawn(NPC)
	spawn(NPC)
end