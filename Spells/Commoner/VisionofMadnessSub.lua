--[[
    Script Name    : Spells/Commoner/VisionofMadnessSub.lua
    Script Author  : neatz09
    Script Date    : 2021.01.09 02:01:34
    Script Purpose : sub spell for Vision of Madness
                   : 
--]]

function cast(Caster, Target, Reg, Mod)
	if HasSpellEffect(Target, 5172) then
		SpellHealPct("Heal", Mod, false, true, Caster, 1)
			else
				SpellHealPct("Heal", Reg, false, true, Caster,1)
					end
end

function tick(Caster, Target, Reg, Mod)
	if HasSpellEffect(Target, 5172) then
		SpellHealPct("Heal", Mod, false, true, Caster, 1)
			else
				SpellHealPct("Heal", Reg, false, true, Caster, 1)
					end
end