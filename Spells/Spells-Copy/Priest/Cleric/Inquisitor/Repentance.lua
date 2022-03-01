--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Repentance.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 09:03:13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    --     Grants a total of 3 triggers of the spell.
    SetSpellTriggerCount(3, 1)

    -- On any combat or spell hit this spell will cast Repenting Strike on caster.  Lasts for 2.5 seconds.  
    AddProc(Target, 1, 100)
end

function proc(Caster, Target, Type, DmgType, DmgMin, DmgMax)
    if Type == 1 then
        --     Inflicts 88 - 147 divine damage on target
        ProcDamage(Target, Caster, "Repenting Strike", DmgType, DmgMin, DmgMax)

        --     Stuns target
        --         If Target is not Epic
        if not IsEpic(Caster) then
            AddControlEffect(Caster, 4)
            AddSpellTimer(2500, "RemoveStun", Caster, Target)
        end

        RemoveTriggerFromSpell(1)
    end
end

function RemoveStun(Caster, Target)
    RemoveControlEffect(Caster, 4)
end

function remove(Caster, Target)
    RemoveProc(Target)
end