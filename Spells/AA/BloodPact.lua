--[[
    Script Name    : Spells/AA/BloodPact.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:22
    Script Purpose : 
                   : 
--]]

-- Prevents AOE (except when direct) 

function cast(Caster, Target)
    AddImmunitySpell(7, Target)
end

function remove(Caster, Target)
    RemoveImmunitySpell(7, Target)
end