--[[
    Script Name    : Spells/Traits/KerraSpeed.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:20
    Script Purpose : 
                   : 
--]]

-- Increases speed of caster by 5.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 609, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end