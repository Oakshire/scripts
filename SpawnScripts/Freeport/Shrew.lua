--[[
    Script Name    : SpawnScripts/Freeport/Shrew.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.10 07:08:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major001.mp3", "", "", 2066527864, 955842408, Spawn)
    AddConversationOption(conversation, "Red Hoods? Don't you mean Green Hood?", "dlg1")
    AddConversationOption(conversation, "I'll tread where I please, thank you.")
    StartConversation(conversation, NPC, Spawn, "Careful where you tread, adventurer. You're stepping on official Red Hood training grounds. It'd be shame if a recruit's stray arrow were to embed itself in that shiny forehead of yours.")
end
 

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major002.mp3", "", "", 1277216120, 819304460, Spawn)
  AddConversationOption(conversation, "But, you are rangers, are you not?", "dlg2")
  StartConversation(conversation, NPC, Spawn, "Mind your tongue, fool! The Green Hoods are nothing more than a bunch of butterfly chasin' nature-lovers. The mere sight of a broken twig causes 'em to break down in tears. The Red Hoods suffer no such weakness.")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major003.mp3", "", "", 2753059694, 3116320414, Spawn)
 AddConversationOption(conversation, "Who is the Jackal?", "dlg3")
 AddConversationOption(conversation, "I have not time for this.")
 StartConversation(conversation, NPC, Spawn, "Such a word has many meanings, does it not? It is true that we track our prey with little effort. Bird and beast tell us where our enemies maneuver. No weapon exists which we cannot wield with deadly efficiency. We are the crimson serpent that lay waiting in the grass for our next victim. Consider yourself lucky that the Jackal has no use for your hide.")
end

function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major005.mp3", "", "", 3953744124, 1252610896, Spawn)
 AddConversationOption(conversation, "No one sent me, I'm just curious about learning more about your order.", "dlg4")
 AddConversationOption(conversation, "I've had enough of your accusations. Good day.")
 StartConversation(conversation, NPC, Spawn, "Why? Are you a spy? Who hired you? Did Ralem send you?")
end

function dlg4(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major006.mp3", "", "", 2500784709, 3885266374, Spawn)
 AddConversationOption(conversation, "...", "dlg5")
 AddConversationOption(conversation, "On second thought, I have no time to listen to your story.")
 StartConversation(conversation, NPC, Spawn, "Very well, if you really do wish to learn more about our kind, keep your lips sealed and I will tell you the real story of Jackal.")
end


 
function dlg5(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major007.mp3", "", "", 1064204516, 1861266404, Spawn)
 AddConversationOption(conversation, "What happened?", "dlg6")
 StartConversation(conversation, NPC, Spawn, "Good. Now, listen up. I don't have time to repeat myself. The real reason Jackal left the Green Hoods was because they failed him when he needed them most.")
end

function dlg6(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major008.mp3", "", "", 2415643148, 332674121, Spawn)
 AddConversationOption(conversation, "Continue.", "dlg7")
 StartConversation(conversation, NPC, Spawn, "A few years ago, while Jackal was away reconnoitering troop movement outside Deathfist Citadel, a band of orcs stumbled upon one of the Green Hood villages.  While the guards easily slew most of the intruders, one orc managed to evade detection by ducking into one of the village cabins.")
end

function dlg7(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major009.mp3", "", "", 609943541, 3963268716, Spawn)
 AddConversationOption(conversation, "Continue.", "dlg8")
 StartConversation(conversation, NPC, Spawn, "Inside, the orc discovered a sleeping Feir'Dal who went by the alias, Thistle. As the orc approached her bed, she awoke and screamed in horror. Just as the wanton beast was about to bear down upon her, several Green Hoods burst into the room and found the orc holding a blade to the frightened wood elf's throat.")
end


function dlg8(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major010.mp3", "", "", 1772953226, 2247749489, Spawn)
 AddConversationOption(conversation, "What happened next?", "dlg9")  
 StartConversation(conversation, NPC, Spawn, "In haste, the rangers fired their arrows into the fiend's back. The orc howled in pain and rose swiftly, placing Thistle between himself and the rangers. In a crude form of Common he barked for them to stand down lest he slit the elf's neck.")
end

function dlg9(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major011.mp3", "", "", 1375207259, 3836854048, Spawn)
 AddConversationOption(conversation, "Go on.", "dlg10")  
 StartConversation(conversation, NPC, Spawn, "The men reluctantly lowered their bows, allowing the attacker to exit the cabin and escape into the night with the girl thrown over his shoulder. Later, when Jackal returned from his mission, he learned of the attack on the village and the abduction of Thistle.")
end

function dlg10(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major012.mp3", "", "", 156590281, 1165045788, Spawn)
 AddConversationOption(conversation, "What did he do?", "dlg11")
 StartConversation(conversation, NPC, Spawn, "You see, Thistle was not only a member of the Green Hoods, but also Jackal's betrothed. When he insisted on going after the kidnapper he was met with protest from his commanding officers. There was no hope in finding her alive, they insisted. If anything, Thistle would be used as bait to lure the Green Hoods out of the forest and into a trap set by the Deathfist orcs.")
end

function dlg11(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major013.mp3", "", "", 4231314087, 4195474447, Spawn)
 AddConversationOption(conversation, "Did he find her?", "dlg12")  
 StartConversation(conversation, NPC, Spawn, "Jackal grew furious with his peers and accused them of cowardice. When his friends failed to take his side, Jackal quit the Green Hoods on the spot and went off looking for the orc who had taken his lover.")
end

function dlg12(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major014.mp3", "", "", 3078228813, 3264531529, Spawn)
 AddConversationOption(conversation, "That's tragic. Did he ever find the orc responsible for her death?", "dlg13")
 StartConversation(conversation, NPC, Spawn, "Not before she was killed, unfortunately. Jackal found Thistle's frail body, beaten and smashed, in a clearing not far from the village. Though he would never admit it to us, I'm certain the pain he felt after losing her was immeasurable.")
end



function dlg13(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major015.mp3", "", "", 2133909690, 124860836, Spawn)
 AddConversationOption(conversation, "Continue.", "dlg14")
 StartConversation(conversation, NPC, Spawn, "Jackal made finding the murderer his singular focus. For months he stalked the orcs of Deathfist, slaying scores of their kind before he finally tracked down one who knew the identity of the village attacker.")
end

function dlg14(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major016.mp3", "", "", 3529345752, 1398135562, Spawn)
 AddConversationOption(conversation, "Why the Commonlands?", "dlg15")
 StartConversation(conversation, NPC, Spawn, "He learned that the orc, named Kogrish Nailripper, had a reputation for unpredictable cruelty and had recently killed one of Emperor Fyst's advisors. Rather than sentencing him to his death, the emperor decided to instead banish Kogrish to the Commonlands of D'Lere.")
end

function dlg15(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major017.mp3", "", "", 223471, 574739350, Spawn)
 AddConversationOption(conversation, "So, Jackal traveled to D'Lere to hunt down Kogrish?", "dlg16")
 StartConversation(conversation, NPC, Spawn, "The Deathfist Empire often exile their criminals and deserters to a newly organized horde known as the Bloodskulls. These orcs wage war against Freeport in hopes of performing some great act which gain them favor with those who cast them out.")
end

function dlg16(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major018.mp3", "", "", 3792117650, 4150316942, Spawn)
 AddConversationOption(conversation, "Go on.", "dlg17")
 StartConversation(conversation, NPC, Spawn, "Correct. Along his travels, however, he met several who had heard of his tale and wished to join him on his quest for revenge. He named his followers the Red Hoods and taught us the skills he had once learned from his former order.")
end

function dlg17(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major019.mp3", "", "", 636830240, 3421312513, Spawn)
 AddConversationOption(conversation, "What brings you to Freeport then?", "dlg18")
 StartConversation(conversation, NPC, Spawn, "Now we defend the innocent travelers who make the arduous journey across D'Lere, ever vigilant for signs of Kogrish Nailripper.")
end

function dlg18(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major020.mp3", "", "", 2970808950, 3130689863, Spawn)
  AddConversationOption(conversation, "You tell a fascinating tale. Thank you for your sharing it.")
  AddConversationOption(conversation, "Rangers, no matter their business, have no place here in Freeport!")
  AddConversationOption(conversation, "Can I become a Red Hood?", "redhood")
 StartConversation(conversation, NPC, Spawn, "Our business here is our own. Suffice to say, the Overlord is sympathetic to our cause and has offered to assist us in our quest. In exchange for his knowledge, Jackal has agreed to garrison several of us here to help defend Freeport's battlements with our bows. Additionally, we've agreed to teach those who we deem worthy the arts of a ranger.")
end




function redhood(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "shrew/fprt_south/ranger_lore_major/ranger_lore_major023.mp3", "", "", 1652730082, 3821660271, Spawn)
 AddConversationOption(conversation, "Very well, good-bye.")
 AddConversationOption(conversation, "I'm not sure whether to take that as a compliment or a threat.")
 StartConversation(conversation, NPC, Spawn, "You have already forged your destiny, adventurer. The Red Hoods have little need of your profession. We will, however, watch over you during your time here. Go now, know that the deadliest of bowmen watch your back.")
end

 
 


function respawn(NPC)

end

