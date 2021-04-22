--[[
    Script Name    : Spells/Commoner/FrenzyOrcSpell.lua
    Script Author  : neatz09
    Script Date    : 2021.04.21 04:04:50
    Script Purpose : 
                   : 
--]]


--*Increases Out-of-Combat Health Regeneration of target by 4.0
--*This effect suspends during combat
    function cast(Caster, Target)
        AddProc(Target, 15, 100)
        end
        
    function proc(Caster, Target, Type)
        if Type == 15 then Say(Caster, "Test")
            end
    end
    
    function remove(Caster, Target)
        RemoveProc(Target)
        end