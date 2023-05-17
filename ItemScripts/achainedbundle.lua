--[[
    Script Name    : ItemScripts/achainedbundle.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 06:05:51
    Script Purpose : 
                   : 
--]]
local Quest = 5837

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
    AddConversationOption(conversation, "[Examine the bundle more closely.]", "Dialog2")
    AddConversationOption(conversation, "[Put the chained bundle away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I've found a very odd bundle of chains and leather straps.  I'm certain there's something in the center of this bundle, but I can't make out what it is.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==2 then
    AddConversationOption(conversation, "[Inspect what caused the noise from the bundle.]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the chained bundle away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This chained bundle is exceptionally heavy and you're not sure what it really is. There seem to be hundreds of chained links that are wrapped around something. To make matters worse there are a bunch of straps that are bound so tight they can't be undone. Finally there is a huge lock binding all of it together.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==4 then
    AddConversationOption(conversation, "[Use the crab claws to cut the leather straps]", "Dialog4")
    end
    if GetQuestStep(Player,Quest)==2 then
    SetStepComplete(Player,Quest,2)
    end    
    AddConversationOption(conversation, "[Put the chained bundle away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You look at bundle and can see that the lock has snapped open.  Something about getting close to the crypt seems to have destroyed the lock.  Unfortunately, the straps still old tight.  If you're going to find out what's hidden inside this bundle, you're going to have to find a way to cut through these straps.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==6 then
    AddConversationOption(conversation, "[Use the arcane saw to cut the chains]", "Dialog5")
    end
    if GetQuestStep(Player,Quest)==4 then
    SetStepComplete(Player,Quest,4)
    end    
    AddConversationOption(conversation, "[Put the chained bundle away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You take the sharp ends of the crab claws and start cutting though the leather straps.  You wind up going through each of the claws you collected.  Unfortunately, the chain links are wrapped so tight that the now loosened straps have done you no good.  You're going to need to find a way to cut through all of the chains.  Perhaps the witches of the hills might have something to help you.")
end

function Dialog5(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Liberated at last!", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "You used the arcane saw on the bundle of chain links and are surprised at how easy it cuts through the metal.  As you approach the center, nearly all of the chains have been fully cut away.  Once you have cut through all of the chains, the saw disappears from your hands.  Finally, you see what all the effort has brought you - hidden beneath all those oppressing chains is the fabled maul, Freedom.")
 end
--
function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if GetQuestStep(Player,Quest)==6 then
    SetStepComplete(Player,Quest,6)
   end    
    if HasItem(Player,1343) then
        RemoveItem(Player,1343,1)
    end
end
    
function Completed(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Hold on to the chained bundle.]")
    AddConversationOption(conversation, "[Get rid of the budnle. You have no further use of it.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "The bound bundle feels familiar in your hands, but lighter. Whatever was inside it is gone.")
end