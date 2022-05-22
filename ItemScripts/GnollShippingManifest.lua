--[[
    Script Name    : ItemScripts/GnollShippingManifest.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.21 09:05:39
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Put the manifest away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This is a gnollish shipping manifest.")
end

