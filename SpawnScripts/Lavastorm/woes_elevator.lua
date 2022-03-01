--[[
    Script Name    : SpawnScripts/Lavastorm/woes_elevator.lua
    Script Author  : smash
    Script Date    : 2016.1.14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetSpeed(NPC, 4)
    AddMultiFloorLift(NPC)
	SetTempVariable(NPC, "current_pos", "top")
end