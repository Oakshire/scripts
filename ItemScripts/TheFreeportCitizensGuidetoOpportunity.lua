--[[
    Script Name    : ItemScripts/TheFreeportCitizensGuidetoOpportunity.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.26 02:06:12
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Now that you are a citizen of Freeport, you will want to do your part to bring glory to the Overlord. There are many ways to gain prestige and earn coin. As you grow and learn, your efforts will reflect on our city. Journey through Norrath and know that your efforts will inspire our foes to reconsider their allegiance. Might is not only demonstrated by the sword, but by knowing what can be used to our benefit.")
end

function Page1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Collections\n\nOn your journeys you may encounter items which are part of a larger series. You can collect these items as you travel, inspecting them to determine whether they are worthy of retention. You will find this hobby quite rewarding as you learn to identify different animals and their parts.")
end

function Page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page3")
AddConversationOption(conversation, "Previous Page","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Once you have completed a collection, you should present them to Renny Parvat in East Freeport. He will offer rewards for your completed collections. And should you complete an entire series of collectable items, you may receive something special for your home as well. Go, then, and investigate the wilds to find the rewards beneath your feet.")
end

function Page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page4")
AddConversationOption(conversation, "Previous Page","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Exploration\n\nFreeport's history is filled with the greatest explorers of all times. Now that you belong to the Overlord, your finds will add to his glory throughout Norrath. You may have already identified key features throughout the city, such as the Fountain of the Fallen Soldier in the Scale Yard. You are strongly urged to take this moment to look upon the ExecutionPlaza in West Freeport. Go, now.")
end

function Page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page5")
AddConversationOption(conversation, "Previous Page","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "As you explore lands new to you, remember that you represent Freeport and the Overlord. He will not be well-served if you are unable to put the glory of our city before your own insignificant life. Therefore, go without fear through the lands. Should you see something interesting, investigate it more closely that you may learn more about it for your sake.")
end

function Page5(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page6")
AddConversationOption(conversation, "Previous Page","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Literature\n\nThe Overlord is proud of the high literacy rate among Freeport's citizens and he strongly encourages those who do not read to learn immediately. To this end, he has graciously allowed Sage Navarius Orvalis to set up shop in North Freeport, even though many of the tomes he sells are incomplete. Despite their lack of pages, Sage Orvalis's tomes are fascinating.")
end

function Page6(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page7")
AddConversationOption(conversation, "Previous Page","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "By purchasing a tome such as \"Bird Watching: The Do's and Don'ts of Nektulos Forest,\" you will explore Norrath and gain new insight into its creatures, history and the folk who inhabit our world.\n\nYou can also gain new skills by completing any of the Mastery tomes available.\n\nIndeed, you are very strongly urged by the Overlord to take advantage of the Sage's stock and to also read any tomes you find while in the wilds.")
end

function Page7(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page8")
AddConversationOption(conversation, "Previous Page","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Lost and Found\n\nAn active mind is an active soldier for Freeport. While you are going about your work for the glory of the Overlord, you must always carefully observe your surroundings. Is anything out of place? Is there an unusual object jutting up through the ground? Investigate these things, for they may provide clues to activities with which you will want to concern yourself.")
end

function Page8(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page9")
AddConversationOption(conversation, "Previous Page","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Many unusual items you will find in your travels hold the keys to mysteries in which the Overlord is interested. It would behoove you to find these items and complete any task necessary to determine their exact nature. This way, if the Overlord should summon you into his Presence Chamber, you will be able to explain exactly what you know and how you came to learn these things.")
end

function Page9(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page10")
AddConversationOption(conversation, "Previous Page","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Adventure\n\nOne of the hallmarks of a citizen of Freeport is his willingness to take on tasks to further the reputation of the Overlord. Freeport has long been a center of commerce throughout Norrath. Look to assist the Far Seas Trading Company's taskmasters where you find them. Strengthening our ties to commerce strengthens our economy as a whole.")
end

function Page10(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Next Page","Page11")
AddConversationOption(conversation, "Previous Page","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Now that you are a citizen of Freeport, you will want to do your part to bring glory to the Overlord. There are many ways to gain prestige and earn coin. As you grow and learn, your efforts will reflect on our city. Journey through Norrath and know that your efforts will inspire our foes to reconsider their allegiance.\n\nMight is not only demonstrated by the sword, but by knowing what can be used to our benefit.")
end

function Page11(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Final Page","Page12")
AddConversationOption(conversation, "Previous Page","Page10")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Heritage\n\nThroughout Norrath's history, there are certain items which seem to offer their owners greater protections or abilities. The Overlord is interested in these items and therefore, so must you be. Use your keen observation skills to identify those items, such as the greater lightstones.\n\nLearn how to obtain these things and you will please the Overlord.")
end

function Page12(Item, Player)
if CanReceiveQuest(Player,5865) then
    OfferQuest(Item,Player,5865)
elseif GetQuestStep(Player,5865) ==8 then    
AddConversationOption(conversation, "Final Page","Page13")
end
endconversation = CreateConversation()
AddConversationOption(conversation, "Previous Page","Page10")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Making Yourself Useful\n\nThe Overlord requires that all citizens be of some use to the city by advancing their training in their current adventuring profession. We will not have deadbeats and mendicants within the walls of Freeport.\n\nFighters report to Commandant Tychus in the Temple of War.\n\nPriests report to Priest Kelian, also within the Temple of War.\n\nMages are to speak with Arcanist Sonius within the Academy of Arcane Sciences.\n\nScouts are to seek out Emissary Millia, she can be found operating out of the Jade Tiger Inn.\n\nThese locations are all found within the North Freeport section of the city. The prosperity of Freeport will be achieved through blood and sweat! -- Grand Duke Hazran")
end

function Page13(Item, Player)
SetStepComplete(Player,5865,8)    
conversation = CreateConversation()
AddConversationOption(conversation, "Previous Page","Page10")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This book is only a guide to what you will be expected to look for and achieve on the Overlord's behalf. Do not waste your time by lazing about. The Age of Destiny is upon us and only those who act quickly will reap the benefits that the world offers.")
end
