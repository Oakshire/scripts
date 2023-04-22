--[[
    Script Name    : ItemScripts/DwarvenWorkBoots.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 07:04:14
    Script Purpose : 
                   : 
--]]

local DwarvenWorkBootsID = 146379
local TheLegendaryDwarvenWorkBootsID = 66088

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Place the mounting on the item. (This will remove any adornments and reforging)", "mount")
AddConversationOption(conversation, "Leave the item as is", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Dwarven Work Boots can be mounted and placed on the surface.")
end

function mount(Item, Player)
RemoveItem(Player, DwarvenWorkBootsID) 
SummonItem(Player, TheLegendaryDwarvenWorkBootsID)
end