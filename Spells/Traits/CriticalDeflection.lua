--[[
    Script Name    : Spells/Traits/CriticalDeflection.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:44
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 1.0
-- Increases caster's chance to block by 1.0%

function cast(Caster, Target, Crit, Block)
	AddSpellBonus(Target, 654, Crit)
	AddSpellBonus(Target, 651, Block)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end