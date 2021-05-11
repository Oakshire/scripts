--[[
    Script Name    : SpawnScripts/Commonlands/aShinReeavenger.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.11 09:05:13
    Script Purpose : 
                   : 
--]]

local TheSkeletonKey = 411

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
  if HasQuest(Spawn, TheSkeletonKey) then
  local zone = GetZone(Spawn)
  local X = GetX(NPC)
  local Y = GetY(NPC)
  local Z = GetZ(NPC)
   local BloodStainedFingerBones = SpawnMob(zone, 331128 , true, X, Y, Z, 33.71)
        if BloodskullOrders ~= nil then
        AddSpawnAccess(BloodskullOrders, Spawn)
 end
end
   end