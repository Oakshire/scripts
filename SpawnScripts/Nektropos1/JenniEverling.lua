--[[
    Script Name    : SpawnScripts/Nektropos1/JenniEverling.lua
    Script Author  : smash
    Script Date    : 2016.09.09 05:09:39
    Script Purpose : Spawning Jenni's teacher
                   : 
--]]

require "SpawnScripts/Nektropos1/EverlingSisters"

function healthchanged(NPC, Spawn)
	local hp = GetHP(NPC)
	local max_hp = GetMaxHP(NPC)
	--Try to spawn Jenni's teacher at around 70% hp remaining
	if hp / max_hp <= .70 and GetTempVariable(NPC, "TeacherSpawned") ~= "true" then
		--Spawn Jenni's teacher
		local teacher = SpawnByLocationID(GetZone(NPC), 616610)
		Attack(teacher, Spawn)
		Say(NPC, "Teacher I need your help! Deirdre sent someone to stop me.")
		SetTempVariable(NPC, "TeacherSpawned", "true")
	end
end

function CombatReset(NPC)
	SetTempVariable(NPC, "TeacherSpawned", nil)
end