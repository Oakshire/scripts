--[[
    Script Name    : Spells/Priest/Shaman/Defiler/SinisterCountenance.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 05:03:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Wis, Resist)
    -- Increases STA of caster by 7.7
    AddSpellBonus(Target, 1, Sta)

    -- Increases WIS of caster by 28.8
    AddSpellBonus(Target, 3, Wis)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 428
    AddSpellBonus(Target, 201, Resist)
    AddSpellBonus(Target, 202, Resist)
    AddSpellBonus(Target, 203, Resist)

    -- Grants See Invisibility to caster

    -- Shapechanges caster into a chaos essence
    SetIllusion(Target, 3717)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    ResetIllusion(Target)
end
