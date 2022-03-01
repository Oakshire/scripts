--[[
    Script Name    : Spells/Scout/Bard/Troubador/VexingVerses.lua
    Script Author  : neatz09
    Script Date    : 2020.09.01 11:09:59
    Script Purpose : 
                   : 
--]]

-- Inflicts 4 - 6 magic damage on target
-- Decreases Ability Casting Speed of target by 18.0%
-- Decreases Defense of target by 2.0
-- Target will lose 8% more power when power is consumed
-- 8% of target's power consumed will also be drained from target's health

function cast(Caster, Target, DmgType, MinVal, MaxVal, Debuff)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 664, CastSpeed)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Debuff)
    Say(Caster, "Target will lose % more power + % of target's power consumed drained from target's health not implemented.")

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end

