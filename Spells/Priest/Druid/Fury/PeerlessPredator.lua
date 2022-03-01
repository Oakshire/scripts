--[[
    Script Name    : Spells/Priest/Druid/Fury/PeerlessPredator.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 04:01:30
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stat, Avoid, Resist)
    -- Shapechanges caster into a lion
    if GetGender(Target) == 0 then
        SetIllusion(Target, 1372)
    else
        SetIllusion(Target, 303)
    end

    -- Increases STA of caster by 21.6
    AddSpellBonus(Target, 1, Stat)

    -- Adds 2.1% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 342
    AddSpellBonus(Target, 201, Resist)
    AddSpellBonus(Target, 202, Resist)
    AddSpellBonus(Target, 203, Resist)

    -- Grants See Stealth to caster
    Say(Caster, "Not Implemented: see stealth")
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    ResetIllusion(Target)
end
