--[[
    Script Name    : SpawnScripts/qeynos_combined02/HagricSkolvein.lua
    Script Author  : Rylec
    Script Date    : 2021.01.31 02:01:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    local voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "", "", 0, 0, Spawn)

    conversation = CreateConversation()

    AddConversationOption(conversation, "Actually, I was going to ask you about just that. This is your training ground?", "conv_01")
    AddConversationOption(conversation, "Not at the moment, but thank you.")
    StartConversation(conversation, NPC, Spawn, "Hello, friend. I am Hagric Skolvein of the Graystone Guild. Have you come here to train with us?")
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "10745")
    AddConversationOption(conversation, "Is that so? So is Dalluk the head of the Guild, then?", "conv_02")
    AddConversationOption(conversation, "Well, I will leave you to it, then. Farewell.")
    StartConversation(conversation, NPC, Spawn, "That it is!  It's here we spend time teaching others the techniques we developed and honed, both from fighting each other, and from observation of others who were trained as brawlers. We've all worked together to help perfect our art, and now the Guild, under the direction of Dalluk, is looking to teach others what we've learned.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "11882")
    AddConversationOption(conversation, "How's that? What happened?", "conv_03")
    AddConversationOption(conversation, "Then I would guess he is doing a fine job. Farewell.")
    StartConversation(conversation, NPC, Spawn, "He is. He is the best of us, without question. It was his idea to start the guild as well, and ultimately through him that we were able to overcome the apathy we were greeted with from those around us.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Interesting concept. Please go on.", "conv_04")
    AddConversationOption(conversation, "Hmm... that's something I'd have to think about. Goodbye for now.")
    StartConversation(conversation, NPC, Spawn, "So, as I'm sure you can imagine, we didn't all always just come here to fight. We had trades and duties, and Dalluk was no exception. He is a merchant by trade, selling and buying items from his contacts in Kelethin. The nightly brawls were his way, as with all of us, of a manner of relaxation. It might sound strange that fighting might be relaxing, but we found that you really get to know others and yourself in a brawl.")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see. What happened, then?", "conv_05")
    AddConversationOption(conversation, "I'll come back another time. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Dalluk was far and away the best of us. He seemed to have a sixth sense about fighting, and even when outnumbered three-to-one, he nearly always came out on top, and when he didn't, he would just laugh and say that he clearly hadn't had enough ale. He was able to watch any of us in a fight, and immediately know our weaknesses and how to counter our moves.")
end

function conv_05(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "10745")
    AddConversationOption(conversation, "That seems rather incredible!", "conv_06")
    AddConversationOption(conversation, "That's fascinating, but I must be somewhere. Farewell for now.")
    StartConversation(conversation, NPC, Spawn, "It happened that on one of those trips to Faydwer, he came across a young elf mage under attack from aviaks in Butcherblock Mountains. Without hesitation, he jumped into the fray, and began fighting them as he might fight one of us. He claims he remembers little of it, except that once it was over, he was standing, and the aviaks were not. Using the skills we developed here, he was able to defeat armed, deadly creatures.")
end

function conv_06(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What did you do?", "conv_07")
    AddConversationOption(conversation, "Tell me more about this later. Farewell.")
    StartConversation(conversation, NPC, Spawn, "It was! When he returned, he excitedly relayed the story, and insisted that we could use these skills to help others, just as he had helped the mage back in Faydwer. We were dubious ??? the residents here were none too pleased with our activities, and the word of a drunken dwarf and a single elven mage wasn't going to change anyone's minds.")
end

function conv_07(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "10745")
    AddConversationOption(conversation, "And they accepted you?", "conv_08")
    AddConversationOption(conversation, "I actually need to be going. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Dalluk had an idea. He reckoned that if we were to receive backing from the monks here in Qeynos, our operation could be legitimized and we could become officially recognized within the city. So, with almost the same vigor that he used to confront the aviaks, he made his way to Elddar to speak with the monks.")
end

function conv_08(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "11881")
    AddConversationOption(conversation, "He did? What happened?", "conv_09")
    AddConversationOption(conversation, "I hope he did well, then. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Not hardly. We were nearly laughed out.  They believed us undisciplined and unfocused, saying that we would be more of a harm than a help to anyone. The worst of the bunch was Sensei Shoda's right hand, Karuda.  He berated our art, and Dalluk in particular. Finally, Dalluk had enough, and challenged him.")
end

function conv_09(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "How did it go?", "conv_10")
    AddConversationOption(conversation, "I have some matters to attend to. I'll return another time.")
    StartConversation(conversation, NPC, Spawn, "Karuda didn't believe it at first, and waved us off. But Dalluk didn't move, and said he wasn't leaving without the fight. Karuda refused, and turned to walk away, but Sensei Shoda was there behind him. He ordered Karuda to honor Dalluk's request, and fight him.")
end

function conv_10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "11152")
    AddConversationOption(conversation, "One hit?? I'll bet Sensei Shoda was furious!", "conv_11")
    AddConversationOption(conversation, "That's some story. Let me have you finish it another time.")
    StartConversation(conversation, NPC, Spawn, "Karuda was furious. He immediately turned and squared off with Dalluk, and both waited for Sensei Shoda to call the start of the fight. After a few tense seconds, the call came to begin, and Karuda immediately attacked Dalluk. I wish I could have slowed time at that moment. Dalluk simply pulled back his fist, waited for the monk to come close, and then, caught Karuda square in the jaw with his fist. It was over in one punch.")
end

function conv_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayAnimation(NPC, "11882")
    AddConversationOption(conversation, "That is quite the story. Well, thank  you for your time. I'll take my leave now.")
    StartConversation(conversation, NPC, Spawn, "He was, but not with us. He said that it was clear that Karuda let his emotions cloud his view, and that he should always take an opponent seriously. The whole exercise was a lesson for Karuda. Sensei Shoda said he saw strength within us, and told Dalluk that he would offer his backing for our guild. With his support, we received our recognition.")
end