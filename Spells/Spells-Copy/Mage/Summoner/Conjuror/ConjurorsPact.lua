--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/ConjurorsPact.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 06:03:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    --     When damaged this spell has a 25% chance to cast Exposed Elements on target's attacker.  Lasts for 20.0 seconds.  
    AddProc(Target, 2, 25.0)

    --     On any combat or spell hit this spell may cast Exposed Elements on target of attack.  Lasts for 20.0 seconds.  Triggers about 5.0 times per minute. 
    AddProc(Target, 1, 25.0)
end

function proc(Caster, Target, Type, BonusAmt)
    if Type == 1 or Type == 2 then
        --     When damaged this spell has a 25% chance to cast Exposed Elements on target's attacker.  Lasts for 20.0 seconds.  
        --         Decreases Mitigation of target vs elemental and arcane damage by 141
        local active = GetTempVariable(Target, "CONJURORS_PACT_PROC_ACTIVE")
        if active == nil or active == "False" then
            SetTempVariable(Target, "CONJURORS_PACT_PROC_ACTIVE", "True")
            AddSpellBonus(Target, 201, BonusAmt)
            AddSpellBonus(Target, 203, BonusAmt)
            AddSpellTimer(20000, "RemoveProcEffect", Caster, Target)
        end
    end
end

function RemoveProcEffect(Caster, Target)
    SetTempVariable(Target, "CONJURORS_PACT_PROC_ACTIVE", "False")
    RemoveSpellBonus(Target)
end

function remove(Caster, Target)
    RemoveProc(Target)
end
