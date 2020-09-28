--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/SpuriousBravado.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:56
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell may cast Bravado on caster.  Lasts for 20.0 seconds.  Triggers about 5.0 times per minute. 
--     Increases Hate Gain of caster by 5.0%
--     Increases Haste of caster by 28.5
--     Dispelled when target takes damage

function cast(Caster, Target, Hate, Haste)
AddProc(Target, 15, 100)
end

function proc(Caster, Target, Type, Hate, Haste)
	if Type == 15 then
		Spell = GetSpell(5434, GetSpellTier())
		SetSpellDataIndex(Spell, 0, Hate)
		SetSpellDataIndex(Spell, 1, Haste)
			CastCustomSpell(Spell, Caster, Target)
				end
end

function remove(Caster, Target)
	RemoveProc(Target)
end
