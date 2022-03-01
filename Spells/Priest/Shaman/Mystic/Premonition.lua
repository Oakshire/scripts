--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Premonition.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 06:12:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusSta, BonusPower)
    -- Increases STA of target by 1.9
    AddSpellBonus(Target, 1, BonusSta)

    -- Increases Max Power of target by 21.9
    AddSpellBonus(Target, 501, BonusPower)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
