--[[
    Script Name    : Spells/Scout/Bard/Dirge/DarosSorrowfulDirge.lua
    Script Author  : neatz09
    Script Date    : 2019.10.08 02:10:09
    Script Purpose : 
                   : 
--]]

-- Decreases Haste of target encounter by 11.7
-- Slows target encounter by 16.2%
function cast(Caster, Target, Haste, Slow)
    AddSpellBonus(Target, 617, Haste)
	SetSpeedMultiplier(Target, Slow)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
	SetSpeedMultiplier(Target, 1)
end