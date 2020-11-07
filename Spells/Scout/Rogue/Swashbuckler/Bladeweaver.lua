--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Bladeweaver.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 01:12:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Agi, Avoid, Phys, NonPhys)
    -- Increases STA of caster by 0.7
    AddSpellBonus(Target, 1, Sta)

    -- Increases AGI of caster by 15.0
    AddSpellBonus(Target, 2, Agi)

    -- Adds 14.0% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Increases Mitigation of caster vs physical damage by 82
    AddSpellBonus(Target, 200, Phys)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 183
    AddSpellBonus(Target, 201, NonPhys)
    AddSpellBonus(Target, 202, NonPhys)
    AddSpellBonus(Target, 203, NonPhys)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end