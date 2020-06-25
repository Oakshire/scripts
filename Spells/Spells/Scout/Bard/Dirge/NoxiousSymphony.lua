--[[
    Script Name    : Spells/Scout/Bard/Dirge/NoxiousSymphony.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 05:12:41
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of raid and group members (AE) vs noxious damage by 252

function cast(Caster, Target, NoxAmt)
    AddSpellBonus(Target, 202, NoxAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end