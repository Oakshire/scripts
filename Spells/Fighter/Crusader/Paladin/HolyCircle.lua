--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/HolyCircle.lua
    Script Author  : Jabantiz(revamp Neatz09)
    Script Date    : 2013.12.05 09:12:58
    Script Purpose : Revamped for pct heal 12/27/2020 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, HealMin, HealMax)
    local Val1 = HealMin
	local Val2 = HealMax 
	local HealAmt = randomFloat(Val1, Val2)
	-- Inflicts 25 - 43 divine damage on targets in Area of Effect
SpellDamage(Target, DmgType, MinVal, MaxVal)
    -- Heals group members (AE) for 13
    --     This effect cannot be critically applied.
    -- The healing of this spell cannot be modified except by direct means
    local group = GetGroup(Caster)
    if group == nil then
        SpellHealPct("Heal", HealAmt, false, true, Caster, 1, true)
    else
        for key,value in pairs(group) do
            if value ~= nil then
                if GetDistance(Caster, value) <= 5 then
                    SpellHealPct("Heal", HealAmt, false, true, Caster, 1, true)
                end
            end
        end
    end
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end