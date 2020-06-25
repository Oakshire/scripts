--[[
    Script Name	    : ShieldBash.lua
    Script Purpose  : Generic damage + stun script
    Script Author   : John Adams
    Script Date	    : 2008.12.04
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)
    -- DD component
    if MaxDmg ~= nil and MinDmg < MaxDmg then
	SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
    else
	SpellDamage(Target, DDType, MinDmg)
    end
end

function remove(Caster, Target, DDType, MinDmg, MaxDmg)
    --Apply Knockdown
    --CastSpell(Target, 5000, 1)
end