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
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,13)then
    FaceTarget(NPC, Spawn)    
    Garbled(NPC,Spawn)
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
    else
	FaceTarget(NPC, Spawn)        
    GenericRaceCheckHail(NPC, Spawn, faction)
    end
end

function InRange(NPC, Spawn) 
        FaceTarget(NPC, Spawn)    
        if not HasLanguage(Spawn,13)then
        if math.random(1, 100) <= 66 then            
        FaceTarget(NPC, Spawn)    
        PlayFlavor(NPC,"","","confused",0,0,Spawn)
        Garbled(NPC,Spawn)
        end
        else
    GenericRaceCheckCallout(NPC, Spawn, faction)
    end
end
