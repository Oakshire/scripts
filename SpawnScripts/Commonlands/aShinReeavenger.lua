--[[
    Script Name    : SpawnScripts/Commonlands/aShinReeavenger.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.11 09:05:13
    Script Purpose : 
                   : 
--]]

local TheSkeletonKey = 411
local blood_stained_finger_bones = 331128

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 18)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
  local chance = MakeRandomInt(1, 100)
   if chance >= 50 then
  if HasQuest(Spawn, TheSkeletonKey) then
  local zone = GetZone(Spawn)
  local X = GetX(NPC)
  local Y = GetY(NPC)
  local Z = GetZ(NPC)
   local BloodStainedFingerBones = SpawnMob(zone, blood_stained_finger_bones , true, X, Y, Z, 49.56)
        if BloodStainedFingerBones ~= nil then
        AddSpawnAccess(BloodStainedFingerBones, Spawn)
 end
end
end
end
