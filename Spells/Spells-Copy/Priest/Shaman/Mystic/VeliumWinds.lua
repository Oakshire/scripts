--[[
    Script Name    : Spells/Priest/Shaman/Mystic/VeliumWinds.lua
    Script Author  : John Adams
    Script Date    : 2013.11.19 09:11:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinDmgVal, MaxDmgVal, SpellID)
    Say(Caster, "Missing slow components")
-- Missing Slows Target Component
    -- Damage component
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        dmgAmount = math.random(MinDmg, MaxDmg)
        SpellDamage(Target, DmgType, dmgAmount)
    end

    -- Applies Touch of the Grey.  Lasts for 10.0 seconds.
    CastSpell(Target, 3000, 1, Caster)

end
