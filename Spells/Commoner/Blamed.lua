--[[
    Script Name    : Spells/Commoner/Blamed.lua
    Script Author  : neatz09
    Script Date    : 2020.10.25 05:10:26
    Script Purpose : Subspell for Devious Blade
                   : 
--]]

-- Increases hate gain by X

function cast(Caster, Target, HateAmt)
    AddSpellBonus(Target, 624, HateAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
