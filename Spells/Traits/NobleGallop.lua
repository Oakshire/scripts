--[[
    Script Name    : Spells/Traits/NobleGallop.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 01:12:24
    Script Purpose : 
                   : 
--]]

-- Increases Mount Speed of caster by 5.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 611, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end