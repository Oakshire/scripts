--[[
    Script Name    : SpawnScripts/QeynosHarbor/Shiningleaf.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.09 07:07:19
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn) 
end

function hailed(NPC, Spawn)
   if GetFactionAmount(Spawn,11) >0 then
       FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end