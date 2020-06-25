--[[
	Script Name	: Spells/Fighter/MastersRage.lua
	Script Author	: John Adams
	Script Date	: 2013.08.10 02:08:09
	Script Notes	: Melee damage + debuff
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg, Debuff)

    -- Damage component, if a Lore and Legend Race ONLY
    if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
        dmgAmount = math.random(MinDDVal, MaxDDVal)
        SpellDamage(Target, DDType, dmgAmount)
    else
        SpellDamage(Target, DDType, MinDDVal)
    end

    -- Debuff component
    AddSkillBonus(Target, 3850377186, Debuff) -- deflection
    AddSkillBonus(Target, 540022425, Debuff)  -- parry
    AddSkillBonus(Target, 609880714, Debuff)  -- defense
end

