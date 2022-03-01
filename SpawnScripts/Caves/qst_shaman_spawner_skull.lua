--[[
	Script Name	: SpawnScripts/Caves/qst_shaman_spawner_skull.lua
	Script Purpose	: qst_shaman_spawner_skull
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	:
--]]

local QUEST4_FROM_CONSULBREE = 230

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST4_FROM_CONSULBREE, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST4_FROM_CONSULBREE) and GetQuestStep(Caster, QUEST4_FROM_CONSULBREE) == 1 then
		if HasItem(Caster, 11850) then
			local SpearedSkeleton = SpawnMob(GetZone(Caster), 1970139, false, 25.0848, 13.4502, -107.594, 178.328)
			SendMessage(Caster, "The skull seems to come alive as a wave of heat blows in from the north.")
			-- summoning staff
			while HasItem(Caster, 11850) do
				RemoveItem(Caster, 11850)
			end
			local ZenDurath = GetSpawn(Caster, 1970075)
			if ZenDurath == nil then
				ZenDurath = SpawnMob(GetZone(Caster), 1970075, false, 28.9003, 20.2769, -128.765, 0)
			end
			Despawn(SpearedSkeleton, 60000)
			Despawn(ZenDurath, 60000)
		else
			SendMessage(Caster, "You need the summoning staff from Consul Bree.")
		end
	end
end