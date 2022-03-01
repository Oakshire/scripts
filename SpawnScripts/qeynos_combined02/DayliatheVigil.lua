--[[
    Script Name    : SpawnScripts/qeynos_combined02/DayliatheVigil.lua
    Script Author  : Rylec
    Script Date    : 2021.08.10 03:08:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1003.mp3", "", "", 0, 0, Spawn)	

    conversation = CreateConversation()

    AddConversationOption(conversation, "Wait, you knew I was coming here?", "conv_01")
    AddConversationOption(conversation, "My apologies, this was my mistake.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "I was wondering when you might come to speak to me.  I welcome you.")
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "But why?", "conv_02")
    AddConversationOption(conversation, "Hmm... I think I'll be going now.")
    StartConversation(conversation, NPC, Spawn, "I did. Nothing escapes my notice in this city.  I have had my eye on you since you got here.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Who are you?", "conv_03")
    AddConversationOption(conversation, "Then I best leave you to your duties.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "It is our duty to watch the shadows, to ensure that Qeynos remains safe even from that which lurks where it can't be seen.  When those threats are found, it is our duty to see that it is dealt with.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What do you mean?", "conv_04")
    AddConversationOption(conversation, "Sounds like quite the job.  I should be going, though.")
    StartConversation(conversation, NPC, Spawn, "I am Daylia.  I am the Vigil of the Eye of Bayle, and it is I who directs the actions of our guild.  We have emerged from the shadows to take a more active role in the defense of Qeynos and of the Bayle bloodline.")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "So what happened?", "conv_05")
    AddConversationOption(conversation, "This sounds like an interesting story, but I must be going.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "To give that answer is to give you background on the Eye of Bayle themselves.  You see, the Eye was formed after the sudden death of Antonius Bayle the first.  His passing was unexpected, and there were whispers of an assassination.  Although there was no evidence to prove this to be the case, enough of the court believed it, even if in secret.")
end

function conv_05(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "They formed an assassin guild?", "conv_06")
    AddConversationOption(conversation, "Please tell me more about this later.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "They surmised that if indeed there was an assassination, it was unlikely the assassin would ever be caught, and even if they were, the assassination was already done.  They felt that it was best to attempt to head these threats off before they happened.  To wage a war with the shadows in the shadows, to fight them on their ground.")
end

function conv_06(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "So why have you come out now?", "conv_07")
    AddConversationOption(conversation, "I can see how some might not care for that.  I'll come back another time to discuss this with you.")
    StartConversation(conversation, NPC, Spawn, "Correct.  We were created to meet these dark threats head on, out of sight from the rest of the world.  We conducted our work in secret, keeping all knowledge of our existence only to ourselves and to select members of the Council.  It was imperative that the populace at large was unaware of our existence, for many would find our methods less than palatable.")
end

function conv_07(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What happened then?", "conv_08")
    AddConversationOption(conversation, "Hmm... I'd like to hear more, but I must go.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "We were caught off guard during the attempted kidnapping of Antonia Bayle.  Our order was powerless to stop the attempt, and had it not been for the intervention of others, it's likely that she would have been taken from us.  Our contacts in the Council were not pleased, and we wore the blame for the kidnapping attempt for not having stopped it.")
end

function conv_08(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I see.  What did you do?", "conv_09")
    AddConversationOption(conversation, "And sometimes, there's little you can do about it.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "They threatened to disband us, and have us arrested as assassins.  They said that we were no longer a necessary part of the protection of the Bayle line, as others had proven themselves more capable.  We argued that there was no way to prevent what happened, given the nature of the attempt, but there was no give.  They were going to do what they were going to do.")
end

function conv_09(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What did she say?", "conv_10")
    AddConversationOption(conversation, "Interesting, you'll have to finish that story for me later.")
    StartConversation(conversation, NPC, Spawn, "Little did we know, Antonia herself had overheard part of the conversation, and she entered the room.  She demanded an explanation, which we were bound to give.  She was shocked to learn of our existence, and asked question after question trying to learn all that she could.  When we were finished, she dismissed everyone save me.")
end

function conv_10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "To come forth from the shadows?", "conv_11")
    AddConversationOption(conversation, "I don't mean to be rude, but I must leave now.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "She told me that she could not protect the order as things were.  As long as we remained hidden, the Councilors could have us dismantled from the inside, and no one would ever miss us ... we never existed.  She felt that the Eye of Bayle was a necessary functioning part of Qeynos's security, and did not want to see us disbanded.  Thus, she made a bold decision.")
end

function conv_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "So why are you telling everyone your whole story?", "conv_12")
    AddConversationOption(conversation, "Quite the ordeal for sure.  I'll come back another time.")
    StartConversation(conversation, NPC, Spawn, "That is correct.  She recognized that there may be some political backlash from the assassins coming forth ... the word \"assassin\" itself conjures up thoughts of villainy and shadowy deeds.  However, nothing could be further from the truth.  We operate under a strict code of behavior, which all of our number are required to adhere to.  We work to protect not only the Queen, but the citizens as well.  We are the first and last line of defense against the shadows.")
end

function conv_12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for your time.  I'll leave you to your duties.")
    StartConversation(conversation, NPC, Spawn, "So that they might know the truth.  We are not hidden any more.  Whether we are honored or hated, we now want it to be for honest reasons.  We will continue to operate in the shadows, but the citizens will know, for good or ill, that we walk among them, ever vigilant in the unseen war.")
end

function respawn(NPC)
	spawn(NPC)
end