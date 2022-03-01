--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/HealServant.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 03:03:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Heal, CureLevels)
    -- Heals target for 17
    SpellHeal("Heal", Heal)

    -- Dispels 6 levels of any hostile effects on target
    CureByType(1, 1, "", CureLevels)
    CureByType(1, 2, "", CureLevels)
    CureByType(1, 3, "", CureLevels)
    CureByType(1, 4, "", CureLevels)
end
