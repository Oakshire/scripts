--[[
    Script Name    : SpawnScripts/qeynos_combined02/DallukGranitehand.lua
    Script Author  : Rylec
    Script Date    : 2021.02.16 01:02:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn, false)

    math.randomseed(os.time())
    local voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "", "", 0, 0, Spawn)

    conversation = CreateConversation()

    AddConversationOption(conversation, "What is going on here? It looks like you're just beating the tar out of one another.", "conv_01")
    AddConversationOption(conversation, "It looks like you're busy, so I'll leave you be.")
    StartConversation(conversation, NPC, Spawn, "Ah, hello, there! Come to see the workout regimen of our stalwart bruiser trainees? Look at them have a go! THAT'S RIGHT LADS!  Dodge and counter! Take a hit to give a bigger hit!")
end

function respawn(NPC)
    spawn(NPC)
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "And you do that by punching each other?", "conv_02")
    AddConversationOption(conversation, "Then I shouldn't interfere. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Haha! You're not far off! As you can see, we're deep in training here. Being a bruiser requires us to put our bodies through rigorous toughening practices.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I guess not. It looks like you're just trying to inflict pain on one another though.", "conv_03")
    AddConversationOption(conversation, "Perhaps you are right, but I should be going. Farewell.")
    StartConversation(conversation, NPC, Spawn, "What better way to train yourself than to get right into it? Trust me, once you've taken a few square to the jaw, you learn how to take it and stand, or don't take it and fall. There aren't a lot of other choices there!")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I had always been told that bruisers were about brutality and intimidation. It seems like that would be counterintuitive in a protector role.", "conv_04")
    AddConversationOption(conversation, "Sounds noble enough. Best of luck to you.")
    StartConversation(conversation, NPC, Spawn, "Not at all! We aren't in this simply to break bones and bruise flesh. This is about using the strength we have to help look out for and protect others. We don't need spears and swords to combat our enemies - we train our fists and bodies as weapons, ready to defend our allies at any moment.")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see. How did this group get started?", "conv_05")
    AddConversationOption(conversation, "Glad to hear it. Perhaps we can speak again some time.")
    StartConversation(conversation, NPC, Spawn, [[I wouldn't call what we do, "brutality." We use our strength effectively. It's important to cripple or crush an enemy as effectively as possible in any mortal struggle. Along with that is the ability to demoralize an enemy by any means possible. Yes, this is intimidation, but we use it as a tool to protect those who need it.]])
end

function conv_05(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I'm sorry, I'm not following...", "conv_06")
    AddConversationOption(conversation, "Interesting, but I must be going. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Hahaha! You can say that it was a bit of an umm... underground operation, if you will.")
end

function conv_06(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What did you do?", "conv_07")
    AddConversationOption(conversation, "Yeah, I've seen that. Let me come back another time.")
    StartConversation(conversation, NPC, Spawn, "It's simple! You see, there's a couple of things in Graystone Yard that most everyone liked to do; drink, and fight. And many of us like to do both quite a bit. It's part of the reason you might have a hard time finding an intact, standing table anywhere in the Yard back in the day.")
end

function conv_07(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Of... course. So what happened?", "conv_08")
    AddConversationOption(conversation, "Tell me more about this later.")
    StartConversation(conversation, NPC, Spawn, "Of course! Well, it seemed that not everyone appreciated the noise that might be generated when these two pastimes are intermingled. In fact, we apparently racked ourselves up a fair amount of complaints from the harbor and from people here in the Elddar Grove.")
end

function conv_08(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That sounds frustrating. What did you end up doing?", "conv_09")
    AddConversationOption(conversation, "I must be going, but I'll return. Farewell.")
    StartConversation(conversation, NPC, Spawn, "The city guard began to break up the events, making it so that it was nearly impossible for us to enjoy our favorite pastimes. We were constantly under their watch.")
end

function conv_09(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Of course. Did you find a place?", "conv_10")
    AddConversationOption(conversation, "I must be going. Farewell for now.")
    StartConversation(conversation, NPC, Spawn, "It was! It all stopped for a while, but we got restless. Those of us who found the brawls we had therapeutic began to meet in secret. We decided to try and find a place where we could drink and brawl all we wanted, without the possibility of disturbing our uppity neighbors.")
end

function conv_10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "And how did that work out?", "conv_11")
    AddConversationOption(conversation, "I have some things to attend to. Farewell for now.")
    StartConversation(conversation, NPC, Spawn, "We did. It so happened that the wine cellar under the inn was well insulated, and proved to dampen out the sound sufficiently. The innkeeper was more than happy to have us meet down there, as long as we were careful with the wine barrels, and paid for what we busted.")
end

function conv_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "But now you are out of the basement. What happened?", "conv_12")
    AddConversationOption(conversation, "Sounds like it worked out well. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Well, as I'm sure you could imagine, we ended up spending quite a bit on broken barrels of wine. It was worth it to us, though. After a time, we found that we were getting quite good at our brawling. We began to hold contests, and share technique ideas with one another, which benefited the group as a whole.")
end

function conv_12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What are you doing in here, then?", "conv_13")
    AddConversationOption(conversation, "I would like to hear more, but I should go. Farewell.")
    StartConversation(conversation, NPC, Spawn, "Well, as I said, we have always wanted to use our skills to help protect those around us. It was a tough sell, however. The monks here were not impressed with our capabilities, and the guard considered us a nuisance. However, once we were able to gain their respect through our actions, they allowed us to purchase an old building, and set up the Graystone Guild as an official guild within Qeynos.")
end

function conv_13(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That is quite a story there. So, do you have any rules that I should know about?", "conv_14")
    StartConversation(conversation, NPC, Spawn, "Well, once the ruckus in the Graystone Yard started, we did what we could to stem the violence, but members of our guild were turning on each other, becoming enraged themselves! We couldn't stay in there any longer, and needed to find a new place to train. The monks were kind enough to let us join with them here, which is quite beneficial for all of our students!")
end

function conv_14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Huh, I thought that might have been different for some reason. Very well, then. Thank you for your time.")
    StartConversation(conversation, NPC, Spawn, "Just one - tell everyone about the Graystone Guild! We want everyone to know we're here, and were ready to help when we're needed!")
end