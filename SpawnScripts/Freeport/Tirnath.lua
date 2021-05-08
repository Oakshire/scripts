--[[
    Script Name    : SpawnScripts/Freeport/Tirnath.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 11:07:03
    Script Purpose : 
                   : 
--]]

local ContharID = 57100
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
AddTimer(NPC, 500, "follow", 1)
end

function follow(NPC, Spawn)
local zone = GetZone(NPC)
local Conthar = GetSpawnByLocationID(zone, ContharID)
  SetFollowTarget(NPC, Conthar)
    if not IsFollowing(NPC) then
        ToggleFollow(NPC)
        SetSpeed(NPC, 2)
end        
    end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
