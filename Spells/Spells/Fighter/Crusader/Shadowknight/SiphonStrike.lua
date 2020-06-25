--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/SiphonStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 07:10:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, pctHealMin, pctHealMax, DmgType2, Minval2, MaxVal2)
	--     Inflicts 46 - 77 disease damage on target
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	if LastSpellAttackHit() then
		-- Applies Life Draw on termination.
		--     Heals caster for 1.0 - 1.2% of max health
		--         This effect cannot be critically applied.
		--     The healing of this spell cannot be modified except by direct means
		Say(Caster, "Heal Min: " .. GetPCTOfHP(Caster, pctHealMin))
		local min2 = GetMaxHP(Caster) * (pctHealMin / 100)
		Say(Caster, "Heal Min2: " .. min2)
		SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMin), GetPCTOfHP(Caster, pctHealMax),Caster, 2, 1)
		-- Inflicts 13 - 22 disease damage on target
		SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
	end
end
