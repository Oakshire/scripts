--[[
    Script Name    : ItemScripts/MeteorChunk.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 08:05:43
    Script Purpose : 
                   : 
--]]
local Quest = 5832

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
    AddConversationOption(conversation, "[Examine the rock more closely.]", "Dialog2")
    AddConversationOption(conversation, "[Put the rock away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This chunk of rock looks much different than most of the rocks you've seen in the surrounding area. The stone itself reminds you of meteor fragments you've seen before.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==2 then
    AddConversationOption(conversation, "[Use the ink to dye the burned spots.]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the rock away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "The more you inspect it the more you're convinced it is a meteor. It's rather mottled due to it burning up on impact. Perhaps if you could find some way to dye the burned spots, such as a dark ink, you just might be able to turn this meteorite into a nice piece of jewelry.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==4 then
    AddConversationOption(conversation, "[Compare the harvested stone to this rock]", "Dialog4")
    end
    if GetQuestStep(Player,Quest)==2 then
    SetStepComplete(Player,Quest,2)
    end    
    AddConversationOption(conversation, "[Put the rock away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Taking the octopus ink and rubbing it into the stone doesn't do too much. Fortunately you acquired a large amount. After much work you're able to even out the discoloration. Now you're going to need to fashion a hoop to attach the chunk to. You should gather some rock from the surrounding lands of Antonica.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==6 then
    AddConversationOption(conversation, "[Carefully use the rock hammer to craft the jewelery]", "Dialog5")
    end
    if GetQuestStep(Player,Quest)==4 then
    SetStepComplete(Player,Quest,4)
    end    
    AddConversationOption(conversation, "[Put the rock away.]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You compare the rock to the meteor chunk and see that this will do just fine. You have enough to turn it into an impressive earring. You'll need a rock hammer to shape it to the form you want, however.")
end

function Dialog5(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Glorious!", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "After several hours of work, you're able to chip, carve, and shape the rocks in a perfect hoop. Using the meteor as the center ball, you've managed to make a pristine Meteoric Hoop.")
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
    AddConversationOption(conversation, "[Keep the rock. It is from beyond this realm, after all!]")
    AddConversationOption(conversation, "[Toss the rock aside. You've got better things to carry.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "This rock shimmers like the meteor chunk you used to make a piece of jewelery! You don't really have another use for it.")
end