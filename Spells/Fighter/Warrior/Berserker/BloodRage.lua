--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BloodRage.lua
    Script Author  : neatz09
    Script Date    : 2019.10.14 08:10:40
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell has a 33% chance to cast Adrenal Flow on caster.  
--     Heals caster for 1.3 - 1.9% of max health
--         This effect cannot be critically applied.
--     This effect can only trigger once every 0.2 seconds.

function cast(Caster, Target, pctHealMin, pctHealMax, Chance)
	AddProc(Caster, 16, Chance)
    Say(Caster, "trigger limit not implemented. this spell also no longer has higher level versions, it scales instead and heals for a formula based amount.")
end

function proc(Caster, Target, Type, pctHealMin, pctHealMax, Chance)
	local Val1 = pctHealMin
	local Val2 = pctHealMax
	local HealAmt = randomFloat(Val1, Val2)
		SpellHealPct("Heal", HealAmt, false, true, Caster, 1, true, "Adrenal Flow")
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
	RemoveProc(Target)
end