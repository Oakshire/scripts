--[[
    Script Name    : ItemScripts/ARuinedBloodsaberChestpiece.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.19 03:05:54
    Script Purpose : 
                   : 
--]]
--
local Quest = 5841

function examined(Item, Player)
if not HasQuest(Player, Quest) and not HasCompletedQuest(Player, Quest) then
    Dialog1(Item,Player)
elseif GetQuestStep(Player,Quest)==1 or GetQuestStep(Player,Quest)==2 or GetQuestStep(Player,Quest)==3 then
    Dialog2(Item,Player)
elseif GetQuestStep(Player,Quest)==4 or GetQuestStep(Player,Quest)==5 or GetQuestStep(Player,Quest)==6 then
    Dialog3(Item,Player)
elseif GetQuestStep(Player,Quest)==7 or GetQuestStep(Player,Quest)==8 then
    Dialog4(Item,Player)
elseif  HasCompletedQuest(Player, Quest)then
    Completed(Item,Player)
end
end

function Dialog1(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Inspect the chestpiece closely]", "Dialog2")
    AddConversationOption(conversation, "[Put the chestpiece away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This leather armor has seen better days. You have to wonder why someone would hold on to this...")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==3 then
    AddConversationOption(conversation, "[Attempt a repair using the gnoll armor sections.]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the ruined chestpiece away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This appears to be a chestpiece that belonged to the once powerful Bloodsaber Clan. There seems to be a large hole in the back of this armor; whatever arcane forces hit this piece of armor must have devastated the poor soul wearing it.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==6 then
    AddConversationOption(conversation, "[Use the Queen Klicnik eye on the armor.]", "Dialog4")
    end
    if GetQuestStep(Player,Quest)==3 then
    SetStepComplete(Player,Quest,3)
    end    
    AddConversationOption(conversation, "[Consider a way to disenchant the armor.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "While attempting to attach the gnoll armor segment you notice that it is almost repelled by the Bloodsaber armor. Magical forces seem to be preventing the repair of this armor.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==8 then
    AddConversationOption(conversation, "[Craft a lining from the kodiak hides.]", "QuestFinish")
    end
    if GetQuestStep(Player,Quest)==6 then
    SetStepComplete(Player,Quest,6)
    end    
    AddConversationOption(conversation, "[Put the jagged chestpiece away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "When held near the gnoll armor segments the Bloodsaber armor starts shaking. The gnoll armor is pulled into and seemingly absorbed by the Bloodsaber armor. While the armor is now functional, the rough edges will make it almost impossible to wear.")
end

function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if GetQuestStep(Player,Quest)==8 then
    SetStepComplete(Player,Quest,8)
    end    
    if HasItem(Player,2543) then
        RemoveItem(Player,2543,1)
    end
end
    
function Completed(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Hold on to the ruined chestpiece.]", "QuestFinish")
    AddConversationOption(conversation, "[Toss this aside. It is ruined, after all.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This ruined chestpiece has the same Bloodsaber clan emblem from one you repaired. Apparently, more than one of them met their fate to a similar wound. Hopefully the one you repaired lasts longer than this one!")
end