--[[
    Script Name    : Spells/Priest/Druid/Warden/Instinct.lua
    Script Author  : neatz09
    Script Date    : 2020.03.01 10:03:52
    Script Purpose : 
                   : 
--]]

-- On a combat hit this spell may cast Primal Instincts on target of attack.  Lasts for 6.0 seconds.  Triggers about 2.4 times per minute. 
--     Inflicts 90 - 109 piercing damage on target
--     Inflicts 45 - 55 piercing damage on target every 3 seconds
--     If target is a player or a mercenary
-- On a hostile ability cast this spell may cast Primal Instincts on target of spell.  Lasts for 6.0 seconds.  Triggers about 7.0 times per minute. 
--     Inflicts 90 - 109 piercing damage on target
--     Inflicts 45 - 55 piercing damage on target every 3 seconds
--     This effect can only trigger once every 8.0 seconds.
--     If target is a player or a mercenary
-- Increases Crushing, Piercing, Slashing and Ranged of target by 14.0
-- Pets cannot trigger Primal Instincts.

function cast(Caster, Target, DmgType, MinVal, MaxVal, Skills)
	AddProc(Target, 3, 100) --combat
	--AddProc(Target, 5, 28) hostile commented out due to spell change
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), Skills)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax, Skills)
Spell = GetSpell(5435, GetSpellTier())   
-- if IsPlayer(Caster) and Type == 3 or Type == 5 then this spell was changed at some point
if IsPlayer(Caster) and Type == 3 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinVal)
		SetSpellDataIndex(Spell, 2, MaxVal)
		SetSpellDataIndex(Spell, 3, TickType)
		SetSpellDataIndex(Spell, 4, TickMin)
		SetSpellDataIndex(Spell, 5, TickMax)
			CastCustomSpell(Spell, Caster, Target)

				end
end

function remove(Caster, Target)
	RemoveProc(Target)
	RemoveSkillBonus(Target)
end