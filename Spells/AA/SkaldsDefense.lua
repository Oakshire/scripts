--[[
    Script Name    : Spells/AA/SkaldsDefense.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:08
    Script Purpose : 
                   : 
--]]

-- Increases caster's chance to block by 1.0%
-- Increases DPS of caster by 1.0

function cast(Caster, Target, Block, DPS)
    AddSpellBonus(Target, 651, Block)
    AddSpellBonus(Target, 629, DPS)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
