--[[
    Script Name    : Spells/Scout/Predator/Ranger/HuntersInstinct.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 06:03:14
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Agi, AtkSpeed, CombatMove, Avoid, PhyMit, SpellMit)
    -- Increases AGI of caster by 8.7
    AddSpellBonus(Target, 2, Agi)

    -- Increases Attack Speed of caster by 12.4
    AddSpellBonus(Target, 617, AtkSpeed)

    -- Increases in-combat movement speed of caster by 4.5%
    AddSpellBonus(Target, 616, CombatMove)

    -- Adds 14.0% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)  -- Not sure on 696 for this stat

    -- Increases Mitigation of caster vs physical damage by 69
    AddSpellBonus(Target, 200, PhyMit)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 154
    AddSpellBonus(Target, 201, SpellMit)
    AddSpellBonus(Target, 202, SpellMit)
    AddSpellBonus(Target, 203, SpellMit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

