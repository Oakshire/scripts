--[[
    Script Name    : SpawnScripts/BrawlersDojo/awhiteheadbandinitiate.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 08:12:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,8)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
        if choice == 1 then
            PlayAnimation(NPC, 1644)
      SpawnSet(dummy, "visual_state", 2083)
          AddTimer(NPC, 2550, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1646)
      SpawnSet(dummy, "visual_state", 2083)
          AddTimer(NPC, 3100, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1284)
      SpawnSet(dummy, "visual_state", 2083)
          AddTimer(NPC, 3050, "Idle")
        elseif choice == 4 then
            PlayAnimation(NPC, 3021)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 3100, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 1201)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 2450, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 1181)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 2550, "Idle")
        elseif choice == 7 then
            PlayAnimation(NPC, 4506)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 4400, "Idle")
        else
            PlayAnimation(NPC, 3037)
    SpawnSet(dummy, "visual_state", 2083)
            AddTimer(NPC, 3300, "Idle")
        end
end

function Idle(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
    PlayAnimation(NPC, 372) 
--    SpawnSet(dummy, "visual_state", 2083)
    AddTimer(NPC,1000,"resetdummy",1)
    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end

function resetdummy(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781308)
    SpawnSet(dummy, "visual_state", 0)
end
   