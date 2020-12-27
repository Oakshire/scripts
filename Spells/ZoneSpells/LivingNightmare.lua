--[[
    Script Name    : Spells/ZoneSpells/LivingNightmare.lua
    Script Author  : neatz09
    Script Date    : 2020.12.26 07:12:38
    Script Purpose : Debuff for Estate of Unrest
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 609, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end