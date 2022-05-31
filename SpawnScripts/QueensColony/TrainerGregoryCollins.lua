--[[
    Script Name    : SpawnScripts/QueensColony/TrainerGregoryCollins.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Gregory Collins dialog
                   : 
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
    voice = math.random (1,3)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "", "hello", 0, 0, Spawn)
    AddConversationOption(conversation, "How does one take up crafting?", "dlg_18_1")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "Hello my friend! I have the pleasure of serving Qeynos by explaining the role of crafting and tradeskills to newly arrived heroes such as you. By taking on the role of an artisan, you can help expand the influence of our fair city in worldwide commerce.")
end

function dlg_18_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "Where does one perform crafting?", "dlg_18_2")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "Crafting, or tradeskilling as some call it, involves taking ingredients harvested or obtained in the world, mixing them with the proper fuel, and carefully following a specific recipe to create something new and useful for yourself or your fellow citizens. Just as you can gain levels by adventuring, you have a separate Artisan level that increases as you earn experience crafting.")
end

function dlg_18_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Can I make a variety of items?", "dlg_18_3")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "Crafting takes place in workshops, just like the one we have here on the island. Inside the workshops you will find the fuel and devices you'll need to build, cook, scribe, sew, and create all manner of useful goods. When you arrive in our grand city, you will find the entrance to a similar workshop in your home village.")
end

function dlg_18_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What could I specialize in?", "dlg_18_4")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "As you practice your craft you will learn to make a variety of products, but as you advance in your profession you will specialize in certain types of goods. As you acquire new recipe books, you will learn new types of items you can make.")
end

function dlg_18_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)

    AddConversationOption(conversation, "Where do I learn recipes?", "dlg_18_5")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "You might choose to become a Provisioner that makes food and drink, a Woodworker that crafts totems and staves, an Armorer that forges plate and chain armor, a Sage that scribes potent spells for mages and priests, or one of many other noble professions.")
end

function dlg_18_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 10745)

    AddConversationOption(conversation, "What can I do with the items I make?", "dlg_18_6")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "Basic recipes can be bought for a small fee from a merchant near the workshops in the cities. Rare recipes can be obtained by adventuring in the wilds of Norrath. You may want to trade goods or services with other adventurers and artisans to obtain such valuable recipes. You can view your recipe book by pressing the N key.  ")
end

function dlg_18_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)

    AddConversationOption(conversation, "Do you have any further advice?", "dlg_18_7")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "You can either use the items yourself or make a tidy profit by selling them to others. A skilled artisan is always in demand for the goods they provide, so learn your craft well and you will always have a place in Qeynos society.  ")
end

function dlg_18_7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for the guidance.")
    AddConversationOption(conversation, "I will return another time to learn your lesson.")
    StartConversation(conversation, NPC, Spawn, "Here is a handbook that will provide you with some basic reference material to start with. Once you reach Qeynos, you will find a tradeskill tutor within your local crafting workshop who can teach you more about crafting in further detail.")
    -- JA: Need to give out some tradeskill item here and should only play this step if you don't already have the book.
end