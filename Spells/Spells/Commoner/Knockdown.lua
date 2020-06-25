--[[
    Script Name    : Spells/Commoner/Knockdown.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 01:11:34
    Script Purpose : Apply Knockdown
                   : 
--]]

function cast(Caster, Target)

    --Throws target back
    --Stuns target
    AddControlEffect(Target, 4)

    --Blurs vision of target (to do)
    
    --Except Epic

end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
