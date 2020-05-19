--[[
	Script Name	: Spells\Traditions\Noncombat\BindWound.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.01.28
	Script Notes	: Heals for 2% of max health while out of combat
--]]

function cast(Caster, Target, Modifier)
    CurrHealth = GetHP(Caster)
    MaxHealth = GetMaxHP(Caster)
    if IsInCombat(Caster) then
        -- Do Nothing
    elseif CurrHealth < MaxHealth then
        healAmount = MaxHealth * Modifier
        ModifyHP(Caster, healAmount)
    end
end