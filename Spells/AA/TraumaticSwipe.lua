--[[
    Script Name    : Spells/AA/TraumaticSwipe.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:38
    Script Purpose : 
                   : 
--]]

-- Inflicts 405 - 675 melee damage on target
-- Decreases Ability Reuse Speed of target by 50.0%
-- Decreases Potency of target by 5.0%

function cast(Caster, Target, DmgType, MinVal, MaxVal, Reuse, Pot)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSpellBonus(Target, 662, Reuse)
    AddSpellBonus(Target, 629, Pot)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end