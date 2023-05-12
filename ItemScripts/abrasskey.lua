--[[
    Script Name    : ItemScripts/abrasskey.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.11 11:05:57
    Script Purpose : for Buccaneer's Hideout access in Antonica
                   : 
--]]
--
--
function examined(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Try to scrape away some of the tarnish.","Key1")
    AddConversationOption(conversation, "Stop inspecting the key.")
    StartDialogConversation(conversation, 2, Item, Player, "A large well-tarnished brass key that looks as though it might unlock a door or reliquary.")
end

function Key1(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Consider finding the use for this key.","offer")
    AddConversationOption(conversation, "Stop inspecting the key.")
    StartDialogConversation(conversation, 2, Item, Player, "This key appears rusted and covered in salt with a tag bearing the symbol of a lighthouse.  On the handle end of the key, a faintly visible skull and crossed bladed symbol can be seen etched into the metal, nearly erroded by the elements.")
end

function offer(Item,Player)
    if CanReceiveQuest(Player,5813) then
        OfferQuest(Item,Player,5813)
    end
end