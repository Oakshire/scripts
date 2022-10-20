--[[
    Script Name    : ItemScripts/asandyboneshardClassic.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.16 09:09:30
    Script Purpose : Classic Version of a Sandy Bone Shard quest.
                   : 
--]]
local BoneShard = 5746

function examined(Item, Player)
if not HasQuest(Player, BoneShard) and not HasCompletedQuest(Player, BoneShard) then
    Dialog1(Item,Player)
elseif GetQuestStep(Player,BoneShard)==1 or GetQuestStep(Player,BoneShard)==2 then
    Dialog2(Item,Player)
elseif GetQuestStep(Player,BoneShard)==3 or GetQuestStep(Player,BoneShard)==4 then
    Dialog3(Item,Player)
elseif GetQuestStep(Player,BoneShard)==5 or GetQuestStep(Player,BoneShard)==6 then
    Dialog4(Item,Player)
elseif  HasCompletedQuest(Player, BoneShard)then
    Completed(Item,Player)
end
end

function Dialog1(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I should try to see if other crabs have more missing pieces to the token.", "Dialog2")
    AddConversationOption(conversation, "[Put the Piece Away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "It appears as if there once were other pieces to the token and this is only one part. If you could find the rest and a chain or strap you might be able to fashion a necklace from the repaired trinket and gain a momento of the island. The other pieces may be near where you found this one.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if not HasQuest(Player, BoneShard) and not HasCompletedQuest(Player, BoneShard) then
    OfferQuest(nil,Player,BoneShard)
    end
    if GetQuestStep(Player,BoneShard)==2 then
    AddConversationOption(conversation, "[Assemble the Pieces]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the Piece Away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This old and yellowed piece of bone seems to be more than it first appears. Intricate etchings appear on the surface as you brush away the sand.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,BoneShard)==4 then
    AddConversationOption(conversation, "[Glue the Pieces Together]", "Dialog4")
    end
    if GetQuestStep(Player,BoneShard)==2 then
    SetStepComplete(Player,BoneShard,2)
    end    
    AddConversationOption(conversation, "[Put the Piece Away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "As you assemble the pieces of the takon the intricate carving of a ship becomes clear. The pieces can be repaired but some sort of glue will be needed to hold them together again. Fish skin may be a good start to create the glue.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,BoneShard)==6 then
    AddConversationOption(conversation, "[Add the Leather Cord]", "QuestFinish")
    end
    if GetQuestStep(Player,BoneShard)==4 then
    SetStepComplete(Player,BoneShard,4)
    end    
    AddConversationOption(conversation, "[Put the Token Away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The glue holds well and the lines made by the cracks are barely visible. The small hoop that had been carved long ago at the top only needs a cord of leather and the necklace will be complete.")
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if GetQuestStep(Player,BoneShard)==6 then
    SetStepComplete(Player,BoneShard,6)
    end    
    if HasItem(Player,1001012) then
        RemoveItem(Player,1001012,1)
    end
end
    
function Completed(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Throw the token]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This piece of bone looks like the talisman you've already remade.  It may be best to throw it back into the sea for another crab to find.")
end