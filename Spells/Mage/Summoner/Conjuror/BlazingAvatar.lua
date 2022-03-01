--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/BlazingAvatar.lua
    Script Author  : neatz09
    Script Date    : 2019.11.11 06:11:50
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell will cast Blaze on target's attacker.  
--     Inflicts 218 - 363 heat damage on target
--     Grants a total of 5 triggers of the spell.
-- On any combat or spell hit this spell will cast Blaze on target of attack.  
--     Inflicts 218 - 363 heat damage on target
--     Grants a total of 5 triggers of the spell.

function cast(Caster, Target, DmgType, MinVal, MaxVal, Triggers)
AddProc(Target, 16, 100) --Damaged Melee
AddProc(Target, 1, 100) --Offensive
SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Triggers)
if Type == 16 or Type == 1 then
ProcDamage(Caster, Target, "Blaze", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
end

end

function remove(Caster, Target)
RemoveProc(Target)
end