--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/DivineInspiration.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 11:12:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- On a hit this spell may cast Divine Strike on target of attack.  Triggers about 1.6 times per minute. 
    AddProc(Target, 3, 12.5, nil, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    if Type == 3 then
        --     Inflicts 17 - 28 divine damage on target
        if MaxVal ~= nil and MinVal < MaxVal then
            ProcDamage(Caster, Target, "Divine Strike", DmgType, math.random(MinVal, MaxVal))
        else
            ProcDamage(Caster, Target, "Divine Strike", DmgType, MinVal)
        end

        --     Inflicts 17 - 28 divine damage on target
        --         If target is undead
        Say(Caster, "Not Implemented: Bonus damage to undead")
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
