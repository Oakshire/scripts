--[[
	Script Name	: Spells/Scout/Rogue/Brigand/Backstab.lua
	Script Purpose	: Brigand positional attack
	Script Author	: Zcoretri
	Script Date	: 13.March.2014
	Script Notes	:
--]]

function precast(Caster, Target)
    if IsFlanking(Caster, Target) then
        return true
    else
        SendMessage(Caster, "You must be flanking or behind your target to use this ability!", "yellow")
        return false
    end
end

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, DoTDmgType, DoTDmg)
    -- Inflicts 9 - 16 melee damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function tick(Caster, Target, DmgType, MinDmg, MaxDmg, DoTDmgType, DoTDmg)
    SpellDamage(Target, DoTDmgType, DoTDmg)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, DoTDmgType, DoTDmg)

end