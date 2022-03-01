--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/GrislyProtection.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.08 12:12:05
    Script Purpose : Updated Proc Hate 4/16/20 Neatz09
                   : 
--]]

function cast(Caster, Target, agg, procDmgType, procDmg, procHeal, atkSpeed, maxHP, hateGain, spellMit, procHateMin, procHateMax)
    --     Increases Aggression of target by 1.9
    AddSkillBonus(Target, GetSkillByName("Aggression"), agg)

    --     Decreases Attack Speed of target by 25.0
    AddSpellBonus(Target, 617, atkSpeed)

    --     Increases Max Health of target by 9.0%
    AddSpellBonus(Target, 607, maxHP)

    --     Increases Hate Gain of target by 11.9%
    AddSpellBonus(Target, 624, hateGain)

    --     Increases Mitigation of target vs elemental and noxious damage by 126
    --     Increases Mitigation of target vs arcane damage by 126
    AddSpellBonus(Target, 201, spellMit)
    AddSpellBonus(Target, 202, spellMit)
    AddSpellBonus(Target, 203, spellMit)

    AddProc(Target, 1, 100)
    AddProc(Target, 2, 100)
    
end

function proc(Caster, Target, Type, agg, procDmgType, procDmg, procHeal, atkSpeed, maxHP, hateGain, spellMit, procHateMin, procHateMax)
    if Type == 1 then
        -- 1 = offensive

        --     On any combat or spell hit this spell will cast Shout on target of attack.  
        --         Increases Threat to target encounter by 35 - 42 
        if procHateMax ~= nil and procHateMin < procHateMax then
ProcHate(Caster, Target, math.random(procHateMin, procHateMax), "Shout")
        end

    elseif Type == 2 then
        -- 2 = defensive

        --     When damaged this spell will cast Grisly Feedback on target's attacker.  
        --         Inflicts 7 disease damage on target
        --         Heals caster for 3
        ProcDamage(Caster, Target, "Grisly Feedback", procDmgType, procDmg)
        SpellHeal("Heal", procHeal, 0, Caster)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
