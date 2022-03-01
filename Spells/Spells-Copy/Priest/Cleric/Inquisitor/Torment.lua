--[[
	Script Name	: Torment.lua
	Script Purpose	: Inquisitor Debuff + DoT Damage
	Script Author	: Zcoretri
	Script Date	: 23.May.2010 UPDated by neatz09 10-15-19
	Script Notes	:
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, Debuff)
    Say(Caster, "Combat Mitigation component not supported")
    
-- Debuff component
    AddSpellBonus(Target, 203, Debuff)
    -- Instant Damage
SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function tick(Caster, Target, DmgType, MinDmg, MaxDmg)
SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function remove(Caster, Target)
RemoveSpellBonus(Target)
end
