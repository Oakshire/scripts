--[[
    Script Name    : SpawnScripts/Commonlands/InquisitorIrizan.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.02 08:01:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/guard/025_inquisitor_irizan_callout_c2c3956c.mp3", "Stop! Get over here, now!", "", 15134358, 3354118545, Spawn)  
end
	

function LeaveRange(NPC, Spawn)

end