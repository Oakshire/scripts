--[[
    Script Name    : Spells/Fighter/Brawler/RapidSwings.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, CurrentHP, MinVal, MaxVal, MinHeal, MaxHeal, DispellLvls)

    CurrentHP = GetMaxHP(Caster)

    MinHeal = CurrentHP * (MinVal / 100)

    MaxHeal = CurrentHP * (MaxVal / 100)

    SpellHeal("Heal", MinHeal, MaxHeal, Caster)

    CureByType(DispellLvls, 3)
   
end