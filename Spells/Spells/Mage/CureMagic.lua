--[[
    Script Name    : Spells/Mage/CureMagic.lua
    Script Author  : theFoof
    Script Date    : 2014.1.16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Dispels X levels of any hostile effects on target
    local level = ((GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 1, "", level)
    CureByType(1, 2, "", level)
    CureByType(1, 3, "", level)
    CureByType(1, 4, "", level)
end

function remove(Caster, Target)
end

