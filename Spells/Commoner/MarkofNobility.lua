--[[
    Script Name    : Spells/Commoner/MarkofNobility.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 02:10:45
    Script Purpose : Subspell for Mark of Divinity and Mark of Pawns
                   : 
--]]

-- Heals Target for X

function cast(Caster, Target, Healz)
SpellHeal("Heal", Healz)
end

function tick(Caster, Target, Healz)
SpellHeal("Heal", Healz)
end
