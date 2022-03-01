--[[
    Script Name    : SpawnScripts/NorthFreeport/VibiaValens.lua
    Script Author  : premierio015
    Script Date    : 2020.07.10 05:07:25
    Script Purpose : 
                   : 
--]]
QUEST = 572


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/vibia_hail.mp3", "", "", 3079041432, 2894640672, Spawn)
    if not HasQuest(Spawn, QUEST) and not HasCompletedQuest(Spawn, QUEST)  then
    AddConversationOption(conversation, "I was hoping you'd have some work for me.", "work")
    end
    if GetQuestStep(Spawn, QUEST) == 3 then
    AddConversationOption(conversation, "I gathered the ingredients you needed.", "complete")
    end
    AddConversationOption(conversation, "Thanks, I will have a look.")
    StartConversation(conversation, NPC, Spawn, "Please take a look at my wares. Don't hesitate to ask me any questions.")  
end

function work(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial.mp3", "", "", 439302629, 4168884985, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What do you mean by ''ghost stories?'' ", "dlg01")
AddConversationOption(conversation, "I'm not interested in being anyone's errand boy right now.  Good bye.")
StartConversation(conversation, NPC, Spawn, "You're in luck. It just so happens that I need someone like you; someone who's not afraid of a few ghost stories.  I need you to acquire some important items for me. I'll pay you, of course. Interested?")
end

function dlg01(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial2.mp3", "", "", 3521735960, 3419399030, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What caves are you talking about?", "dlg02")
AddConversationOption(conversation, "I do not want to test old superstitions. Find someone else.")
StartConversation(conversation, NPC, Spawn, "Old legends say that the caverns are haunted.  It's all superstitious rubbish, of course!  The way everyone cowers in fear at the mention of the caves, you'd think they'd never heard of the walking dead before those silly legends!")
end

function dlg02(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial3.mp3", "", "", 2196718915, 2202525576, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "So you need items from the Wailing Caves?", "dlg03")
AddConversationOption(conversation, "The savannahs are haunted and I don't like haunts. Count me out.")
StartConversation(conversation, NPC, Spawn, "I'm talking about the Wailing Caves. What other haunted caverns are there?  Despite the rumors you may have heard, the caverns are no more haunted than the savannah.")
end

function dlg03(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial4.mp3", "", "", 2569063706, 2826808400, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What ingredients do you need?", "dlg04")
AddConversationOption(conversation, "If it involves scary places, then I refuse. Goodbye.")
StartConversation(conversation, NPC, Spawn, "Precisely!  I need someone to venture into the caverns and gather a few ingredients for me.  The task shouldn't be too difficult for someone like you.")
end

function dlg04(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial5.mp3", "", "", 2842679800, 900866920, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What is a Soulspike?", "soulspike")
AddConversationOption(conversation, "Why do you need these ingredients?", "ingredients")
AddConversationOption(conversation, "Soulspike! Forget it. I don't hunt creatures with proper names.")
StartConversation(conversation, NPC, Spawn, "Oh, just a bit of seep bile from a primordial and the venom sac of a rare spider called Soulspike. Hardly a worthy task for one with such ... worldly experience, but still, I humble myself to ask for your services.")
end

function ingredients(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial6.mp3", "", "", 1617170611, 1365623066, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Yes, I'm interested.  I'll get the items for you.")
AddConversationOption(conversation, "I'm not interested in being anyone's errand boy right now.  Good bye.")
StartConversation(conversation, NPC, Spawn, "A client of mine has requested a very... interesting potion from me.  Of course I'm more than capable of brewing it, but only if I have those ingredients.  So, are you interested in the job?")
end

function soulspike(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_initial7.mp3", "", "", 3737977554, 3389137421, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Why do you need these ingredients?", "ingredients")
AddConversationOption(conversation, "Who said I was brave? Count me out.")
StartConversation(conversation, NPC, Spawn, "Soulspike is a Wailing Spider, one of the species that live in the caverns; he's a bit larger than the rest. His venom is said to be incredibly potent, though encountering Soulspike is extremely rare. Still, nothing for a brave adventurer to fear.")
end

function complete(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_return.mp3", "", "", 1840501091, 1548113784, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Yes, as a matter of fact, I would.", "complete02")
StartConversation(conversation, NPC, Spawn, "Oh, wonderful and just in time!  My client was inquiring about the status of his commission.  Well, I suppose you want your payment?")
end

function complete02(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST, 3)
PlayFlavor(NPC, "voiceover/english/optional1/merchant_vibia_valens/fprt_north/quests/vibiavalens/vibiavalens_x1_return2.mp3", "", "", 3395075188, 3798691058, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Good bye.")
StartConversation(conversation, NPC, Spawn, "There you are, then!  Now, if you wouldn't mind leaving me be, I've work to finish.")
end

function respawn(NPC)

end
