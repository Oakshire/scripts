--[[
    Script Name    : SpawnScripts/Freeport/afangedsentinel55897.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.25 09:04:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
      AddTimer(NPC, 1000, "follow")
   -- MovementLoopAddLocation(NPC, 69.91, -20.72, 24.58, 1.9, 0)
   -- MovementLoopAddLocation(NPC, 67.12, -20.75, 64.72, 1.9, 0)
	--MovementLoopAddLocation(NPC, 81.93, -20.73, 90.46, 1.9, 0)
	--MovementLoopAddLocation(NPC, 81.72, -20.72, 98.83, 1.9, 5)
	--MovementLoopAddLocation(NPC, 81.93, -20.73, 90.46, 1.9, 0)
	--MovementLoopAddLocation(NPC, 67.12, -20.75, 64.72, 1.9, 0)
	--MovementLoopAddLocation(NPC, 69.91, -20.72, 24.58, 1.9, 0)
end

function follow(NPC, Spawn)
    local zone = GetZone(NPC)
    local guard = GetSpawnByLocationID(zone, 55910)
    SetFollowTarget(NPC, guard)
    if not IsFollowing(NPC) then
        ToggleFollow(NPC)
        SetSpeed(NPC, 1.9)
end
   end


   
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end