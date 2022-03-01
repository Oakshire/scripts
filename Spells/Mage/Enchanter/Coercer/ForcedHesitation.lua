--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/ForcedHesitation.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 08:03:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)

    -- Applies Blind.  Lasts for 4.0 seconds.
    --     Dazes target
    --     Blurs vision of target
    --     Dispelled when target takes damage
    --     Epic targets gain an immunity to Daze effects of 12.0 seconds and duration is reduced to 1.3 seconds.

    -- Roots target
    AddControlEffect(Target, 5)

    -- 5% chance to dispel when target takes damage
    AddProc(Target, 2, 5.0)

    -- Epic targets gain an immunity to Root and Will not multi-attack if the primary attack was avoided. effects of 54.0 seconds and duration is reduced to 6.0 seconds.
    -- Resistibility increases against targets higher than level 29.
end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end
