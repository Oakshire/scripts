--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/NecroticReconstruction.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 09:12:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, dispelLevels, healVal, tickHealVal)
    -- Heals target for 9
    SpellHeal("Heal", healVal)

    -- Dispels 6 levels of any hostile effects on target
    CureByType(1, 1, 0, dispelLevels)
    CureByType(1, 2, 0, dispelLevels)
    CureByType(1, 3, 0, dispelLevels)
    CureByType(1, 4, 0, dispelLevels)
end

function tick(Caster, Target, dispelLevels, healVal, tickHealVal)
    -- Heals target for 1 every second
    SpellHeal("Heal", tickHealVal)
end
