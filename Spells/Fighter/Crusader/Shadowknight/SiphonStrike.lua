--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/SiphonStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 07:10:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, pctHealMin, pctHealMax, DmgType2, Minval2, MaxVal2)
	--     Inflicts 46 - 77 disease damage on target
	local Val1 = pctHealMin
	local Val2 = pctHealMax
	local HealAmt = randomFloat(Val1, Val2)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	if LastSpellAttackHit() then
		-- Applies Life Draw on termination.
		--     Heals caster for 1.0 - 1.2% of max health
		--         This effect cannot be critically applied.
		--     The healing of this spell cannot be modified except by direct means
	SpellHealPct("Heal", HealAmt, false, true, Caster, 1, true, "Life Draw")
		-- Inflicts 13 - 22 disease damage on target
		SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
	end
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end