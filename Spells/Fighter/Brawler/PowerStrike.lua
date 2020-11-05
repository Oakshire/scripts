--[[
    Script Name    : Spells/Fighter/Brawler/PowerStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:09
    Script Purpose : 
                   : 
--]]

-- Inflicts 28 - 46 melee damage on target
-- Decreases Defense of target by 1.3
-- If facing target

function cast(Caster, Target)
    Say(Caster, "facing target not implemented.")
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end