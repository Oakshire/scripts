--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/BruisingSpirit.lua
    Script Author  : Dello
    Script Date    : 09/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    Say(Caster, "This Spell costs health overtime - not implemented.")
  
AddSpellBonus(Target, 200, BonusAmt)
end


function remove(Caster, Target, BonusAmt)
    RemoveSpellBonus(Target)
end