--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/IndomitableWill.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 05:03:54
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, levels)
    -- Dispels 15 levels of physical and arcane hostile effects on caster
    CureByType(1, 1, "", levels) -- trauma
    CureByType(1, 2, "", levels) -- arcane
end
