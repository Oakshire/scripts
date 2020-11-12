--[[
    Script Name    : Spells/Commoner/Knockdown.lua
    Script Author  : neatz09
    Script Date    : 2020.11.12 12:11:15
    Script Purpose : 
                   : 
--]]

-- Apply Knockdown
--     Throws target back
--     Stuns target
--     Blurs vision of target
--     Except Epic
function cast(Caster, Target, Timer)
if not IsEpic(Target) then
        Knockback(Caster, Target, Timer)
		AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(Timer, "RemoveStunBlur")
    end
end

function RemoveStunBlur(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0)
end