--[[
    Script Name    : Spells/Fighter/Brawler/Monk/CalmTranquility.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 01:01:47
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, CastingSpeed, AttackSpeed)
    -- Increases Ability Casting Speed of raid and group members (AE) by 2.4%
    AddSpellBonus(Target, 664, CastingSpeed)

    -- Increases Attack Speed of raid and group members (AE) by 6.0
    AddSpellBonus(Target, 617, AttackSpeed)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
