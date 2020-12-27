--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/UnholyHunger.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 05:01:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- On a hit this spell may cast Unholy Strike on target of attack.  Triggers about 1.6 times per minute. 
    AddProc(Target, 3, 16, nil, 1)
end

function proc(Caster, Target, Type, DmgType, DmgMin, DmgMax, HealMin, HealMax)
    if Type == 3 then
        --     Inflicts 19 - 32 disease damage on target
        ProcDamage(Caster, Target, "Unholy Strike", DmgType, DmgMin, DmgMax)

        --     Heals caster for 6 - 10
        --         This effect cannot be critically applied.
        --     The healing of this spell cannot be modified except by direct means
        -- Old code SpellHeal("Heal", HealMin, HealMax, Caster, 2, 1)
        SpellHeal("Heal", HealMin / 100 * GetMaxHP(Caster), HealMax / 100 * GetMaxHP(Caster), Caster, 2, 1)
SendMessage(Caster, "Minimum : " .. round(MinVal *level) .. " Maximum: " .. round(MaxVal*level),"yellow")
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end