--[[
    Script Name    : SpawnScripts/Freeport/VibiusMansuetus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 11:07:02
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
AddTimer(NPC, 500, "followguard", 1)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end

function followguard(NPC, Spawn)
	local zone = GetZone(NPC)
	local GUARD_LEADER = GetSpawnByLocationID(zone, 56909)
	if GUARD_LEADER ~= nil then
    local leaderX = GetX(GUARD_LEADER)
    local leaderY = GetY(GUARD_LEADER)
    local leaderZ = GetZ(GUARD_LEADER)
    local speed = 2
       -- Say(NPC, "Leader location is: " .. GetX(guard_A_placement) .. ", " .. GetY(guard_A_placement) .. ", " .. GetZ(guard_A_placement))
		if GetDistance(NPC, GUARD_LEADER) >= 8 then
			speed = 5
                        MoveToLocation(NPC, leaderX -2 , leaderY, leaderZ  , speed)
                else
                        speed = 2
                        MoveToLocation(NPC, leaderX -2 , leaderY, leaderZ  , speed)
		end
		AddTimer(NPC, 3000, "followguard")	
   end
      end