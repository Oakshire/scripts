--[[
    Script Name    : Spells/AA/InspiredRenewal.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 11:12:55
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 1.6

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 654, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
