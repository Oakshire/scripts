--[[
    Script Name    : Spells/Fighter/Brawler/BruisingStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 05:11:47
    Script Purpose : 
                   : 
--]]

-- Inflicts 52 - 88 melee damage on target
-- If facing target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Facing target and health cost not implemented.")
end