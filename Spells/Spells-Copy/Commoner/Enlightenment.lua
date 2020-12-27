--[[
    Script Name    : Spells/Commoner/Enlightenment.lua
    Script Author  : neatz09
    Script Date    : 2020.03.30 08:03:05
    Script Purpose : 
                   : 
--]]

--             Increases power of caster by 40.0%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 620, BonusAmt)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
