--[[
	Script Name	: Spells/Scout/Rogue/Brigand/Holdup.lua
	Script Purpose	: Brigand Debuff + Snare
	Script Author	: Zcoretri
	Script Date	: 14.March.2014
	Script Notes	: 
--]]

function cast(Caster, Target, Slow, Mitigation)
    -- Debuff component
    AddSpellBonus(Target, 201, Mitigation)
end

function tick(Caster, Target, Slow, Mitigation)
    -- Snare component
    originalSpeed = GetSpeed(Target)
    pctChance = math.random(1, 100)
    --[[
    if pctChance => 5 then
        newSpeed = originalSpeed - (originalSpeed * Slow)
        if originalSpeed > newSpeed then
            SetSpeed(Target, newSpeed)
        end
    end
    --]]
end

function remove(Caster, Target, Slow, Mitigation)
    RemoveSpellBonus(Target)
    --SetSpeed(Target, originalSpeed)
end

