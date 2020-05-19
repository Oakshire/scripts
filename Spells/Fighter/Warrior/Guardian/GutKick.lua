--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/GutKick.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 07:11:41
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    -- Inflicts 13 - 22 crushing damage on target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DDType, MinDmg)
    end

    -- Interrupts target
    if target ~= nil then
        Interrupt(Caster, Target)
    end
end
