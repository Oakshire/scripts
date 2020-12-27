--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Dogma.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 12:10:25
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)  

function cast(Caster, Target, DmgType, DmgVal)
      AddProc(Target, 12, 100)
end

function proc(Caster, Target, Type, DmgType, DmgVal)
    -- On a beneficial spell cast this spell will cast Convert Ally on target of spell cast.
    if Type == 12 then
       --     Heals target for 128
        ProcHeal(Caster, Target, "Convert Ally", "Heal", HealVal, 0, "You cast Convert Ally on %t")

    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
