--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WarCry.lua
    Script Author  : neatz09
    Script Date    : 2020.02.29 01:02:41
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- When damaged this spell has a 5% chance to cast Berserk on target.  Lasts for 10.0 seconds.  
--     Increases Haste of target by 10.2
--     Increases DPS of target by 10.2
-- On any combat or spell hit this spell may cast Berserk on target.  Lasts for 10.0 seconds.  Triggers about 3.0 times per minute. 
--     Increases Haste of target by 10.2
--     Increases DPS of target by 10.2
-- On a kill this spell has a 50% chance to cast Berserk on target.  Lasts for 10.0 seconds.  
--     Increases Haste of target by 10.2
--     Increases DPS of target by 10.2
function cast(Caster, Target, Haste)
	AddProc(Target, 1, 20, nil, 1) --Combat
	AddProc(Target, 15, 5, nil, 1) --Damaged
	AddProc(Target, 14, 50, nil, 1) --Kill
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