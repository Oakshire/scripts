--[[
    Script Name    : Spells/AA/HolyShield.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 12:12:49
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