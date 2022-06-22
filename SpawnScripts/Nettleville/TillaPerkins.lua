--[[
    Script Name    : SpawnScripts/Nettleville/TillaPerkins.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 08:06:10
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


function InRange(NPC, Spawn) 
 if GetFactionAmount(Spawn,11)<0 then
    FactionCheckClalout(NPC, Spawn, faction)                  
    end
end
