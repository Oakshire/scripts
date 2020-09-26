--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WallofRage.lua
    Script Author  : neatz09
    Script Date    : 2020.09.25 12:09:31
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Decreases Haste of caster by 11.3
-- Increases Mitigation of caster vs physical damage by 133
-- On a melee hit this spell may cast Cripple on target of attack.  Lasts for 10.0 seconds.  Triggers about 5.0 times per minute. 
--     Slows targets in Area of Effect by 29.3%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage
function cast(Caster, Target, Haste, Mit, SlowAmt, Chance)
    AddSpellBonus(Target, 617, Haste)
    AddSpellBonus(Caster, 200, Mit)
    AddSpellBonus(Caster, 201, Mit)
    AddSpellBonus(Caster, 202, Mit)
    AddSpellBonus(Caster, 203, Mit)
AddProc(Target, 3, 12)


end

function proc(Caster, Target, Type, Haste, Mit, SlowAmt, Chance)
    Say(Caster, "CastCrippleHere")
end

function remove(Caster, Target)
RemoveSpellBonus(Caster)
SetSpeedMultiplier(Target, 1)
end