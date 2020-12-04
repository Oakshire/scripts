--[[
    Script Name    : Spells/FocusStalwart.lua
    Script Author  : neatz09
    Script Date    : 2020.12.04 05:12:33
    Script Purpose : 
                   : this spell will likely need a formula
--]]

-- Increases AGI, STA, STR, INT and WIS of caster by 2.0
-- Increases Max Health and Power by 1%
-- Increases In-Combat Regeneration by 2.0
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 0
-- Grants a 5.0% chance to resist Stun effects
-- Increases In-Combat Regeneration by 2.0
-- Increases Mitigation of caster vs arcane damage by 0

function cast(Caster, Target, Stats, PwrHP, Regen, Stun, Resist)
    AddSpellBonus(Target, 0, Stats)
    AddSpellBonus(Target, 1, Stats)
    AddSpellBonus(Target, 2, Stats)
    AddSpellBonus(Target, 3, Stats)
    AddSpellBonus(Target, 4, Stats)
    AddSpellBonus(Target, 607, PwrHP)
    AddSpellBonus(Target, 620, PwrHP)
    AddSpellBonus(Target, 604, Regen)
    AddSpellBonus(Target, 605, Regen)
    AddSpellBonus(Target, 201, Resist)
	AddSpellBonus(Target, 202, Resist)
	AddSpellBonus(Target, 203, Resist)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end