--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BerserkRage.lua
    Script Author  : neatz09
    Script Date    : 2020.02.28 08:02:52
    Script Purpose : 
                   : 
--]]

-- On any combat or spell hit this spell may cast Berserk on target.  Lasts for 10.0 seconds.  Triggers about 2.0 times per minute. 
--     Increases Haste of target by 8.6
--     Increases DPS of target by 8.6
-- When damaged this spell has a 30% chance to cast Berserk on target.  Lasts for 10.0 seconds.  
--     Increases Haste of target by 8.6
--     Increases DPS of target by 8.6
-- On a kill this spell will cast Berserk on target.  Lasts for 10.0 seconds.  
--     Increases Haste of target by 8.6
--     Increases DPS of target by 8.6


function cast(Caster, Target, Haste)
	AddProc(Target, 1, 12.5) --Combat
	AddProc(Target, 15, 30) --Damaged
	AddProc(Target, 14, 100) --Kill
end


function proc(Caster, Target, Type, Haste)
Spell = GetSpell(5172, GetSpellTier())
	if Type == 1 or Type == 15 or Type == 14 then
		SetSpellDataIndex(Spell, 0, Haste)
			CastCustomSpell(Spell, Caster, Target)
				end
	end


function remove(Caster, Target)
RemoveProc(Target)
end