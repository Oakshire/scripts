--[[
	Script Name	:	SpawnScripts/QueensColony/TheGuurok.lua
	Script Purpose	:	
	Script Author	:	
	Script Date	:	17.05.2020
	Script Notes	:	
--]]


function spawn(NPC)
    SetTempVariable(NPC, "FeedCounter", "0")
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
    if HasItem(Spawn, 10399, 0) then
        SendMessage(Spawn, "The Guurok hisses loudly, almost like it can sense you.", "white")
    end
end

function respawn(NPC)
    spawn(NPC)
end


-- Visual state: 3632