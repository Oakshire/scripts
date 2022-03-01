--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/HunkerDown.lua
    Script Author  : neatz09
    Script Date    : 2020.10.28 03:10:47
    Script Purpose : 
                   : 
--]]

-- Decreases Haste of caster by 11.3
-- Increases Mitigation of caster vs physical damage by 133
-- On a melee hit this spell may cast Pin on target of attack.  Lasts for 10.0 seconds.  Triggers about 5.0 times per minute. 
--     Roots target
--     5% chance to dispel when target takes damage
--     5% chance to dispel when target receives hostile action
--     Epic targets gain an immunity to Root and Ability attacks will hit for their maximum damage. effects of 30.0 seconds and duration is reduced to 3.3 seconds.

function cast(Caster, Target, Haste, Mit)
    AddSpellBonus(Target, 617, Haste)
    AddSpellBonus(Target, 200, Mit)
	AddProc(Target, 3, 5)
    Say(Caster, "PVP Increased heals not implemented.")

end

function proc(Caster, Target)
	if Type == 3 then 
		CastSpell(Target, 5452)
			end
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
	RemoveProc(Target)
end