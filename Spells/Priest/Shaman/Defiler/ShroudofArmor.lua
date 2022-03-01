--[[
    Script Name    : Spells/Priest/Shaman/Defiler/ShroudofArmor.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 04:03:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Resist, Ward)
    -- Increases Mitigation of group members (AE) vs physical damage by 93
    --     If not fighter
    AddSpellBonus(Target, 600, Resist, 11, 21, 31)

    -- Wards group members (AE) against 9 points of elemental, noxious and arcane damage
    AddWard(Ward, 1, 2)
end

function tick(Caster, Target)
    -- No clue on the tick time (6 sec) or amount to regen per tick, just a guess at this point
    AddToWard(3)
end

--Missing function for health over level 90
--last data entry is for max health
function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveWard()
end