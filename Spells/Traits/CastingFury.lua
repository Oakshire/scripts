--[[
    Script Name    : Spells/Traits/CastingFury.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:31
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of caster by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end