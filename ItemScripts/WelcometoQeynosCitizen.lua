--[[
    Script Name    : ItemScripts/WelcometoQeynosCitizen.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.31 12:10:33
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Welcome to Qeynos!  As a new citizen of our city, there are probably hundreds of questions you still wish to have answered.  This book is meant to assist you in finding activities which will interest and inspire you.  Naturally, such a small book cannot possibly explain all you will need to know.  Let it serve as a brief guide to the richness that you will experience throughout Norrath.  Your citizenship is not affected if you discard this book without accepting the tasks.  If you work on these tasks, you must keep this book until you finish them all.")
end

function Page1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Collecting stones and shards can be a very rewarding hobby.    You can collect items as you travel, examining them to determine whether they will be worthwhile examples to keep.  Gathering little items can be addicting as well!  Be sure to look up now and again to admire the beauty of Norrath.")
end

function Page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page3")
AddConversationOption(conversation, "Previous Page","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Once you have completed a collection, present it to Mervos Stadrin in North Qeynos.  He offers rewards for your completed collections.  And should you complete an entire series of collectable items, you may receive something special for your home as well.  Gathering collectibles is not only educational and rewarding but fun as well.")
end

function Page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page4")
AddConversationOption(conversation, "Previous Page","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The lands have changed much since the ancient days, and yet there are so many things that remain to remind us of our heritage.  No doubt you have seen some of these precious memorials preserved in some of the villages, such as the Spirit of Faydark park in the Willow Wood.  Please take a moment to remember the fallen by visiting the Claymore Plaza in North Qeynos.")
end

function Page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page5")
AddConversationOption(conversation, "Previous Page","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There are many such places throughout the world as we are not the only folk who preserve our history.  Be cautious in your travels but do not deny yourself the pleasure of discovery, either.  Be wary and respectful of your surroundings and you will find many places throughout the lands to interest or thrill you.")
end

function Page5(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page6")
AddConversationOption(conversation, "Previous Page","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Reading is a great way to learn more about the heritage of the land, the history of its inhabitants and the beliefs of those who are a part of Norrath.  Visit Sage Indis Surion in South Qeynos to purchase some of his fascinating tomes.  Though some are missing a page or two, the Sage has made notations in each volume, indicating where additional pages might be located.")
end

function Page6(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page7")
AddConversationOption(conversation, "Previous Page","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Sage sells \"The Story of the Rat Queen,\" which is part autobiographical and part analysis of the poor woman who lives in the Vermin's Snye.  It is said to be among Antonia Bayle's favorites and is an interesting read.  Additionally, one can find books scattered throughout the world that are excellent sources of information.  You can also gain new skills by completing any of the Mastery tomes available.")
end

function Page7(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page8")
AddConversationOption(conversation, "Previous Page","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "As you explore Norrath, you will occasionally find unsual objects.  Sometimes, they are on creatures in the wilds.  Sometimes you will notice something odd in the landscape and pause to take a closer look.  In either case, let curiosity be your guide as many great discoveries have been made serendipitously. ")
end

function Page8(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page9")
AddConversationOption(conversation, "Previous Page","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "While Qeynos is now your home, you will likely travel beyond the city limits many times in your life.  As you travel, you will doubtless encounter folks who are trying to rebuild their lives as well as those whose needs are more commercial.  These goals are not mutually exclusive, as strong enterprise can mean work for the displaced.  Please feel free to assist representatives of the Far Seas Trading Company as they are a large local employer.")
end

function Page9(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page [WORK IN PROGRESS]","")
AddConversationOption(conversation, "Previous Page","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Qeynos is proud of its diversity.  Our reasons to move here are varied, but we must never forget our heritage.  Rumors surface that items important to the history of Norrath are found throughout the world.  You could always check with Hwal Rucksif inside the Keep of the Ardent Needle in Antonica for updates as he seems to get a fair amount of foot traffic.")
end

function Page10(Item, Player)
if not HasQuest(Player,5766) and not HasCompletedQuest(Player,5766)then
    OfferQuest(Item,Player,5766)
elseif GetQuestStep(Player,5766) ==8 then    
AddConversationOption(conversation, "Next Page","Page11")
end
AddConversationOption(conversation, "Previous Page","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Training in your chosen life's path enables you to help others to the best of your abilities by giving you a focus.  Fighters should speak with Master-at-Arms Dagorel in South Qeynos.  Mages, you will learn much with Magister Niksel, also in South Qeynos.  Priests should seek the counsel of Hierophant Aldalad in North Qeynos.  Scouts, seek Vemerik the Counselor in Qeynos North.  Train hard, act wisely and help your neighbors.")
end

function Page11(Item, Player)
SetStepComplete(Player,5766,8)    
AddConversationOption(conversation, "Previous Page","Page10")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Though we have come through some dark times, we cannot dwell upon the past.  In the Age of Destiny, every day is a gift and how we use that gift determines our personal destiny.  Compassion, honor and loyalty are ever the standard by which we should live our lives, no matter what challenges may come.")
end

