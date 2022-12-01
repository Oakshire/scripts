--[[
    Script Name    : Spells/Procs/RootImmunity.Lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.30 05:11:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddImmunitySpell(5, Target)
end


function remove(Caster, Target)
    RemoveImmunitySpell(5, Target)
end


