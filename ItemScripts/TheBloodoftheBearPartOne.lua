--[[
    Script Name    : ItemScripts/TheBloodoftheBearPartOne.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 08:07:41
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One", "page2")
AddConversationOption(conversation, "Put book away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This book relates a legend of the Northmen and how they defeated the invading Hordes of Inferno during the Age of War.")
end

function page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Put book away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "In the time of Growth, when the birds return to the trees and the sun rises higher in the sky, the children of the Northlands look to the awakening of the bears as the final signal that Growth is upon them.  Hungry from their long sleep, the bears come closer to the villages and towns.  Therefore, each village has a family whose duty is to ensure the bears do not come into the village and threaten them.")
end