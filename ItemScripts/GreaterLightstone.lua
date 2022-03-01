--[[
    Script Name    : ItemScripts/GreaterLightstone.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.24 06:08:42
    Script Purpose :  removes "Greater Lightstone" from player's inventory and summon "The Legendary Greater Lightstone" instead.   
                   : 
--]]

local GreaterLightstoneID = 156891
local TheLegendaryGreaterLightstoneID = 66100

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Place the mounting on the item. (This will remove any adornments and reforging)", "mount")
AddConversationOption(conversation, "Leave the item as is", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Greater Lightstone can be mounted and set in your home.")
end

function mount(Item, Player)
RemoveItem(Player, GreaterLightstoneID) 
SummonItem(Player, TheLegendaryGreaterLightstoneID)
end
