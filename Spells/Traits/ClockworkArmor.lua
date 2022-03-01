--[[
    Script Name    : Spells/Traits/ClockworkArmor.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:52
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 1.0%
-- Increases Max Health of caster by 2.0%

function cast(Caster, Target, Mana, Hp)
	AddSpellBonus(Target, 620, Mana)
	AddSpellBonus(Target, 607, Hp)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end