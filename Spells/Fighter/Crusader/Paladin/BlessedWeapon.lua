--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/BlessedWeapon.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 12:12:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- On a melee hit this spell may cast Glorious Strike on target of attack.  Lasts for 2.0 seconds.  Triggers about 1.6 times per minute. 
    AddProc(Target, 3, 12.5)
    Say(Caster, "Not Implemented: stun and bonus damage to undead")
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, bonusDmgType, bonusDmgMin, bonusDmgMax)
    if Type == 3 then
        --     Inflicts 43 - 72 divine damage on target
        if MaxVal ~= nil and MinVal < MaxVal then
            ProcDamage(Caster, Target, "Glorious Strike", DmgType, math.random(MinVal, MaxVal))
        else
            ProcDamage(Caster, Target, "Glorious Strike", DmgType, MinVal)
        end

        --     Inflicts 37 - 62 divine damage on target
        --         If target is undead
        --[[
        if undead then
            if bonusDmgMax ~= nil and bonusDmgMin < bonusDmgMax then
                ProcDamage(Caster, Target, "Glorious Strike", bonusDmgType, math.random(bonusDmgMin, bonusDmgMax))
            else
                ProcDamage(Caster, Target, "Glorious Strike", bonusDmgType, bonusDmgMin)
            end
        end
        --]]

        --     Stuns target
        --         If Target is not Epic

    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
