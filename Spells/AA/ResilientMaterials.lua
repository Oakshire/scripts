--[[
    Script Name    : Spells/AA/ResilientMaterials.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:58
    Script Purpose : 
                   : 
--]]

-- Increases the amount of durability gained by 2.0.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 801, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end