--[[
    Script Name    : SpawnScripts/SouthQeynos/SergeantatArmsIleea.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 03:10:19
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	AddTimer(NPC, 1900, "follow_Steelnerve")
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


function follow_Steelnerve(NPC)
	local zone = GetZone(NPC)
	local Steelnerve_location = GetSpawnByLocationID(zone, 133779453)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(Steelnerve_location)
    local leaderY = GetY(Steelnerve_location)
    local leaderZ = GetZ(Steelnerve_location)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    if  Steelnerve_location ~=nil then   
    if sli == 133779452 then --Ileea
		if GetDistance(NPC, Steelnerve_location) >= 8 then
			speed = 5
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 133779454 then --Gnollbane
		if GetDistance(NPC, Steelnerve_location) >= 8 then
			-- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
			-- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
			MoveToLocation(NPC, leaderX, leaderY, 2+ leaderZ, speed)
		else
			speed = 2
			MoveToLocation(NPC, leaderX, leaderY, 2+ leaderZ, speed)
		end 
        end
    end
        speed = 2
	AddTimer(NPC, 2000, "follow_Steelnerve")	
end