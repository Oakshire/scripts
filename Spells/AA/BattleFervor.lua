--[[
    Script Name    : Spells/AA/BattleFervor.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 12:12:01
    Script Purpose : 
                   : 
--]]

-- Increases DPS of caster by 3.2
-- Increases caster's chance to block by 3.2%

function cast(Caster, Target, DPS, Block)
    AddSpellBonus(Target, 629, DPS)
    AddSpellBonus(Target, 651, Block)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
