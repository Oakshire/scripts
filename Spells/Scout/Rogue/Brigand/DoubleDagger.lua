--[[
	Script Name	: BatteryAndAssault.lua
	Script Purpose	: Brigand Direct Damage
	Script Author	: Zcoretri
	Script Date	: 17.April.2010
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    -- Add check for if first attack misses
    --if AttackFails == false then
        if MaxDmg ~= nil and MinDmg < MaxDmg then
            dmgAmount = math.random(MinDmg, MaxDmg)
	    SpellDamage(Target, DmgType, dmgAmount)
            SpellDamage(Target, DmgType, dmgAmount)
        else
	    SpellDamage(Target, DmgType, MinDmg)
            SpellDamage(Target, DmgType, MinDmg)
        end
    --end
end