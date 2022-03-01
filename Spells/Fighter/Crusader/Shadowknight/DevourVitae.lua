--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DevourVitae.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 08:10:36
    Script Purpose : 
                   : 
--]]

-- Inflicts 97 - 119 disease damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, pctHealMin, pctHealMax)
	local Val1 = pctHealMin
	local Val2 = pctHealMax
	local HealAmt = randomFloat(Val1, Val2)
        SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Heals caster for 3.4 - 4.2% of max health
--     This effect cannot be critically applied.
-- The healing of this spell cannot be modified except by direct means
SpellHealPct("Heal", HealAmt, false, true, Caster, 1, true)
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end