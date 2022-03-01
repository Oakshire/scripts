--[[
	Script Name	: SpawnScripts/Castleview/CorruptedGreenWisp.lua
	Script Purpose	: CorruptedGreenWisp
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local HIGH_ELF_MENTOR_QUEST_3 = 225

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	--SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_3, 2)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, HIGH_ELF_MENTOR_QUEST_3) and GetQuestStep(Caster, HIGH_ELF_MENTOR_QUEST_3) == 2 and SpellName == "Cleanse" then
		SetStepComplete(Caster, HIGH_ELF_MENTOR_QUEST_3, 2)
		local devious_sunshimmer_sprite = SpawnMob(GetZone(Target), 2360058, false, 710.408, -15.5306, -161.493, 200)
		AddHate(Caster, devious_sunshimmer_sprite, 100)
		RemoveSpawnAccess(Target, Caster)
		--Despawn(Target, 180000)
	end
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, HIGH_ELF_MENTOR_QUEST_3) and GetQuestStep(Spawn, HIGH_ELF_MENTOR_QUEST_3) == 2 then
		AddSpawnAccess(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end