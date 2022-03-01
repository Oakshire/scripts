--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Bloodbath.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 12:10:25
    Script Purpose : 
                   : 
--]]

-- Applies Knockdown on termination.  Lasts for 1.5 seconds.
--     Throws target back
--     Blurs vision of target
--     Stuns target
--     Does not affect Epic targets
-- Inflicts 17 - 51 melee damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
	Tier = GetSpellTier()
	CastSpell(Target, 5001, Tier, Caster)
end