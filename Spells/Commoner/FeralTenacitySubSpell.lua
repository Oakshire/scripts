--[[
    Script Name    : Spells/Commoner/FeralTenacitySubSpell.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 11:10:55
    Script Purpose : Subspell for Feral Tenacity
                   : 
--]]

--     Heals target for 256
--     Heals target for 64 every 2 seconds
--     Increases AGI of target by 28.6

function cast(Caster, Target, Healz, Tick, Stat)
	SpellHeal("Heal", Healz)
    AddSpellBonus(Target, 2, Stat)
end

function tick(Caster, Target, Healz, Tick, Stat)
	SpellHeal("Heal", Tick)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end