--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/PrayerofHealingpct.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 06:11:06
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 6.9 - 8.5% of max health
-- This effect cannot be critically applied.
-- Increases Max Health of group members (AE) by 155.7
-- The healing of this spell cannot be modified except by direct means

function cast(Caster, Target, BonusAmt, HealMin, HealMax)
	local Val1 = HealMin
	local Val2 = HealMax 
	local HealAmt = randomFloat(Val1, Val2)    
-- Increases Max Health of group members (AE) by 15.8
    AddSpellBonus(Target, 606, BonusAmt)
	SpellHealPct("Heal", HealAmt, false, true, 1, true)
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end