--[[
    Script Name    : Spells/Priest/Cure.lua
    Script Author  : theFoof
    Script Date    : 2014.1.13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Dispels X levels of any hostile effects on target
    CureByType(1, 1, "", (GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 2, "", (GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 3, "", (GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 4, "", (GetLevel(Caster) * 1.08) + 1)
end

function remove(Caster, Target)
end

