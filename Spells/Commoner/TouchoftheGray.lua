--[[
    Script Name    : Spells/Commoner/TouchoftheGray.lua
    Script Author  : John Adams
    Script Date    : 2013.11.19 09:11:23
    Script Purpose : 
                   : 
--]]
--local mount_favorites = { '25423', '24053', '25864', '23713', '15397', '20950', '20344', '17509' }
function cast(Caster, Target)

    SendMessage(Caster, "Mounting...", "red")
    --SetMount(Caster, mount_favorites[ math.random( 1, #mount_favorites - 1 ) ] )
    setMount(Caster, 25864)

end

function remove(Caster, Target)
    SetMount(Caster, 0)
end

