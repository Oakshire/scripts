--[[
    Script Name    : SpawnScripts/QueensColony/TrainerCharleneStoutmuffin.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Trainer Charlene Stoutmuffin dialog
    Modified Date  : 20.04.04
    Modiefied by   : premierio015
    Notes          :  Added all correct voiceover options and animations
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

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1039.mp3", "", "hello", 0, 0)
    AddConversationOption(conversation, "Tell me about items and equipment.", "dlg_12_1")
    AddConversationOption(conversation, "Tell me about my inventory.", "dlg_12_11")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Good day, " .. GetName(Spawn) .. ". I'm here at the colony to teach our Queen's newest recruits about equipment and inventory space. Good equipment is one of the most important aspects of any adventurer!")
end

function dlg_12_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "What can I do with the treasures I earn while adventuring?", "dlg_12_2")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Norrath is full of treasures for brave heroes like you. Sometimes the opponents you defeat in battle leave behind treasure chests with valuable loot. You can also buy items from other players, craft them as an artisan, or be awarded items for completing quests.")
end

function dlg_12_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 10745)
    AddConversationOption(conversation, "What does the item information tell me?", "dlg_12_3")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Some items you obtain can be equipped on your person. If you find weapons, armor, jewelry, or certain other goodies, you may be able to use them. To look at a piece of equipment and determine if you can use it, move your mouse pointer over the item.")
end

function dlg_12_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Are things like attribute bonuses important?", "dlg_12_4")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "For items that can be equipped, such as weapons and armor, mousing over it tells you which professions can use the item and at what level it can be equipped. You'll also see any benefits, such as attribute bonuses and resists, that the equipment provides. Learn about attributes by talking to Trainer Gurga Trueheart.")
end

function dlg_12_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "How can I tell which of two weapons is better?", "dlg_12_5")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "A wise adventurer is always trying to improve his or her equipment. Whenever you see gear that provides an overall greater benefit than what you have, that item is an upgrade for you.")
end

function dlg_12_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "How can I tell which of two pieces of armor is better?", "dlg_12_6")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Weapons have a Damage Rating that shows the relative damage you can do with them. A higher Damage Rating is always better. Be sure you are comparing weapons of the same type, such as a two-handed weapon with another two-hander, or one dual-wield weapon with another.")
end

function dlg_12_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What about scouts and priests?", "dlg_12_7")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "How you judge armor depends on your profession. Fighters who take a beating care most about obtaining armor that has high Mitigation, which decreases the amount of damage they take. Mages, on the other hand, know they can't take much punishment anyway, so would rather have armor that provides nice attribute bonuses.")
end

function dlg_12_7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "What do I do with equipment I can't use?", "dlg_12_8")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Scouts and priests need varying amounts of protection depending on how they play. If they find themselves at the forefront of battle, protection becomes very important. If they stay out of harms way, attribute bonuses may be more valuable.")
end

function dlg_12_8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 10745)
    AddConversationOption(conversation, "Why are some items marked 'No Value' or 'No Trade'?", "dlg_12_9")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "An item can be sold to a non-player merchant for cash unless it has the 'No Value' flag on it. Items can be sold or traded to another player unless it has the 'No Trade' flag. If an item says it is 'Lore,' you can only have one of them on your character at a time.")
end

function dlg_12_9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What does it mean when an item says it is 'Attuneable'?", "dlg_12_10")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Some items are marked 'No Value' because they are easy to obtain, such as harvested goods. You have to work to earn wealth," .. GetName(Spawn) .. ". Items are marked 'No Trade' in order to ensure that you earn them yourself, such as defeating a very tough monster or completing a long quest.")
end

function dlg_12_10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "How do I manage my inventory?", "dlg_12_11")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "If an item is marked 'Attuneable,' you must attune it to yourself before it provides any benefits. You'll notice a message on screen when you are wearing an item that must be attuned. To attune it, right-click on the item and select 'Attune.'  Once attuned, that item can no longer be traded or sold to another player.")
end

function dlg_12_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Can I put bags inside of bags?", "dlg_12_12")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Press the I key to open your inventory. Beneath your portrait are six slots that can hold items. You can place bags or other containers in those slots, which will give you even more storage space. Press the B key to open all your bags at once.")
end

function dlg_12_12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "So one item takes up one bag slot?", "dlg_12_13")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Only empty bags can go inside other bags. For this reason, it's a good idea to get hold of containers with many slots. After a long night of adventuring or harvesting, you'll want to have as many places to store your goodies as possible.")
end

function dlg_12_13(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    AddConversationOption(conversation, "Tell me about items and equipment.", "dlg_12_1")
    AddConversationOption(conversation, "I will return for instruction later.")
    StartConversation(conversation, NPC, Spawn, "Certain items, such as ammunition or harvested resources, can be stacked up to 200 at a time, depending on the item.  Many goods, such as armor and clothing, cannot be stacked at all.")
end