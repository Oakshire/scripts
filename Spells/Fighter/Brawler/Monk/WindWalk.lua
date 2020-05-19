--[[
    Script Name    : Spells/Fighter/Brawler/Monk/WindWalk.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.14 05:07:00
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target)
    -- Grants invisibility to caster
    -- Suspends caster's movement speed enhancements
    -- 1 = stealth, 2 = invis
    Stealth(2, Target)
end

function remove(Caster, Target)
    -- for stealth use RemoveStealth()
    RemoveInvis(Target)
end
