--[[
    Script Name    : ItemScripts/finalnotice.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 06:07:12
    Script Purpose : 
                   : 
--]]

local CrazyIsAsCrazyDoes = 567
local ItemID = 7239

function examined(Item, Player)
if not HasQuest(Player, CrazyIsAsCrazyDoes) and not HasCompletedQuest(Player, CrazyIsAsCrazyDoes) then
OfferQuest(nil, Player, CrazyIsAsCrazyDoes)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Put note away")
StartDialogConversation(conversation, 2, Item, Player, "I gave a sprocket and he took a cog!  What was I thinking?  That Crazy Peepers, he's not one of us, just for that I want his non-tinkering over sized non-spec head dead!")
end


function obtained(Player, CrazyIsAsCrazyDoes)
if HasQuest(Player, CrazyIsAsCrazyDoes) or HasCompletedQuest(Player, CrazyIsAsCrazyDoes) then
RemoveItem(Player, ItemID)
end
   end

