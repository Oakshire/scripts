--[[
    Script Name    : Spells/AA/LayeredScales.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:02
    Script Purpose : 
                   : 
--]]

-- The fighter's defensive stance's Worn Armor Mitigation will be increased by 1%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 678, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end