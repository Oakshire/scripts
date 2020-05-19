--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/GrimHarbinger.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 05:01:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- On a melee hit this spell may cast Grim Strike on target of attack.  Triggers about 3.0 times per minute. 
    AddProc(Target, 3, 15.0)
end

function proc(Caster, Target, Type, DmgType, DmgMin, DmgMax, pctHealMin, pctHealMax)
    if Type == 3 then
        --     Inflicts 37 - 62 disease damage on target
        ProcDamage(Caster, Target, "Grim Strike", DmgType, DmgMin, DmgMax)

        --     Heals caster for 15 - 25
        --         This effect cannot be critically applied.
        --     The healing of this spell cannot be modified except by direct means
        SpellHeal("Heal", GetPCTOfHP(Caster, pctHealMin), GetPCTOfHP(Caster, pctHealMax),Caster, 2, 1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end