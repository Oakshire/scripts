--[[
    Script Name    : Spells/AA/GrandmastersWill.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:48
    Script Purpose : 
                   : 
--]]

-- Increases the durability gain by 1.0%.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 800, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end