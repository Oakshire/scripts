--[[
	Script Name	: SpawnScripts/PeatBog/quest_machine_in_water.lua
	Script Purpose	: quest_machine_in_water
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	:
--]]

local QUEST_2 = 216
local gnoll_spawned_recently = false

function spawn(NPC)
	--SetRequiredQuest(NPC, QUEST_2, 1)
	gnoll_spawned_recently = false
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST_2) and GetQuestStep(Caster, QUEST_2) == 1 then
		if gnoll_spawned_recently == false then
			gnoll_spawned_recently = true
			SendMessage(Caster, "Before you can attach the beacon you hear a howl nearby.")
			Gnoll = SpawnMob(GetZone(Caster), GetRandomGnollID(), false, GetX(Target), GetY(Target), GetZ(Target))
			AddHate(Caster, Gnoll, 100)
			AddTimer(Target, 30000, "ResetGnoll")
		else
			SetStepComplete(Caster, QUEST_2, 1)
		end
	end
end

function GetRandomGnollID()
	choice = math.random(1, 2)
	
	-- 1 of 2 'a gnoll machinist'
	if choice == 1 then
		return 1980103
	elseif choice == 2 then
		return 1980102
	end
end

function ResetGnoll(NPC)
	gnoll_spawned_recently = false
end