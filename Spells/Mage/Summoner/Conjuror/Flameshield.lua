--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Flameshield.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 06:03:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- When damaged with a melee weapon this spell will cast Flameshield on target's attacker.  
    AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, DmgType, Dmg)
    if Type == 4 then
        -- When damaged with a melee weapon this spell will cast Flameshield on target's attacker.  
        --     Inflicts 10 heat damage on target
        ProcDamage(Caster, Target, "Flameshield", DmgType, Dmg)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
