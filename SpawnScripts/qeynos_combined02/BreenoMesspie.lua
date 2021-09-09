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
    CastSpell(Spawn, 993, 1, NPC)
 end

function respawn(NPC)
	spawn(NPC)
end