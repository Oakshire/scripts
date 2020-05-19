--[[
    Script Name    : Spells/Scout/Rogue/Brigand/StreetSmarts.lua
    Script Author  : Zcoretri
    Script Date    : 14.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StatAmt, Avoidance, MitAmt1, MitAmt2)
-- Increases AGI of caster by 15.0
-- Adds 14.0% to base avoidance.
-- Increases Mitigation of caster vs physical damage by 152
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 183
    AddSpellBonus(Target, StatAmt)
    -- AddSkillBonus(Target, , Avoidance)
    AddSpellBonus(Target, 200, MitAmt1)
    AddSpellBonus(Target, 201, MitAmt2)
    AddSpellBonus(Target, 202, MitAmt2)
    AddSpellBonus(Target, 203, MitAmt2)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end

