--[[
    Script Name    : ItemScripts/TheLegendarySteinofMoggok.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.22 09:04:43
    Script Purpose : removes "The Legendary Stein of Moggok" from player's inventory and summon "Stein of Moggok" instead. 
                   : 
--]]

local SteinOfMoggokID = 54775 -- armor version
local TheLegendarySteinOfMoggokID =  66126 -- house version


function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Remove stein from the mounting)", "removestein")
AddConversationOption(conversation, "Leave the stein alone", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Stein of Moggok. Recovered and remade by my own hand. I'll be sure not to mention this to Rumdum, it could make him a little cranky...")
end

function removestein(Item, Player)
RemoveItem(Player, TheLegendarySteinOfMoggokID) 
SummonItem(Player, SteinOfMoggokID)
end
