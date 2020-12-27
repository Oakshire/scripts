--[[
    Script Name    : Spells/Scout/Bard/Troubadour/RaxxylsRousingTune.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StatAmt, Mitigation)
    -- Increases AGI, INT and WIS of group members (AE)
    AddSpellBonus(Target, 2, StatAmt)
    AddSpellBonus(Target, 3, StatAmt)
    AddSpellBonus(Target, 4, StatAmt)
    -- Increases Mitigation of group members (AE) vs elemental, noxious and arcane damage
    AddSpellBonus(Target, 201, Mitigation)
    AddSpellBonus(Target, 202, Mitigation)
    AddSpellBonus(Target, 203, Mitigation)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

