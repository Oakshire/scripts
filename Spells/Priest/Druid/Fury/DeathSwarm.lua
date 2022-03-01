--[[
    Script Name    : Spells/Priest/Druid/Fury/DeathSwarm.lua
    Script Author  : John Adams
    Script Date    : 2013.11.19 07:11:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt, DmgType, MinDmgVal, MaxDmgVal)

    -- Debuff component
    AddSkillBonus(Target, 609880714, SkillAmt)  -- Defense

    -- Damage component
    if MaxDmgVal ~= nil and MinDmgVal < MaxDmgVal then
        dmgAmount = math.random(MinDmgVal, MaxDmgVal)
        SpellDamage(Target, DDType, dmgAmount)
    else
        SpellDamage(Target, DDType, MinDmgVal)
    end

end

function tick(Caster, Target, DefenseAmt, DmgType, MinDmgVal, MaxDmgVal)

    -- DoT component
    if MaxDmgVal ~= nil and MinDmgVal < MaxDmgVal then
        dmgAmount = math.random(MinDmgVal, MaxDmgVal)
        SpellDamage(Target, DDType, dmgAmount)
    else
        SpellDamage(Target, DDType, MinDmgVal)
    end

end

function remove(Caster, Target, DefenseAmt, DmgType, MinDmgVal, MaxDmgVal)
    -- Remove debuff when spell expires
    RemoveSkillBonus(Target)
end