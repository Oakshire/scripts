--[[
    Script Name    : SpawnScripts/Nettleville/JabariOla.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 01:06:10
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/UnknownLanguage.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,13)then
    FaceTarget(NPC, Spawn)    
    Garbled(NPC,Spawn)
    else
	FaceTarget(NPC, Spawn)        
    GenericEcologyHail(NPC, Spawn, faction)
    end
end

function InRange(NPC, Spawn) 
        if not HasLanguage(Spawn,13)then
        if math.random(1, 100) <= 25 then            
        Garbled(NPC,Spawn)
        end
        else
    GenericEcologyCallout(NPC, Spawn, faction)                  
    end
end
