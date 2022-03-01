--[[
    Script Name    : SpawnScripts/Freeport/afangedsentinel55897.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.25 09:04:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
      AddTimer(NPC, 900, "followguard", 1)

end

function followguard(NPC, Spawn)
	local zone = GetZone(NPC)
	local GUARD_LEADER = GetSpawnByLocationID(zone, 55910)
	if GUARD_LEADER ~= nil then
    local leaderX = GetX(GUARD_LEADER)
    local leaderY = GetY(GUARD_LEADER)
    local leaderZ = GetZ(GUARD_LEADER)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
		if GetDistance(NPC, GUARD_LEADER) >= 8 then
			speed = 2
                        MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ -2, speed)
                else
                        speed = 2
                        MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ -2, speed)
		end
		AddTimer(NPC, 3000, "followguard")	
   end
      end


   
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end