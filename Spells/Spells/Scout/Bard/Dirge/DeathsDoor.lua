--[[
    Script Name    : Spells/Scout/Bard/Dirge/DeathsDoor.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08 08:12:24
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster
-- When damaged this spell has a chance to cast Death Barrier on target's attacker.  
--     Inflicts disease damage on target
-- Adds to base avoidance.
-- Increases Mitigation of caster vs physical damage
-- Increases Mitigation of caster vs elemental, noxious and arcane damage

function cast(Caster, Target, AgiAmt, ProcChance, DDType, DmgLow, DmgHigh, AvoidAmt, PhysMit, EleNoxMit)
    Say(Caster, "Fervor Not Implemented.")
	AddSpellBonus(Target, 2, AgiAmt)
    AddProc(Target, 2, ProcChance)
    AddSpellBonus(Target, 696, AvoidAmt)
    AddSpellBonus(Target, 200, PhysMit)
    AddSpellBonus(Target, 201, EleNoxMit)
    AddSpellBonus(Target, 202, EleNoxMit)
end

function proc(Caster, Target, ProcType, AgiAmt, ProcChance, DDType, DmgLow, DmgHigh, AvoidAmt, PhysMit, EleNoxMit)
    ProcDamage(Caster, Target, "Death Barrier", DDType, DmgLow, DmgHigh)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveProc(Caster)
end
