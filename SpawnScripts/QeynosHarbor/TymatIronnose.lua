--[[
    Script Name    : SpawnScripts/QeynosHarbor/TymatIronnose.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 04:06:13
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 2, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    FactionCheckingCallout(NPC, Spawn, faction)
    end
   