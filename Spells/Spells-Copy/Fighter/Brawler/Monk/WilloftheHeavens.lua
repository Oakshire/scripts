--[[
    Script Name    : Spells/Fighter/Brawler/Monk/WilloftheHeavens.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 06:01:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DispellLvls)
    -- Dispels 15 levels of elemental, noxious and arcane hostile effects on caster
    CureByType(DispellLvls, 1)
    CureByType(DispellLvls, 2)
    CureByType(DispellLvls, 3)
end

--Makes caster immune to Root effects
--Makes caster immune to Daze effects
--Makes caster immune to Stun effects