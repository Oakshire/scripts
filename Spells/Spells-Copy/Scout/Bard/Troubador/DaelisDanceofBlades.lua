--[[
    Script Name    : Spells/Scout/Bard/Troubadour/DaelisDanceofBlades.lua
    Script Author  : Zcoretri
    Script Date    : 4.April.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, AgiAmt, ProcChance, DmgType, MinDmg, MaxDmg, ProcChance2, DmgType2, MinDmg2, MaxDmg2, AvoidAmt, PhysMit, MitAmt)
    -- Increases AGI of caster by 47.0
    AddSpellBonus(Target, 2, AgiAmt)
    -- When damaged with a spell this spell has a 20% chance to cast Song Barrier on target's attacker.
    AddProc(Target, 2, ProcChance)
    -- Inflicts 65 - 109 mental damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    -- When damaged with a melee weapon this spell has a 20% chance to cast Song Barrier on target's attacker.
    AddProc(Target, 2, ProcChance2)  
    -- Inflicts 65 - 109 mental damage on target
    SpellDamage(Target, DmgType2, MinDmg2, MaxDmg2)
    -- Adds 14.0% to base avoidance.
    AddSpellBonus(Target, 696, AvoidAmt)
    -- Increases Mitigation of caster vs physical damage by 170
    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 379
    AddSpellBonus(Target, 200, PhyMit)
    AddSpellBonus(Target, 201, MitAmt)
    AddSpellBonus(Target, 202, MitAmt)
    AddSpellBonus(Target, 203, MitAmt)
end

function proc(Caster, Target, AgiAmt, ProcChance, DmgType, MinDmg, MaxDmg, ProcChance2, DmgType2, MinDmg2, MaxDmg2, AvoidAmt, PhysMit, MitAmt)
    ProcDamage(Caster, Target, "Song Barrier", DmgType, MinDmg, MaxDmg)
    ProcDamage(Caster, Target, "Song Barrier", DmgType2, MinDmg2, MaxDmg2)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveProc(Caster)
end

