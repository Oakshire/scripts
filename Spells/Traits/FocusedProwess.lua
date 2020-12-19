--[[
    Script Name    : Spells/Traits/FocusedProwess.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 01:12:31
    Script Purpose : 
                   : 
--]]

-- Increases Ability Mod of caster by 1.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 707, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end