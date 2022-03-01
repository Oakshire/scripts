--[[
    Script Name    : Spells/AA/DeftDisarm.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:08
    Script Purpose : 
                   : 
--]]
-- Inflicts 187 - 311 melee damage on target
-- Decreases WIS and STR of target by 79.2

function cast(Caster, Target, DmgType, MinVal, MaxVal, BonusAmt)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 3, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end