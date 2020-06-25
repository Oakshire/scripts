--[[
	Script Name	: Backstab.lua
	Script Purpose	: Brigand Direct Damage + DoT
	Script Author	: Zcoretri
	Script Date	: 17.April.2010
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, TickDmgType, TickDmg)
    -- DD component
    -- Add check for Caster being behind Target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
	SpellDamage(Target, DmgType, dmgAmount)
    else
	SpellDamage(Target, DmgType, MinDmg)
    end
end

function tick(Caster, Target, DmgType, MinDmg, MaxDmg, TickDmgType, TickDmg)
    SpellDamage(Target, TickDmgType, TickDmg)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, TickDmgType, TickDmg)

end
