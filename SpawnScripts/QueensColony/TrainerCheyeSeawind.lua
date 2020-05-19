--[[
    Script Name    : SpawnScripts/QueensColony/TrainerCheyeSeawind.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Cheye Seawind dialog
    Modified Data  : 20.04.04
    Modified by    : premierio015
    Notes          : Addded all VoiceOvers and Animations
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    math.randomseed(os.time())
	choice = math.random (1, 3)
	str = tostring(choice)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1053.mp3", "", "peer", 0, 0, Spawn)
    AddConversationOption(conversation, "What can cause my death? ", "dlg_7_1")
    StartConversation(conversation, NPC, Spawn, "Even the bravest champion of Queen Antonia will meet an untimely end on occasion. Let me teach you the consequences of death and how you can recover properly.")
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1053.mp3", "", "peer", 0, 0, Spawn)
    AddConversationOption(conversation, "What can cause my death? ", "dlg_7_1")
    StartConversation(conversation, NPC, Spawn, "Even the bravest champion of Queen Antonia will meet an untimely end on occasion. Let me teach you the consequences of death and how you can recover properly.")
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1053.mp3", "", "peer", 0, 0, Spawn)
    AddConversationOption(conversation, "What can cause my death? ", "dlg_7_1")
    StartConversation(conversation, NPC, Spawn, "Even the bravest champion of Queen Antonia will meet an untimely end on occasion. Let me teach you the consequences of death and how you can recover properly.")
end
end

function dlg_7_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 11881)
    conversation = CreateConversation()
    AddConversationOption(conversation, "How will I know when I'm going to die?", "dlg_7_2")
    StartConversation(conversation, NPC, Spawn, "Death can come in many ways: being bested on the field of battle, falling from great heights, drowning in water, falling into lava, standing too close to an exploding chest, and so on. It's a dangerous world out there, " .. GetName(Spawn) .. ".")
end

function dlg_7_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 11882)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Why green?", "dlg_7_3")
    StartConversation(conversation, NPC, Spawn, "Just keep an eye on your health bar, the green line located beneath your name in the upper left of your screen. At least...you hope it's green.")
end

function dlg_7_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 11287)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What happens then?", "dlg_7_4")
    AddConversationOption(conversation, "You're a morbid person. I'll come back later.")
    StartConversation(conversation, NPC, Spawn, "Green means you're healthy. As your health diminishes, the bar turns yellow, then orange, and finally red. If the bar is empty, you die. You pay the debt which cancels all others, if you get my meaning.")
end

function dlg_7_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 11233)
    conversation = CreateConversation()
    AddConversationOption(conversation, "So death is not the end?", "dlg_7_5")
    StartConversation(conversation, NPC, Spawn, "Your spirit lays trapped in your fallen body, unable to move. At this point, you have a choice: wait for a nearby ally to revive you, or choose a location from the window in the center of your screen at which to reappear. In some cases you'll have a single choice, in others multiple choices.")
end

function dlg_7_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 11882)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What are the consequences?", "dlg_7_6")
    StartConversation(conversation, NPC, Spawn, "Fortunately for all of us, death in Norrath is a temporary thing. If another adventurer revives you, you reappear at the spot of your death. If you choose a location to revive, you will appear at that spot. There are consequences to death, however.")
end

function dlg_7_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 12246)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What is experience debt?", "dlg_7_7")
    AddConversationOption(conversation, "I think I've learned enough for now. Cheer up!")
    StartConversation(conversation, NPC, Spawn, "There are three results of death. First, you incur some experience debt which can be paid off by earning more. Second, you suffer a revive sickness that lowers your abilities for a short time, which leaves you temporarily vulnerable and less effective. Finally, all your equipped items take damage that will eventually have to be repaired.")
end

function dlg_7_7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 11882)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What is revive sickness like?", "dlg_7_8")
    StartConversation(conversation, NPC, Spawn, "Experience debt is indicated by a red line on your experience bar. As you earn experience going forward, part of your experience will go toward paying off your debt while the rest will continue to advance you toward your next level. Mousing over your experience bar also tells how much debt you have.")
end

function dlg_7_8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What are the results of item damage?", "dlg_7_9")
    StartConversation(conversation, NPC, Spawn, "You'll see an icon for revive sickness in your spell effects window. Mousing over the icon will tell you how long it will remain. The type of sickness you have depends on how you were revived, but no matter what there will be a negative effect. Don't worry, it passes soon enough.")
end

function dlg_7_9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 12187)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What can I do about item damage?", "dlg_7_10")
    StartConversation(conversation, NPC, Spawn, "Your equipped items usually take 10% wear with each death. When they are down to zero durability, you no longer receive any benefit from them. Don't let your equipment ever get into such poor condition, " .. GetName(Spawn) .. "!")
end

function dlg_7_10(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "Thank you for your enlightening yet depressing advice.")
    StartConversation(conversation, NPC, Spawn, "You will need to see a mender, someone who is able to repair your items back to 100% durability. Speak to Trainer Zidget Sprogrudder to learn more about repairing your gear. Should your equipment take damage here at the outpost, Mender Mannus at the forge can make repairs for you.")
end