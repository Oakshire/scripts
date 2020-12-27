--[[
	Script Name	: Spells/Scout/Bard/Dirge/BumRush.lua
	Script Purpose	: Brigand positional melee attack + interrupt
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

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
-- Interrupt the Target
    Interrupt(Caster, Target)
-- Inflicts melee damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end
