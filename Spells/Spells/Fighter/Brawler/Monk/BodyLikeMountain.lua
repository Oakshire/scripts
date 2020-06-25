--[[
    Script Name    : Spells/Fighter/Brawler/Monk/BodyLikeMountain.lua
    Script Author  : Dello
    Script Date    : 13/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    AddControlEffect(Target, 5)
    AddSpellBonus(Target, 200, BonusAmt)
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
    RemoveSpellBonus(Target)
end
