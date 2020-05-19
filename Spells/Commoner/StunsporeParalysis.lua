--[[
    Script Name    : Spells/Commoner/StunsporeParalysis.lua
    Script Author  : Cynnar
    Script Date    : 2017.12.16 12:12:10
    Script Purpose : For use with quest "Dust to Dust"
                   : 
--]]

function cast(Caster, Target)
    AddControlEffect(Target, 4)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end