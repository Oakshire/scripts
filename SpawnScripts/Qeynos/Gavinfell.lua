--[[
	Script Name	: SpawnScripts/SouthQeynos/Gavinfell.lua
	Script Purpose	: Gavinfell <Guard>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	AddTimer(NPC, 1900, "follow_Erwin")
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
    end
end

function respawn(NPC)
spawn(NPC)
end


function follow_Erwin(NPC)
	local zone = GetZone(NPC)
	local Erwin_location = GetSpawnByLocationID(zone, 133779451)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Erwin_location)
    local leaderY = GetY(Erwin_location)
    local leaderZ = GetZ(Erwin_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    if  Erwin_location ~=nil and not IsInCombat(NPC) then   
    if sli == 415227 then --Galla
		if GetDistance(NPC, Erwin_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 415226 then --Gavinfell
		if GetDistance(NPC, Erwin_location) >= 8 then
			-- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
			-- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
			MoveToLocation(NPC, leaderX, leaderY, 1+ leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX, leaderY, 1+ leaderZ, speed)
		end 
        end
    end
        speed = 2
	AddTimer(NPC, 2000, "follow_Erwin")	
end
