--[[
    Script Name    : SpawnScripts/Freeport/afangedsentinel56494.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.03 07:05:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 900, "followguard", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function followguard(NPC, Spawn)
	local zone = GetZone(NPC)
	local GUARD_LEADER = GetSpawnByLocationID(zone, 56513)
	if GUARD_LEADER ~= nil then
    local leaderX = GetX(GUARD_LEADER)
    local leaderY = GetY(GUARD_LEADER)
    local leaderZ = GetZ(GUARD_LEADER)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
		if GetDistance(NPC, GUARD_LEADER) >= 8 then
			speed = 5
                        MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
                else
                        speed = 2
                        MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end
		AddTimer(NPC, 3000, "followguard")	
   end
      end
	   