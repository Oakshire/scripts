--[[
    Script Name    : Spells/Traits/MechanicalVambraces.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:00
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.5

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end