--[[
    Script Name    : Spells/Mage/ObsidianWebbing.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.20 12:11:18
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
        AddControlEffect(Target, 5)
        AddProc(Target, 2, 10.0)

end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 5)

end


