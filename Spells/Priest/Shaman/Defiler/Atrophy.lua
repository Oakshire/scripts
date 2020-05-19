--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Atrophy.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 03:03:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, AtkSpeed, DPS)
    -- Decreases Attack Speed of target by 9.2
    AddSpellBonus(Target, 617, AtkSpeed)

    -- Decreases Damage Per Second of target by 5.3
    AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
