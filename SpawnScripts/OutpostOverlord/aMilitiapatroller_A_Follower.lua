--[[
    Script Name    : SpawnScripts/OutpostOverlord/aMilitiapatroller_A_Follower.lua
    Script Author  : Cynnar
    Script Date    : 2018.10.07 10:10:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 900, "followguard_A")
end

function followguard_A(NPC)
	local zone = GetZone(NPC)
	local guard_A_placement = GetSpawnByLocationID(zone, 399224)
	local sli = GetSpawnLocationID(NPC)
    local leaderX = GetX(guard_A_placement)
    local leaderY = GetY(guard_A_placement)
    local leaderZ = GetZ(guard_A_placement)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
    
    if sli == 399195 then
		if GetDistance(NPC, guard_A_placement) >= 8 then
			speed = 5
                        MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
                else
                        speed = 2
                        MoveToLocation(NPC, leaderX - 2, leaderY, leaderZ, speed)
		end 
	elseif sli == 399239 then
		if GetDistance(NPC, guard_A_placement) >= 8 then
                       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
                       -- Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
                        MoveToLocation(NPC, leaderX, leaderY, leaderZ - 2, speed)
                else
                        speed = 2
		        MoveToLocation(NPC, leaderX, leaderY, leaderZ - 2, speed)
		end 
	elseif sli == 399179 then
		if GetDistance(NPC, guard_A_placement) >= 8 then
                        MoveToLocation(NPC, leaderX + 2, leaderY, leaderZ, speed)
          --  Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. "")
          --  Say(NPC, "My location is: " .. GetX(NPC) .. "")
			speed = 5
                else
                        speed = 2
                        MoveToLocation(NPC, leaderX + 2, leaderY, leaderZ, speed)
		end 
    end
        speed = 2
	AddTimer(NPC, 3000, "followguard_A")	
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end
