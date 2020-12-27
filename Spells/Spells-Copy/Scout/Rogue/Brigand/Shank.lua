--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Shank.lua
    Script Author  : neatz09
    Script Date    : 2019.10.07 02:10:00
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
-- Must be flanking or behind
    if not IsFlanking(Target, Caster) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    return true
end


function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, DoTMin, DotMax)
-- Inflicts 70 - 117 melee damage on target
-- Inflicts 51 piercing damage on target instantly and every 4 seconds
SpellDamage(Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DotType, DoTMin, DotMax)
end


function tick(Caster, Target)
SpellDamage(Target, DotType, DoTMin, DotMax)
end



