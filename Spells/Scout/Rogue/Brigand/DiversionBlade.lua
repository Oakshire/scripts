--[[
	Script Name	: BumRush.lua
	Script Purpose	: Brigand Direct Damage + Interrupt
	Script Author	: Zcoretri
	Script Date	: 17.April.2010
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    -- Add check for Caster is flanking or behind Target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
	SpellDamage(Target, DmgType, dmgAmount)
    else
	SpellDamage(Target, DmgType, MinDmg)
    end
    --Interrupt(Target)
end