--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Harbinger.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 04:03:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Power)
    -- Increases STA of target by 2.8
    AddSpellBonus(Target, 1, Sta)

    -- Increases Max Power of target by 14.6
    AddSpellBonus(Target, 619, Power)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
