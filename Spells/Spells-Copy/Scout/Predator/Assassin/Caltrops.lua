--[[
    Script Name    : Spells/Scout/Predator/Assassin/Caltrops.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Snare, Resist)
    -- Applies Snare.  Lasts for 24.0 seconds.
    --     Slows target by 28.3%
    SetSpellSnareValue(Snare)
    AddControlEffect(Target, 11)

    --     5% chance to dispel when target receives hostile action
    --     5% chance to dispel when target takes damage
    AddProc(Target, 2, 5)

    -- Decreases Mitigation of target vs noxious damage by 197
    AddSpellBonus(Target, 202, BonusAmt)
end

function proc(Caster, Target, Type)
    if Type == 2 then
        RemoveControlEffect(Target, 11)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 11)
    RemoveSpellBonus(Target)
    RemoveProc(Target)
end
