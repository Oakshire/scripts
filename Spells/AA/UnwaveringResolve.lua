--[[
    Script Name    : Spells/AA/UnwaveringResolve.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:56
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 1.0%
-- Increases Focus of caster by 0.0

function cast(Caster, Target, BonusAmt, Focus)
	AddSpellBonus(Target, 607, BonusAmt)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), Focus)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end