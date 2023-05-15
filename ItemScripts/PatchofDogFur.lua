--[[
    Script Name    : ItemScripts/PatchofDogFur.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.14 04:05:08
    Script Purpose : 
                   : 
--]]
--
local Quest = 5815

function examined(Item, Player)
if not HasQuest(Player, Quest) and not HasCompletedQuest(Player, Quest) then
    Dialog1(Item,Player)
elseif GetQuestStep(Player,Quest)==1 or GetQuestStep(Player,Quest)==2 then
    Dialog2(Item,Player)
elseif GetQuestStep(Player,Quest)==3 or GetQuestStep(Player,Quest)==4 then
    Dialog3(Item,Player)
elseif GetQuestStep(Player,Quest)==5 or GetQuestStep(Player,Quest)==6 then
    Dialog4(Item,Player)
elseif  HasCompletedQuest(Player, Quest)then
    Completed(Item,Player)
end
end

function Dialog1(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Closely study the patch of fur...]", "Dialog2")
    AddConversationOption(conversation, "[Put the fur away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This is nothing more than a simple patch of fur. Judging by the texture it is probably from a dog. Aside from that there's nothing special about it.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==2 then
    AddConversationOption(conversation, "[Compare the patches of fur]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the fur away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The small patch of dog fur has given me an idea. If I can gather enough of the pieces together, I might actually be able to make a nice set of gloves that wrap around my fingers perfectly.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==4 then
    AddConversationOption(conversation, "[Stuff the gloves with down]", "Dialog4")
    end
    if GetQuestStep(Player,Quest)==2 then
    SetStepComplete(Player,Quest,2)
    end    
    AddConversationOption(conversation, "[Put the cut fur patch away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You throw away the small patch of fur. The large patch will be enough to make a nice set of gloves from. Cutting and shaping the fur, you're now going to have to stuff the gloves with a filling to keep them warm. Maybe you can find something soft in Antonica.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==6 then
    AddConversationOption(conversation, "[Attempt to sew the lining]", "QuestFinish")
    end
    if GetQuestStep(Player,Quest)==4 then
    SetStepComplete(Player,Quest,4)
    end    
    AddConversationOption(conversation, "[Put the stuffed glove pattern away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You shove as much down as you can in between the lining of the gloves. You managed to grab just enough to do the job. All you need now is a strong way to close up the lining. Perhaps the zombies around the area have some extra tendons they don't need.")
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if GetQuestStep(Player,Quest)==6 then
    SetStepComplete(Player,Quest,6)
    end    
    if HasItem(Player,10331) then
        RemoveItem(Player,10331,1)
    end
end
    
function Completed(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Pack the fur back in your bags.]", "QuestFinish")
    AddConversationOption(conversation, "[Get rid of the fur.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This patch of dog fur reminds you of some Fur Lined Gloves you've made in the past. They sure were comfortable!")
end