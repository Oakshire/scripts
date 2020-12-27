--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/DevoutSacrament.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 11:10:51
    Script Purpose : 
                   : 
--]]

-- Heals caster for 31.6 - 38.6% of max health
--     This effect cannot be critically applied.
-- Increases Max Health of caster by 690.3
-- The healing of this spell cannot be modified except by direct means
function cast(Caster, Target)
AddSpellBonus(Target, 606, BonusAmt)
SpellHeal(Heal, GetPCTOfHP(Target, pctHealMin), GetPCTOfHP(Target, pctHealMax), nil, 2, 1)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
