--[[
    Script Name    : Spells/AA/DreamBarrier.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 12:12:34
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 157

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 201, BonusAmt)
    AddSpellBonus(Target, 202, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end