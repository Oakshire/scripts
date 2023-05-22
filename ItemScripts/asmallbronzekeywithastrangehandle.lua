--[[
    Script Name    : ItemScripts/asmallbronzekeywithastrangehandle.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.14 11:05:29
 Script Purpose : for Buccaneer's Rest access in Antonica
                   : 
--]]


function examined(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Perhaps I can locate where this key goes.","offer")
    AddConversationOption(conversation, "Stop inspecting the key.")
    StartDialogConversation(conversation, 2, Item, Player, "This key appears rusted and covered in salt with a tag bearing the symbol of a lighthouse.  On the handle end of the key, a faintly visible skull and crossed bladed symbol can be seen etched into the metal, nearly erroded by the elements.")
end


function offer(Item,Player)
    if CanReceiveQuest(Player,5813) then
        OfferQuest(Item,Player,5813)
    end
end