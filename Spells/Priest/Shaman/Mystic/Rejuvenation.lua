--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Rejuvenation.lua
    Script Author  : John Adams
    Script Date    : 2013.11.19 08:11:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BuffAmt, MinHealAmt, MaxHealAmt)

    -- Buff component (health)
    AddSpellBonus(Target, 606, BuffAmt) 

    -- Heal component
    if MaxHeal ~= nil and MinHeal < MaxHeal then
      healAmount = math.random(MinHeal, MaxHeal)
      ModifyHP(Target, healAmount)
    else
      ModifyHP(Target, MinHealAmt)
    end

end

function remove(Caster, Target, BuffAmt, MinHealAmt, MaxHealAmt)
    
    -- Remove buff (health)
    RemoveSpellBonus(Target) 

end
