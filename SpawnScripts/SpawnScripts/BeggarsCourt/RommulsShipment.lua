--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local HALFELF_MENTOR_QUEST_3 = 315 -- Reel Him In


function spawn(NPC)
	--SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 3)
	BlownUpBarrel = GetSpawn(NPC, 1370125)
	Despawn(BlownUpBarrel)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, HALFELF_MENTOR_QUEST_3) and GetQuestStep(Caster, HALFELF_MENTOR_QUEST_3) == 3 then
		SendMessage(Caster, "You place the explosives.")
		local barrel1 = GetSpawnByLocationID(GetZone(Caster), 467614)
		local barrel2 = GetSpawnByLocationID(GetZone(Caster), 1585458)
		local barrel3 = GetSpawnByLocationID(GetZone(Caster), 1585459)
		if barrel1 ~= nil then
			Despawn(barrel1)
		end
		
		if barrel2 ~= nil then
			Despawn(barrel2)
		end
		
		if barrel3 ~= nil then
			Despawn(barrel3)
		end

		SetStepComplete(Caster, HALFELF_MENTOR_QUEST_3, 3)

		-- Spawn the blown up barrels
		SpawnMob(GetZone(Caster), 1370125, false, -19.714, 3.0022, -25.172)
		SpawnMob(GetZone(Caster), 1370125, false, -18.3729, 3.00219, -25.7906)
		SpawnMob(GetZone(Caster), 1370125, false, -18.1974, 3.0020, -24.3421)

		-- Spawn Adjunct-Captain Rommuls
		SpawnMob(GetZone(Caster), 1370065, false, -10.97, 4.13, -53.93)

		-- Spawn 3 Brotherhood enforcers
		SpawnByLocationID(GetZone(Caster), 403031)
		SpawnByLocationID(GetZone(Caster), 403032)
		SpawnByLocationID(GetZone(Caster), 403033)
		--SpawnMob(GetZone(Caster), 1370064, false, -13.58, 4.37, -58.36)
		--SpawnMob(GetZone(Caster), 1370064, false, -17.60, 2.00, 0.77)
		--SpawnMob(GetZone(Caster), 1370064, false, 7.93, 9.12, -39.78)
	end
end