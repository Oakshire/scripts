--[[
    Script Name    : ItemScripts/TheLegendaryGreaterLightstone.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.24 06:08:12
    Script Purpose : 
                   : 
--]]

local GreaterLightstoneID = 156891
local TheLegendaryGreaterLightstoneID = 66100

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Remove stone from the mounting)", "removestone")
AddConversationOption(conversation, "Leave the stone alone", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Greater Lightstone. By following the directions of Cannix Silverflame, I was able to increase the power of the lightstone gradually. Cannix says this object has some importance among his people, too bad he isn't around anymore so I can ask him about it...")
end

function removestone(Item, Player)
RemoveItem(Player, TheLegendaryGreaterLightstoneID) 
SummonItem(Player, GreaterLightstoneID)
end

