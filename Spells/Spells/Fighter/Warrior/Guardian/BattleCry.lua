--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/BattleCry.lua
    Script Author  : John Adams
    Script Date    : 2013.12.08 03:12:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)

    -- Increases Mitigation of group members (AE) vs physical damage by 100
    AddSpellBonus(Target, 200, BonusAmt)

end

function remove(Caster, Target)

    RemoveSpellBonus(Target)

end

