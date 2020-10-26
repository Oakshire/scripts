--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/RockSkin.lua
    Script Author  : neatz09
    Script Date    : 2019.10.25 03:10:49
    Script Purpose : 
                   : 
--]]

-- Decreases Weapon Damage of caster by 50.0
-- Slows caster by 88.9%
-- Increases Mitigation of caster vs physical damage by 1727


function cast(Caster, Target, Dmg, SlowAmt, Mit)
local Slow = 100 - SlowAmt
    AddSpellBonus(Target, 685, Dmg)
	SetSpeedMultiplier(Target, Slow)
    AddSpellBonus(Target, 200, Mit)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
	SetSpeedMultiplier(Target, 1)
end