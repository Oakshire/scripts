--[[
	Script Name	:	SpawnScripts/QueensColony/TheGuurok.lua
	Script Purpose	:	
	Script Author	:	
	Script Date	:	17.05.2020
	Script Notes	:	
--]]


function spawn(NPC)
SetTempVariable(NPC, "Feeded", 0) 
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
   SendMessage(Spawn, "The Guurok hisses loudly, almost like it can sense you.", "white")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end


-- Visual state: 3632