--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Fanaticism.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 11:10:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stats, Avoid, Reuse, Haste, Mit)
--Increases INT, AGI, STR and WIS of group members (AE) by 79.2    
    AddSpellBonus(Target, 0, Stats)
    AddSpellBonus(Target, 2, Stats)
    AddSpellBonus(Target, 4, Stats)
    AddSpellBonus(Target, 3, Stats)
-- Adds 1.5% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)
-- Increases Ability Reuse Speed of group members (AE) by 5.4%
    AddSpellBonus(Target, 662, Reuse)
-- Increases Haste of group members (AE) by 45.0
    AddSpellBonus(Target, 617, Haste)
-- Increases Mitigation of group members (AE) vs elemental, noxious and arcane damage by 497
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
