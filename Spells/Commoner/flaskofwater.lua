--[[
    Script Name    : Spells/Commoner/flaskofwater.lua
    Script Author  : neatz09
    Script Date    : 2019.08.18 10:08:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Bonus)
-- Increases Out-of-Combat Power Regeneration of target by 15.0
AddSpellBonus(Target, 603, Bonus)

end

function remove(Caster, Target, Bonus)
    RemoveSpellBonus(Target)
end