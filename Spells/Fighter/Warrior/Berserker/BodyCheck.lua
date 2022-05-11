--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BodyCheck.lua
    Script Author  : Dello
    Script Date    : 11/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    -- Inflicts 6 - 10 crushing damage on target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DDType, MinDmg)
    end

    if not IsEpic(Target) then
        Knockback(Caster, Target, 4000, 150)
        AddControlEffect(Target, 4)
    end

    -- Resistibility increases against targets higher than level 31.

end


function remove(Caster, Target)
    --RemoveKnockback(Caster, Target)
    RemoveControlEffect(Target, 4)
end
