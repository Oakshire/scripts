--[[
    Script Name    : ItemScripts/CrestridersTonic.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 09:07:26
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Increases Out-of-Combat Power Regeneration of target by 6.0

End Item Effects--]]

function examined(Item, Player)

end

function cast(Item, Player)
PlayAnimation(Player, 11422) -- No joking its drink animation
end