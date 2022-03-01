--[[
    Script Name    : Spells/AA/AriaofHealth.lua
    Script Author  : neatz09
    Script Date    : 2020.12.21 12:12:10
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.5%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 620, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end