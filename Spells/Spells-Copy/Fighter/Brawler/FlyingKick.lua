--[[
    Script Name    : Spells/Fighter/Brawler/FlyingKick.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, CurrentHP, MinHeal, MaxHeal)
    CurrentHP = GetMaxHP(Caster)
    MinHeal = CurrentHP * (MinVal / 100)
    MaxHeal = CurrentHP * (MaxVal / 100)
    SpellHeal("Heal", MinHeal, MaxHeal, Caster)
end