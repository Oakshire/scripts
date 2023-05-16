--[[
    Script Name    : ItemScripts/aRustySword.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 07:05:27
    Script Purpose : 
                   : 
--]]

local Quest = 5830

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
    AddConversationOption(conversation, "[Inspect the blade closely]", "Dialog2")
    AddConversationOption(conversation, "[Put the rusty sword away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I've found a rusty blade that looks like it was once a very powerful sword.  It may be possible to restore this sword back to its original condition.")
end

function Dialog2(Item,Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    OfferQuest(nil,Player,Quest)
    end
    if GetQuestStep(Player,Quest)==2 then
    AddConversationOption(conversation, "[Mix the flour into a paste and apply it to the rust]", "Dialog3")
    end
    AddConversationOption(conversation, "[Put the rusty sword away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "As you continue to inspect the sword, you can see that it once had some carvings on both the hilt and the blade. Again, you detect some type of power coming from it. Maybe if you made a paste from some flour and water, you could try to scrub the rust off of the blade.")
end


function Dialog3(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==4 then
    AddConversationOption(conversation, "[Repair the stars etched in the blade]", "Dialog4")
    end
    if GetQuestStep(Player,Quest)==2 then
    SetStepComplete(Player,Quest,2)
    end    
    AddConversationOption(conversation, "[Put the sword away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "You apply the paste to the blade, scouring it for quite a while. After a long time you manage to remove nearly all of the rust. This sword is actually rather elegant and you can now see that there were carvings of stars along the entirety of the sword.  Perhaps if you had an etcher, you might be able to carve the stars back into the blade.")
end

function Dialog4(Item,Player)
    conversation = CreateConversation()
    if GetQuestStep(Player,Quest)==6 then
    AddConversationOption(conversation, "I am victorious! Starwisp is renewed!", "QuestFinish")
    end
    if GetQuestStep(Player,Quest)==4 then
    SetStepComplete(Player,Quest,4)
    end    
    AddConversationOption(conversation, "[Put Starwisp away]", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Looking at the sword, you can see each one of the stars you etched have a faint glow coming from them. It's as if each of the klicnicks you killed was transferred into the sword somehow. Another thought enters your head - Starwisp.")
end
--I've killed quite a number of klicniks in Antonica.  I have a feeling my desire to do so came from the sword.
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
    AddConversationOption(conversation, "[Hold on to the blade as a keepsake]")
    AddConversationOption(conversation, "[Get rid of the rusted junk.]", "QuestFinish")
    StartDialogConversation(conversation, 2, Item, Player, "The rusted blade glows slightly in your hands. Your mind flashes a faint memory, a sword you've seen before.")
end