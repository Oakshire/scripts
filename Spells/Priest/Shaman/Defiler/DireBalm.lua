--[[
    Script Name    : Spells/Priest/Shaman/Defiler/SacrificialRestoration.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 03:03:45
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    -- Heals target for 44 - 54
    SpellHeal("Heal", MinVal, MaxVal, Target)
end