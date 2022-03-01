--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/UnholyBlessing.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 06:03:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgMin, DmgMax, HealMin, HealMax)
    --     Grants a total of 5 triggers of the spell.
    SetSpellTriggerCount(5, 1)

    -- When damaged this spell will cast Voracious Soul on target's attacker.  
    AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, DmgType, DmgMin, DmgMax, pctHealMin, pctHealMax)
    if Type == 2 then
        --     Inflicts 19 - 24 disease damage on target
        ProcDamage(Caster, Target, "Voraciocus Soul", DmgType, DmgMin, DmgMax)

        --     Heals caster for 24 - 30
        --         This effect cannot be critically applied.
        --     The healing of this spell cannot be modified except by direct means
        SpellHeal(Heal, GetPCTOfHP(Caster, pctHealMin), GetPCTOfHP(Caster, pctHealMax),Caster, 2, 1)

        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
