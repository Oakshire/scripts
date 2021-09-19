--[[
    Script Name    : SpawnScripts/qeynos_combined02/BreenoMesspie.lua
    Script Author  : Rylec
    Script Date    : 2021.09.08 10:09:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", "2120")
    SpawnSet(NPC, "action_state", "11420")
end

function hailed(NPC, Spawn)
--	FaceTarget(NPC, Spawn)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, 10893)

    local zone = GetZone(Spawn)
    local TargetSpawn = GetSpawnByLocationID(zone, 133772587)
    CastSpell(TargetSpawn, 993, 1, NPC)
    AddTimer(NPC, 3000, "stop_combat", 1, TargetSpawn)
 end

function stop_combat(NPC, TargetSpawn)
    if IsInCombat(NPC) then
        ClearHate(TargetSpawn, NPC)
        ClearHate(NPC, TargetSpawn)
        SetInCombat(TargetSpawn, false)
        SetInCombat(NPC, false)
        ClearEncounter(TargetSpawn)
        ClearEncounter(NPC)
    end
end

function respawn(NPC)
	spawn(NPC)
end