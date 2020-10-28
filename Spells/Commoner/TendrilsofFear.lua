--[[
    Script Name    : Spells/Commoner/TendrilsofFear.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 10:10:53
    Script Purpose : Tendrils of Horror Subspell
                   : 
--]]

-- Decreases DPS of target by X
--Decreases Haste of target by X


function cast(Caster, Target, DPS, Haste)
    AddSpellBonus(Target, 629, DPS)
    AddSpellBonus(Target, 617, Haste)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
