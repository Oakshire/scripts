--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/LightningFists.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 06:03:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, Dmg)
    --     Grants a total of 5 triggers of the spell.
    SetSpellTriggerCount(5, 1)
    -- On a melee hit this spell will cast Thunder Fist on target of attack.  
    AddProc(Target, 3, 100)
end

function proc(Caster, Target, Type, DmgType, Dmg)
    --     Inflicts 25 magic damage on target
    if Type == 3 then
        ProcDamage(Caster, Target, "Thunder Fist", DmgType, Dmg)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end

