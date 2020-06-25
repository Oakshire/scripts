--[[
	Script Name	: SpawnScripts/Baubbleshire/beehive.lua
	Script Purpose	: beehive
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Quest ID's
local PAYING_OFF_A_SWEET_DEBT = 326 -- was 73

function spawn(NPC)
	SetRequiredQuest(NPC, PAYING_OFF_A_SWEET_DEBT, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, PAYING_OFF_A_SWEET_DEBT) and GetQuestStep(Caster, PAYING_OFF_A_SWEET_DEBT) == 1 and SpellName == "Collect Honey" then
		AddStepProgress(Caster, PAYING_OFF_A_SWEET_DEBT, 1, 1)
	
		if math.random(0, 100) <= 50 then
			local bee = SpawnMob(GetZone(Target), 2380067, false, GetX(Caster), GetY(Caster), GetZ(Caster))
			AddHate(Caster, bee, 100)
		end
	
		SpawnSet(Target, "show_command_icon", 0)
		SpawnSet(NPC, "show_hand_icon", 0)
		AddTimer(Target, 60000, "MakeTargetable")
	end
end

function MakeTargetable(NPC)
	SpawnSet(NPC, "show_command_icon", 1)
	SpawnSet(NPC, "show_hand_icon", 1)
end