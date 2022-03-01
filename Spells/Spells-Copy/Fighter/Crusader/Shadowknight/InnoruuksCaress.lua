--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/InnoruuksCaress.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 02:01:19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, HateAmt, DmgType, DmgAmt)
    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 43
    AddSpellBonus(Target, 201, BonusAmt)
    AddSpellBonus(Target, 202, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)

    AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, BonusAmt, HateAmt, DmgType, DmgAmt)
    -- When damaged with a melee weapon this spell will cast Caress Feedback on target's attacker.  
    --     Increases Threat to target by 4 
    --     Inflicts 1 disease damage on target
    if Type == 4 then
        AddHate(Caster, Target, HateAmt)
        ProcDamage(Caster, Target, "Caress Feedback", DmgType, DmgAmt)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
