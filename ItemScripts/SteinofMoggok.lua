--[[
    Script Name    : ItemScripts/SteinofMoggok.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.22 09:04:16
    Script Purpose : removes "Stein of Moggok " from player's inventory and summon "The Legendary Stein of Moggok " instead.   
                   : 
--]]


local SteinOfMoggokID = 54775 -- armor version
local TheLegendarySteinOfMoggokID =  66126 -- house version

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Place the mounting on the item. (This will remove any adornments and reforging)", "mount")
AddConversationOption(conversation, "Leave the item as is", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Legendary Stein of Moggok  can be mounted and set in your home.")
end

function mount(Item, Player)
RemoveItem(Player, SteinOfMoggokID) 
SummonItem(Player, TheLegendarySteinOfMoggokID)
end

