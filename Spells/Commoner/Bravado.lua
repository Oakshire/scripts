--[[
    Script Name    : Spells/Commoner/Bravado.lua
    Script Author  : neatz09
    Script Date    : 2020.09.27 11:09:14
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Hate, Haste)
    AddSpellBonus(Target, 624, Hate)
    AddSpellBonus(Target, 617, Haste)

end

function proc(Caster, Target, Type, Hate, Haste)
if Type == 15 then
    RemoveSpellBonus(Target)
end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
