--[[
    Script Name    : SpawnScripts/CryptBetrayal/Adun.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 02:10:09
    Script Purpose : 
                   : 
--]]

local VegalysKeldranesBetrayal = 5371

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, VegalysKeldranesBetrayal) == 1 then
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog000.mp3", "", "", 356482937, 2267048198, Spawn)
	AddConversationOption(conversation, "Who are you?", "Option1")
	AddConversationOption(conversation, "I do not meddle with the dead.")
	StartConversation(conversation, NPC, Spawn, "There is no rest amongst the dead and those who seem dead.  A miserable existence.")
	else
    PlayFlavor(NPC, "", "", "hail", 0, 0, Spawn)
end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog001.mp3", "", "", 865378902, 137121651, Spawn)
	AddConversationOption(conversation, "What happened?", "Option2")
	AddConversationOption(conversation, "That is unfortunate, but I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "I'm Adun the Unfortunate, former lieutenant under Captain Vegalys Keldrane.  We were like brothers, Keldrane and I.  Until the War, that is.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog002.mp3", "", "", 1068027381, 4022019359, Spawn)
	AddConversationOption(conversation, "How do you know he is to blame?", "Option3")
	AddConversationOption(conversation, "You blame him for your family's deaths.", "Option3")
	AddConversationOption(conversation, "I have no time to help you.")
	StartConversation(conversation, NPC, Spawn, "Keldrane sent my wife and daughters out of the city to certain death.  He claimed to be protecting them, saving them from the pestilence sweeping the lands.  I learned of their deaths in the plague mere hours before my own death.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog003.mp3", "", "", 430011699, 748481122, Spawn)
	AddConversationOption(conversation, "You sound bitter; did you betray him?", "Option4")
	AddConversationOption(conversation, "You are indeed unfortunate.")
	StartConversation(conversation, NPC, Spawn, "Keldrane is to blame, may he rot forever.  My family's suffering was nothing to him, the lives of the citizens were nothing.  Everything Keldrane did was for the glory of his own family. He rose in power on the backbones of stout-hearted men like me, who trusted him.")
end



function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog004.mp3", "", "", 1124379121, 1005458113, Spawn)
	AddConversationOption(conversation, "Do you know who might have betrayed him?", "Option5")
	AddConversationOption(conversation, "I'll leave now.")
	StartConversation(conversation, NPC, Spawn, "Betray him?  And become what he was - a miserable leader and a sorrier excuse for a Guard Captain?  No, whatever his fate, I had no hand in it -- much as I now regret that he died before I could tell him how my family died.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog005.mp3", "", "", 1652098263, 1145272387, Spawn)
	AddConversationOption(conversation, "Who are they?", "Option6")
	AddConversationOption(conversation, "I've had enough of this for now.")
	StartConversation(conversation, NPC, Spawn, "Keldrane made many enemies amongst his former friends.  My spirit needs rest, but his bitterness keeps me here.  If you find who betrayed Keldrane, you also set me free, so I am eager to help.  Why don't you speak with Vargon? Or with Borthen?")
end

function Option6(NPC, Spawn)
    SetStepComplete(Spawn, VegalysKeldranesBetrayal, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/adun/qey_catacomb03/adun_dialog006.mp3", "", "", 2119328697, 497852443, Spawn)
    AddConversationOption(conversation, "I will do as you suggest.")
	AddConversationOption(conversation, "No, thank you.")
	StartConversation(conversation, NPC, Spawn, "Vargon thought Keldrane could do no wrong, to his own similar misfortune.  I hear his spirit, lost and confused, abandoned as we all were when Keldrane died.  Speak with Vargon about the day we drew our last breaths, side by side.  Borthen was another of our closest friends; I sense his spirit in this cursed lair, too.")
end





function respawn(NPC)
	spawn(NPC)
end