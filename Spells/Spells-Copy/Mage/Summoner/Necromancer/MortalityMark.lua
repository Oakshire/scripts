--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/MortalityMark.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 06:10:23
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases all damage done to target by 0.9%
-- Decreases WIS of target by 47.3
-- Increases WIS and STA of caster by 47.3
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 362
-- Only affects targets level 17 and above

function cast(Caster, Target, Dmg, Debuff, Buff, Mit)
        Say(Caster, "Only affects targets level 17 and above not implemented yet")

AddSpellBonus(Caster, 704, Dmg)
    Say(Caster, "Unsure about 'Increases all damage done to target by 0.9% stat ID'")
    AddSpellBonus(Target, 3, Debuff)
    AddSpellBonus(Caster, 1, Buff)
AddSpellBonus(Caster, 3, Buff)
    AddSpellBonus(Caster, 201, Mit)
    AddSpellBonus(Caster, 202, Mit)
    AddSpellBonus(Caster, 203, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)

end
