--[[
	Script Name	: SpawnScripts/Nettleville/MarjaniKenan.lua
	Script Purpose	: Marjani Kenan 
	Script Author	: Dorbin
	Script Date	: 06.25.2022
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)                  
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	Talk(NPC, Spawn)
end

function Talk(NPC, Spawn)
    if GetQuestStep(Spawn,5598)==1 then
        SetStepComplete(Spawn, 5598, 1)
    end
	FaceTarget(NPC, Spawn)
	FaceTarget(NPC, Spawn)        
    GenericEcologyHail(NPC, Spawn, faction)
end