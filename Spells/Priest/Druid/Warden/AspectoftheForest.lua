--[[
    Script Name    : Spells/Priest/Druid/Warden/AspectoftheForest.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 11:12:18
    Script Purpose : 
                   : 
--]]

-- Increases STA of target
-- Increases WIS of target
-- Increases Mitigation of target vs elemental, noxious and arcane damage

function cast(Caster, Target, Sta, Wis, Mit)
    AddSpellBonus(Target, 1, Sta)
    AddSpellBonus(Target, 3, Wis)
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
