--[[
    Script Name    : Spells/Commoner/FaithsBulwark.lua
    Script Author  : neatz09
    Script Date    : 2020.04.12 01:04:27
    Script Purpose : 
                   : 
--]]

-- increases Mitigation of group members vs physical damage by X based on Clevel

function cast(Caster, Target, Mit)
    AddSpellBonus(Target, 200, (GetLevel(Caster) * 1.08) * Mit)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
