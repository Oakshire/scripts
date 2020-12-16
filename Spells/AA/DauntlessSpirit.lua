--[[
    Script Name    : Spells/AA/DauntlessSpirit.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:12
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.8%
function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end