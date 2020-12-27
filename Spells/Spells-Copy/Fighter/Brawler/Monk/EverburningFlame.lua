--[[
    Script Name    : Spells/Fighter/Brawler/Monk/EverburningFlame.lua
    Script Author  : Dello
    Script Date    : 14/06/2014
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target, AttackSpeed)

    AddSpellBonus(Target, 617, AttackSpeed)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end


