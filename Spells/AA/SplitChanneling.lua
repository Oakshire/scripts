--[[
    Script Name    : Spells/AA/SplitChanneling.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 04:12:00
    Script Purpose : 
                   : 
--]]

-- Increases Doublecast Chance of caster by 0.5%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 645, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end