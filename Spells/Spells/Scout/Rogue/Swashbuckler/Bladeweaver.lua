--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Bladeweaver.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 01:12:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Increases STA of caster by 0.7
    AddSpellBonus(Target, 1, BonusAmt)

    -- Increases AGI of caster by 15.0
    AddSpellBonus(Target, 2, BonusAmt)

    -- Adds 14.0% to base avoidance.
    AddSpellBonus(Target, 696, BonusAmt)

    -- Increases Mitigation of caster vs physical damage by 82
    AddSpellBonus(Target, 200, BonusAmt)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 183
    AddSpellBonus(Target, 201, BonusAmt)
    AddSpellBonus(Target, 202, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
