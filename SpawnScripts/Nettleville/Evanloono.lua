--[[
    Script Name    : SpawnScripts/Nettleville/Evanloono.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 04:06:27
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
FactionCheckCallout(NPC,Spawn,faction)
end
end