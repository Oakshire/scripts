--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Juggernaut.lua
    Script Author  : neatz09
    Script Date    : 2020.09.03 11:09:55
    Script Purpose : 
                   : 
--]]

-- If any of the following are true:
--     This ability can only be used while berserk!
-- This ability can only be used while berserk!

function cast(Caster, Target, Crit, DefParry, Mit, CombatArts)
    Say(Caster, "Only can be used if in beserk not implemented.")
    -- Increases Crit Bonus of caster by 15.3%
	AddSpellBonus(Target, 657, Crit)
    -- Decreases Defense and Parry of caster by 2.2
	AddSkillBonus(Target, GetSkillIDByName("Defense"), DefParry)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefParry)
	-- Decreases Mitigation of caster vs all damage by 3467
	AddSpellBonus(Target, 200, Mit)
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)
	-- All combat arts have their damage increased by 17%
	AddSpellBonus(Target, 703, CombatArts)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end