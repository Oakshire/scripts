--[[
    Script Name    : ItemScripts/IgnatiaCellusFamilyHistoryBookHouseItem.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.30 03:05:00
    Script Purpose : 
                   : 
--]]

local Quest = 5844

function examined(Item, Player)
conversation = CreateConversation()
    Intro(Item,Player)
end

function Intro(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Entry One","Page1")
    AddConversationOption(conversation, "Close the book.","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I am sure that some of my family's writings still exist elsewhere in Norrath. Unless they were destroyed in the Shattering or as mentioned before, held back by unscrupulous vendors. Whatever portion of this tome you have, cherish it and remember the Cellus family of Qeynos.")
end


function Page1(Item, Player)
    conversation = CreateConversation()
AddConversationOption(conversation, "Entry Two","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "My name is Ignatia Cellus and my story is nothing like my grandmother's Isabella Cellus' tale. She lived in a time of relative peace, while I am in a world besieged by terrors unimaginable. The undead rise up outside Qeynos and we all fear for our --")
end

function Page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Three","Page3")
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- lives. Thank the gods for Kane Bayle, commander of the Guard. His guidance will surely lead Qeynos through this dark time! He has ordered the Guard to watch every possible entry to Qeynos, which means longer shifts and journeys far from home. I am in the Guard and and fortunately, patrol --")
end

function Page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Four","Page4")
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- inside the catacombs near the Guild Halls. There is a strange odor in the air; it is the smell of death. The dead are piled high and cannot be buried, for there is no one to stand guard over the mourners and keep them safe. The undead appear --")
end

function Page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Five","Page5")
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- in waves that we cannot repel easily, as there are so many of them and so few of us. With the Guard trying to keep Qeynos' entrances safe, there are not enough to do other tasks. I do not remember the last time I slept at home. This is exhausting.")
end

function Page5(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Six","Page6")
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Alas! Finally, I was able to return to my home in South Qeynos, only to find such sorrow. The block of homes on my street were filled with the dead. The patrol in that quadrant had not reported in a fortnight, so I was sent to check on them. My mother --")
end

function Page6(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Seven","Page7")
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- is one who died of this horrible plague that seems to rise from beneath us. Captain Keldrane has been sent to investigate the deepest areas of the Catacombs. Commander Bayle asked me personally to escort the unarmed to safety in Qeynos Hills. Some have said this will --")
end

function Page7(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Eight","Page8")
AddConversationOption(conversation, "Turn back to previous entry.","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- spread the Guard too thinly, but Commander Bayle doubtless knows more than the general populace. I trust his judgment. He would never betray Qeynos, never! Meanwhile, I am happy to leave the city; being here reminds me too much of --")
end

function Page8(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- the family and friends I have lost. I am accompanying a group of non-combatants out of the city to a secret place known only to my family until now. I hope we will be safe there. I did not tell the commander of this place, but I know our family's stronghold will not remain secret or hidden for long.")
end

