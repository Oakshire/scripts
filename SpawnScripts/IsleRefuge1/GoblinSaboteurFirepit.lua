--[[
    Script Name    : SpawnScripts/IsleRefuge1/GoblinSaboteurFirepit.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.21 04:09:42
    Script Purpose : 
                   : 
--]]
local saboteur = 5748

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 14, "InRange", "LeaveRange")
end


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
    if GetQuestStep(Spawn,saboteur)==1 then
        SetStepComplete(Spawn,saboteur,1)
    end
end