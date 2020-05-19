--[[
    Script Name    : Spells/Scout/Bard/Troubador/SandrasDeafeningStrike.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, MinDebuff, MaxDebuff, MinBuff, MaxBuff)
    -- Inflicts mental damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

    -- Decreases power of target
    if MaxDebuff ~= nil and MinDebuff < MaxDebuff then
        DebuffAmt = math.random(MinDebuff, MaxDebuff)
    else
        DebuffAmt = MinDebuff
    end

    AddSpellBonus(Caster, 501, DebuffAmt)

    -- Increases power of caster
    if MaxBuff ~= nil and MinBuff < MaxBuff then
        BuffAmt = math.random(MinBuff, MaxBuff)
    else
        BuffAmt = MinBuff
    end

    AddSpellBonus(Caster, 501, BuffAmt)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, MinDebuff, MaxDebuff, MinBuff, MaxBuff)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)
end
