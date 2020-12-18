--[[
    Script Name    : Spells/Traits/TheoreticalImprovements.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:44
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