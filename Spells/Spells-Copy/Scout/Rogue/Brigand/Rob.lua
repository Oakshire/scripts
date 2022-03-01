--[[
	Script Name	: Spells/Scout/Rogue/Brigand/Rob.lua
	Script Purpose	: Brigand Stealth attack + Debuff
	Script Author	: Zcoretri
	Script Date	: 13.March.2014
	Script Notes	: 
--]]

function precast(Caster, Target)
    if IsStealthed(Caster) then
        return true
    end
    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false, 0
end

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, StatAmt)
-- Inflicts 13 - 21 melee damage on target
-- Decreases STR of target by 5.0
    SpellDamage(Target, DmgType, dmgAmount)
    AddSpellBonus(Target, 0, StatAmt)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, StatAmt)
    RemoveSpellBonus(Target)
end
