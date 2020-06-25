--[[
    Script Name    : Spells/Priest/Druid/Fury/PrimalFury.lua
    Script Author  : neatz09
    Script Date    : 2019.10.28 05:10:20
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases STR, AGI, WIS and INT of target by 18.2
local buff = { [170148] = 5164, [170149] = 5166, [170150] = 5167, [170151] = 5168, [170152] = 5169, [170153] = 5170, [170154] = 5171 }

function cast(Caster, Target, Stats, Avoid, Mit)
    AddSpellBonus(Target, 0, Stats)
    AddSpellBonus(Target, 2, Stats)
    AddSpellBonus(Target, 3, Stats)
    AddSpellBonus(Target, 4, Stats)
	AddSpellBonus(Target, 696, Avoid)
    AddSpellBonus(Target, 201, Mit)
	AddSpellBonus(Target, 202, Mit)
	AddSpellBonus(Target, 203, Mit)
	AddProc(Target, 1, 20)
end

function proc(Caster, Target, Type)
local Spell_ID = GetSpellID()
CastSpell(Caster, buff[Spell_ID], GetSpellTier())
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
	RemoveProc(Target)
end
-- Adds 1.4% to base avoidance.
-- Increases Mitigation of target vs elemental, noxious and arcane damage by 129
-- On any combat or spell hit this spell may cast Battle Fury on target.  Lasts for 10.0 seconds.  Triggers about 2.0 times per minute. 
--     Increases Ability Casting Speed of target by 7.2%
--     Increases Haste of target by 21.0
--     Increases Multi Attack of target by 21.0
