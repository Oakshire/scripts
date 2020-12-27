--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Mendpct.lua
    Script Author  : neatz09
    Script Date    : 2019.10.19 03:10:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, CureLvls, MinVal, MaxVal)
-- Dispels 7 levels of noxious hostile effects on target
CureByType(CureLvls, 3);  
--Heals target for 8.1 - 9.9% of max health
SpellHeal("Heal", GetPCTOfHP(Caster, MinVal), GetPCTOfHP(Caster, MaxVal),0 , 2, 1)

 
end
