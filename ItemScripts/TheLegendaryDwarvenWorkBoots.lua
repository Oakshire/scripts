--[[
    Script Name    : ItemScripts/TheLegendaryDwarvenWorkBoots.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 07:04:52
    Script Purpose : 
                   : 
--]]



function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Remove stone from the mounting)", "removemount")
AddConversationOption(conversation, "Leave the stone alone", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Dwarven Work Boots. Given to me by Hwal Ruksif after performing many work tasts for him... including having a new pair of boots made for him!")
end

function removemount(Item, Player)
if HasItem(Player,  66088) then
RemoveItem(Player,  66088) 
SummonItem(Player , 146379)
elseif HasItem(Player, 66089) then
    RemoveItem(Player, 66089) 
    SummonItem(Player,  146378)
elseif HasItem(Player, 66091) then
    RemoveItem(Player, 66091) 
    SummonItem(Player,  146381)
elseif HasItem(Player, 66090) then
    RemoveItem(Player, 66090) 
    SummonItem(Player,    146380)
   end
end