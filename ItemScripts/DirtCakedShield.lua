--[[
    Script Name    : ItemScripts/DirtCakedShield.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 12:05:54
    Script Purpose : 
                   : 
--]]
local Quest = 5831

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
    AddConversationOption(conversation, "[Examine the shield more closely.]", "Dialog2")
    AddConversationOption(conversation, "[Put the dirt-encrusted shield away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This dirt-encrusted shield has seen better days. Whoever originally owned it didn't care of it. Even now it's caked with so much dirt that it's hard to make out what was originally embossed on the face.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==2 then
    AddConversationOption(conversation, "[Wipe the caked dirt off the shield face.]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the shield away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The dirt is hard-packed into the grooves of the shield. It may be possible to remove all the dried soil and see what the shield originally looked like. You may want to dip it in Crater Lake to loosen up the outer layer.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==4 then
    AddConversationOption(conversation, "[Scrub the dirt with the badger fur]", "Dialog4")
    end
    if GetQuestStep(Player,Quest)==2 then
    SetStepComplete(Player,Quest,2)
    end    
    AddConversationOption(conversation, "[Put the shield away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The water from Crater Lake was able to loosen up most of the dirt, making it a bit muddy. Scraping away the outer layer of mud reveals even more dirt inside all of the etchings. You're going to need to scrub it out with something. The fur from the badgers in Antonica might do the job.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==6 then
    AddConversationOption(conversation, "[Scrub the tarnish away with the centipede poison.]", "Dialog5")
    end
    if GetQuestStep(Player,Quest)==4 then
    SetStepComplete(Player,Quest,4)
    end    
    AddConversationOption(conversation, "[Put the shield away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The hard fur from the badgers seems to do the trick. You are able to brush out all of the grime from the crevices. In the end, you see that it's an old shield with an image of the Qeynos gates on it. Unfortunately, it's rather tarnished. Maybe the poison from centipedes might be able to get rid of the tarnish.")
end

function Dialog5(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Admire your reflection in the smooth shield face]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "Making sure not to get any on your hands, you scrub at the metal with the centipede poison.  After a while, you start to see the original luster shine on the face of the shield again.  Even though it's a very old shield, you're certain it'll work just as good as it did when it was originally forged.")
end
--
function QuestFinish(Item,Player)
    CloseItemConversation(Item,Player)
    if GetQuestStep(Player,Quest)==6 then
    SetStepComplete(Player,Quest,6)
    end    
    if HasItem(Player,6448) then
        RemoveItem(Player,6448,1)
    end
end
    
function Completed(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Keep the shield, for whatever reason.]")
    AddConversationOption(conversation, "[Toss the shield into the mud]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This dirt-caked shield resembles one you cleaned up before! You have no need to keep this one around.")
end