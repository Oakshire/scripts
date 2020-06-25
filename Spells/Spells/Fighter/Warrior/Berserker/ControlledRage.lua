--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/ControlledRage.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 05:10:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, OffDebuff, DefAmt)
-- Increases caster's chance to block by 10.0%
    AddSpellBonus(Target, 651, 10)

-- Decreases Haste of caster by 14.0
    AddSpellBonus(Target, 617, OffDebuff)

-- Decreases Multi Attack of caster by 14.0
    AddSpellBonus(Target, 641, OffDebuff)

-- Increases Parry of caster by 10.8
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefAmt)

-- Increases Defense of caster by 10.8
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end
