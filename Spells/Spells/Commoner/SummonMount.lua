--[[
    Script Name    : Spells/Commoner/SummonMount.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.16 03:01:40
    Script Purpose : mounting test
                   : 
--]]

--local mount_favorites = { '25423', '24053', '25864', '23713', '15397', '20950', '20344', '17509' }
function cast(Caster, Target)

    SendMessage(Caster, "Mounting...", "red")
    SetMount(Caster, 10441)
    --SetMount(Caster, mount_favorites[ math.random( 1, #mount_favorites - 1 ) ] )
PlaySound(Caster, "sounds/test/level_up.wav", GetX(Caster), GetY(Caster), GetZ(Caster))
    SetSpeed(Caster, 100)
end

function remove(Caster, Target)
    SetMount(Caster, 0)
    SetSpeed(Caster, 1)
end

