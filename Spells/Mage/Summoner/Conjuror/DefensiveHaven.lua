--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/DefensiveHaven.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 05:03:47
    Script revision : Updated 4/13/2020 neatz09
                   : 
--]]

function cast(Caster, Target, AtkSpeed, MaxHP, HateGain, Agg, Resist, HateMin, HateMax, Ward)
    --     Decreases Attack Speed of target by 25.0
    AddSpellBonus(Target, 617, AtkSpeed)

    --     Increases Max Health of target by 9.0%
    AddSpellBonus(Target, 607, MaxHP)

    --     Increases Hate Gain of target by 11.9%
    AddSpellBonus(Target, 624, HateGain)

    --     Increases Aggression of target by 1.9
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), Agg)

    --     Increases Mitigation of target vs arcane damage by 126
    AddSpellBonus(Target, 203, Resist)

    --     Increases Mitigation of target vs elemental damage by 126
    AddSpellBonus(Target, 201, Resist)

    --     Increases Mitigation of target vs noxious damage by 126
    AddSpellBonus(Target, 202, Resist)

    --     On any combat or spell hit this spell will cast Shout on target of attack.  
    --         Increases Threat to target encounter by 35 - 42 
    AddProc(Target, 1, 100)

    --     Wards target against 13 points of all damage
    AddWard(Ward, 1)
end

function proc(Caster, Target, Type, AtkSpeed, MaxHP, HateGain, Agg, Resist, HateMin, HateMax, Ward)
    if Type == 1 then
ProcHate(Caster, Target, math.random(HateMin, HateMax), "Shout")
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
