--[[
   Script Name     : SpawnScriptsFrostfangSeaWidgetRedbladeSignalFireSwitch.lua
   Script Purpose  : for the spawn "redblade_x4_signal_fire_switch"
   Script Author   : theFoof
   Script Date     : 2013.5.6
   Script Notes    : 
--]]

local FlameOn = 5

function spawn(NPC)
	SetRequiredQuest(NPC, FlameOn, 1)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
    if GetQuestStep(Caster, FlameOn) == 1 and SpellName == "Light Signal Fire" then
	    AddSpawnAccess(GetSpawn(Target, 4701733), Caster)
		SetStepComplete(Caster, FlameOn, 1)
        local zone = GetZone(Target)
		local orc1 = SpawnByLocationID(zone, 1032806)
		local orc2 = SpawnByLocationID(zone, 1032810)
		SetTempVariable(orc1, "other_orc", orc2)
		SetTempVariable(orc2, "other_orc", orc1)
		Attack(orc1, Caster)
		Attack(orc2, Caster)
        SetRequiredQuest(Target, FlameOn, 5)
	end
end

function InRange(NPC, Player)
    if GetQuestStep(Player, FlameOn) == 2 then
	    local zone = GetZone(Player)
		local orc1 = SpawnByLocationID(zone, 1032806)
		local orc2 = SpawnByLocationID(zone, 1032810)
		SetTempVariable(orc1, "other_orc", orc2)
		SetTempVariable(orc2, "other_orc", orc1)
		Attack(orc1, Player)
		Attack(orc2, Player)
	end
end