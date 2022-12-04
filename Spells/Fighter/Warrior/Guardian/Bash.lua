--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Bash.lua
    Script Author  : Dello
    Script Date    : 13/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    -- Inflicts 6 - 10 crushing damage on target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DDType, MinDmg)
    CastSpell(Target, 5001, GetSpellTier())
    end
end