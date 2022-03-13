--[[
    Script Name    : SpawnScripts/Graystone/TullyJamtoe.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.12 11:03:49
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,3)then
    Garbled(NPC,Spawn)
    else
    GenericDrunkHail(NPC, Spawn, faction)
    end
end


function InRange(NPC, Spawn) 
    if math.random(1, 100) <= 20 then
        if not HasLanguage(Spawn,3)then
        Garbled(NPC,Spawn)
        else
        GenericDrunkCallout(NPC, Spawn, faction)
    end   
 end
end


function respawn(NPC)
	spawn(NPC)
end