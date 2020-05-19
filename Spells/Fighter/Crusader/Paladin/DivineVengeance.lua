--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/DivineVengeance.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 05:12:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType1, MinVal1, MaxVal1, DmgType2, MinVal2, MaxVal2, DmgType3, MinVal3, MaxVal3)
    -- Inflicts 20 - 33 divine damage on target
    if MaxVal1 ~= nil and MinVal1 < MaxVal1 then
        SpellDamage(Target, DmgType1, math.random(MinVal1, MaxVal1))
    else
        SpellDamage(Target, DmgType1, MinVal1)
    end

    -- Applies Glorious Strike on termination.  Lasts for 2.0 seconds.
    --     Stuns target
    --         If Target is not Epic
    Say(Caster, "Not Implemented: Stun and bonus damage to undead")

    --     Inflicts 47 - 79 divine damage on target
    if MaxVal2 ~= nil and MinVal2 < MaxVal2 then
        ProcDamage(Caster, Target, "Glorious Strike", DmgType2, math.random(MinVal2, MaxVal2))
    else
        ProcDamage(Caster, Target, "Glorious Strike", DmgType2, MinVal2)
    end

    --     Inflicts 41 - 68 divine damage on target
    --         If target is undead

end

function remove(Caster, Target, DmgType1, MinVal1, MaxVal1, DmgType2, MinVal2, MaxVal2, DmgType3, MinVal3, MaxVal3)
    end
