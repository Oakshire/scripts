--[[
    Script Name    : ItemScripts/GuindersSepulcherNotes.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.19 07:10:10
    Script Purpose : 
                   : 
--]]



function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Read on.", "next_page")
StartDialogConversation(conversation, 2, Item, Player, "While exploring the bowels of the city, the Qeynos Catacombs, I make a startling discovery, and, I believe, a well-kept secret -- I discovered a key inside a coffin. The key reads \"Tonmerk the humble.\" I searched the records of the city to divulge the past of Tonmerk, and learned that he was a great paladin, a crusader of the Priests of Life, during the Age of Turmoil. He was the personal guard of the revered Priestess Jahnda.")
end


function next_page(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Read on.", "next_page2")
StartDialogConversation(conversation, 2, Item, Player, "Throughout my years, I've heard tavern tales of a hidden mausoleum filled with the remains of the great Priestess Jahnda. Her last dying wish was to have her tomb hidden from the masses in hope of avoiding the throngs of worshipers who come to revere legendary religious figures. She wished the Qeynosians to honor her deity, Rodcet Nife, the Prime Healer, and not her place of final resting.")
end

function next_page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Read on.", "next_page3")
StartDialogConversation(conversation, 2, Item, Player, "When inquiring of these accounts at the Temple of Life here in Qeynos, I find the Celestial Watch very unhelpful. They would not speak a word of this mausoleum. From what I can gather from historical texts available to me, and from interviews with those whose lineage is bound to Qeynos since the Age of Turmoil, the Sepulcher of Jahnda does exist.")
end

function next_page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Put Guinder's notes away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Jahnda does not rest alone. Some say she was buried with the most devoted champions of the Prime Healer. There is also a rumor that her most trusted guardian, Lord Tonmerk is not among those legendary champions even though he should be at her side for eternity. This leads me to believe that his resting place may be a secret connection to the hidden sepulcher. I found only one mention of his place of resting and it is said to be in the one sepulcher that the Celestial Watch does talk about, the majestic halls of the Sepulcher of the Prime Healer. I will search for this place in what most call Vermin's Snye.")
end