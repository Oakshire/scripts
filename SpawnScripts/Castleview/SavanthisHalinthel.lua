--[[
    Script Name    : SpawnScripts/Castleview/SavanthisHalinthel.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:21
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
    if not HasLanguage(Spawn, 9) then
        	if MakeRandomInt(1, 100) <= 66 then
 	        FaceTarget(NPC, Spawn)
            Garbled(NPC, Spawn, Faction)
    	end
    else	
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end
end

function InRange(NPC,Spawn)
    if not HasLanguage(Spawn, 9) then
        	if MakeRandomInt(1, 100) <= 66 then
 	        FaceTarget(NPC, Spawn)
            Garbled(NPC, Spawn, Faction)
    	end
    else	
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end
end