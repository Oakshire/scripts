--[[
    Script Name    : Spells/Fighter/Brawler/ThunderingFists.lua
    Script Author  : Dello
    Script Date    : 2014.07.11 02:07:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, Dmg)
    SetSpellTriggerCount(5, 1)
    AddProc(Target, 3, 100)
end

function proc(Caster, Target, Type, DmgType, Dmg)
    if Type == 3 then
        ProcDamage(Caster, Target, "Thunder Fist", DmgType, Dmg)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
