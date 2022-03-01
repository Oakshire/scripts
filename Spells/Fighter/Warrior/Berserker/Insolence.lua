--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Insolence.lua
    Script Author  : neatz09
    Script Date    : 2020.10.25 05:10:37
    Script Purpose : 
                   : 
--]]

-- Applies Insolent Assault.
--     Inflicts 404 - 607 melee damage on targets in Area of Effect
-- Applies Insolent Gibe.
--     Increases Threat to targets in Area of Effect by 3,413 - 4,850 
-- When any damage is received this spell has a 50% chance to cast Insolent Gibe on target's attacker.  
--     Increases Threat to target encounter by 1,617 - 1,857 

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHate, MaxHate, ProcMin, ProcMax, Chance)
SpellDamage(Target, DmgType, MinVal, MaxVal)
--CastSpell needed here
AddProc(Target, 15, Chance)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, MinHate, MaxHate, ProcMin, ProcMax, Chance)
if Type == 15 then
    Say(Caster, "CastCustomSpell needed here")
end
end

function remove(Caster, Target)
RemoveProc(Target)
end