--[[
    Script Name    : Spells/Priest/Shaman/Mystic/SpiritoftheMammoth.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 08:12:47
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Increases STA and STR of group members (AE) by 13.1
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 1, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
