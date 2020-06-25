--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/AuraofVoid.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 04:10:34
    Script Purpose : 
                   : 
--]]

--     Grants a total of 3 triggers of the spell.
function cast(Caster, Target, DmgType, MinVal, MaxVal)
      AddProc(Target, 17, 100)
 --         Grants a total of 3 triggers of the spell.
    SetSpellTriggerCount(3, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    -- When damaged with a spell this spell will cast Aura of Pain on target. 
    if Type == 17 then
        --     Inflicts 125 - 152 disease damage on target
        ProcDamage(Caster, Target, "Aura of Pain", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
