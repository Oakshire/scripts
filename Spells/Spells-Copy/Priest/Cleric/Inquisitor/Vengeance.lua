--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Vengeance.lua
    Script Author  : neatz09
    Script Date    : 2019.10.04 05:10:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgVal)
      AddProc(Target, 16, 100)
 --         Grants a total of 5 triggers of the spell.
    SetSpellTriggerCount(5, 1)
end

function proc(Caster, Target, Type, DmgType, DmgVal)
    -- On a melee hit this spell will cast Vengeance on caster.
    if Type == 16 then
        --     --     Inflicts 237 divine damage on target
        ProcDamage(Caster, Target, "Vengeance", Type, DmgType, DmgVal)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
