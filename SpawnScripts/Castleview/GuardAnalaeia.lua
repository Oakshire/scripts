--[[
    Script Name    : SpawnScripts/Castleview/GuardAnalaeia.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
    end
end
