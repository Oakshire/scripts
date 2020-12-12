--[[
    Script Name    : Spells/AA/BlockHarm.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:50
    Script Purpose : 
                   : 
--]]

-- Increases caster's chance to block by 1.0%
-- Increases DPS of caster by 1.6

function cast(Caster, Target, Block, DPS)
    AddSpellBonus(Target, 651, Block)
    AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end