--[[
    Script Name    : Spells/Fighter/Brawler/Monk/LightningPalm.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 07:03:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    --     Grants a total of 8 triggers of the spell.
    SetSpellTriggerCount(8, 1)

    -- On a melee hit this spell will cast Jolting Strike on target of attack.  
    AddProc(Target, 3, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    if Type == 3 then
        --     Inflicts 13 - 22 magic damage on target
        ProcDamage(Caster, Target, "Jolting Strike", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
