--[[
    Script Name    : ItemScripts/TheTrialsofSirMorgan.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 08:07:18
    Script Purpose : 
                   : 
--]]

local TheTrialsOfSirMorgan = 5330

function examined(Item, Player)
    
conversation = CreateConversation()
AddConversationOption(conversation, "Read the book.", "PAGE1")
AddConversationOption(conversation, "Leave the book closed.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This book is of an ornate Old Antonican design. A crest appears on the cover depicting images of a sword, a long mountain trail, a storm cloud and a bridge made of titanic timbers. There is a title, \"The Trials of Sir Morgan.\"")
end

function PAGE1(Item, Player)
    
    conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE2")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Once, many quatrains ago, there lived a brave knight named Sir Morgan. Mighty was his blade and fearless was his soul. Along with his noble friend and squire they traveled the wilds of Old Antonica, defending the helpless and defeating the evil.")
end

function PAGE2(Item, Player)
    
    conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE3")
    AddConversationOption(conversation, "Previous page.", "PAGE1")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "One day the gods of valor spoke to noble Sir Morgan and told him to go to the great and stormy plains of the Storm Lord, Karana. There, in the vastness of green and wind, travelers were being assaulted by giantkin and gnollkin. Many brave knights fell to the evil in the plains, but Sir Morgan rode to the rescue.")
end

function PAGE3(Item, Player)
    
    conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE4")
    AddConversationOption(conversation, "Previous page.", "PAGE2")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Sir Morgan and his faithful squire set foot near the edge of a mighty bridge of timber that only the giants could have built. There at the bridge Sir Morgan repelled wave after wave of evil, making the roads safe for travelers. His reputation grew and the residents of Karana came to love him and hold celebrations in his name.")
end

function PAGE4(Item, Player)
    
    conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE5")
    AddConversationOption(conversation, "Previous page.", "PAGE3")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "But the seeds of evil were planted. Gods of hatred and envy whispered to his foes and the brave and mighty Sir Morgan was soon to stand alone. The faithful squire was kidnapped and taken away from Sir Morgan. The humble servant of the brave knight was nowhere to be seen. In the squire's tent all that remained was a note written in blood.")
end

function PAGE5(Item, Player)
    
    conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE6")
    AddConversationOption(conversation, "Previous page.", "PAGE4")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The note was addressed to Sir Morgan and it was a challenge to him. \"Defeat each of the trials and you shall see your squire alive again.\" Sir Morgan spared no time. His faithful squire was in need of rescue. With exquisite armor donned and the greatest blade in hand, Sir Morgan set foot towards the trials ahead.")
end

function PAGE6(Item, Player)
       conversation = CreateConversation()
    if not HasQuest(Player, TheTrialsOfSirMorgan) and not HasCompletedQuest(Player, TheTrialsOfSirMorgan) then
    OfferQuest(nil, Player, TheTrialsOfSirMorgan)
    elseif GetQuestStep(Player, TheTrialsOfSirMorgan) == 2 then
    AddConversationOption(conversation, "Next page.", "PAGE7")
    end
    AddConversationOption(conversation, "Previous page.", "PAGE5")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Sir Morgan raced to meet his first challenge at the Fields of the Corrupted, home of farmers in league with the coalition of evil that wished for the knight's demise. There, amidst the field, he arrived knowing full well that no pitchfork could dare challenge the strength of his armor, but upon arrival his true challenge lumbered forth- scarecrows! One after another the ten effigies fell to his blade. Sticks and hay were no match for him. He then rode to his next challenge.")
end

function PAGE7(Item, Player)
        conversation = CreateConversation()
    SetStepComplete(Player,  TheTrialsOfSirMorgan, 2)
    if GetQuestStep(Player, TheTrialsOfSirMorgan) == 4 then
    AddConversationOption(conversation, "Next page.", "PAGE8")
    end
    AddConversationOption(conversation, "Previous page.", "PAGE6")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "On thundering hooves Sir Morgan rode, racing onward to the ancient pyramid and evil uncertain. Having to dismount from his steed, the knight was faced with an obstacle unbecoming, the pyramid had slipped into the sea. A beguiling sextet called to him in hopes of leading him to the Hold of Prexus. Grabbing soft clay from the shoreline the knight filled his ears. He removed his armor and fearlessly swam into battle. Yet again, against odds meant to cause him defeat, Sir Morgan was victorious. And on he rode.")
end



function PAGE8(Item, Player)
    conversation = CreateConversation()
       if not QuestStepIsComplete(Player,  TheTrialsOfSirMorgan, 4) then
    SetStepComplete(Player,  TheTrialsOfSirMorgan, 4)
    end
    if GetQuestStep(Player, TheTrialsOfSirMorgan) == 8 then
    AddConversationOption(conversation, "Next page.", "PAGE9")
    end
    AddConversationOption(conversation, "Previous page.", "PAGE7")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Sir Morgan rode across the south bridge spanning the Plaincutter River when he found himself trapped by his next trial. There, on either side, were Bloodsaber knights, worshipers of death and decay. The commander and his platoon marched forward, weapons drawn. In a flurry and charge Sir Morgan began to dispatch of the evil knights, tossing them into the unyielding grasp of the river below. Surely such vile men shall rise again as a horde of revenants, but not this day. He won this battle, but with each battle his strength dwindled. Still, onward he rode.")
end


function PAGE9(Item, Player)
        conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE10")
    AddConversationOption(conversation, "Previous page.", "PAGE8")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "When the brave Sir Morgan arrived at Deadview Pass the ground began to quake. He was met by hill giants whose rumble arrived before their gaze. Trapped with the Plaincutter to his back he was forced to charge upon his steed. Galloping around and around the gallant knight caused the giants to lose their balance, many fell into the river never to rise. With but one to go he was tossed from his saddle by a club made of whole timber. Lumbering closer and closer came the last giant surely to crush the disoriented knight.")
end


function PAGE10(Item, Player)
        conversation = CreateConversation()
           if not QuestStepIsComplete(Player,  TheTrialsOfSirMorgan, 8) then
    SetStepComplete(Player,  TheTrialsOfSirMorgan, 8)
    end
    if GetQuestStep(Player, TheTrialsOfSirMorgan) == 10 then
    AddConversationOption(conversation, "Next page.", "PAGE11")
    end
    AddConversationOption(conversation, "Previous page.", "PAGE9")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Doom was upon him, he could not gain his ground. Just when all hope seemed for naught his noble steed charged forward with great speed and great might. The steed pounced upon the barrel chested giant and forced him into the river, but the steed too fell to the water. The great steed gave his life for the valorous knight. With his spirit nearly crushed and a long march ahead, the knight put one foot in front of the other going forward to the final trial.")
end

function PAGE11(Item, Player)
        conversation = CreateConversation()
    AddConversationOption(conversation, "Next page.", "PAGE12")
    AddConversationOption(conversation, "Previous page.", "PAGE10")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "In a field of ancient ruins Sir Morgan arrived. The stench of undeath permeated the rubble. Here he stepped trampling upon toppled stone and crushed bones. This was once the place of ancient magic, the ruins of the Keep of Immortality -- all that is left of the evil mage, Varsoon. The silence was broken when a figure arose and called forth familiars of two. The arcane creatures ripped and tore at even metal armor. Sir Morgan fought on despite his dwindling strength.")
end


function PAGE12(Item, Player)
       if not QuestStepIsComplete(Player,  TheTrialsOfSirMorgan, 10) then
    SetStepComplete(Player,  TheTrialsOfSirMorgan, 10)
    end
     conversation = CreateConversation()
     if GetQuestStep(Player, TheTrialsOfSirMorgan) == 12 then
    AddConversationOption(conversation, "Next page.", "PAGE13")
    end
    AddConversationOption(conversation, "Previous page.", "PAGE11")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "As all seemed to get dark a ray of blessing beamed down upon the knight. The gaze of the Twin Deities gave him great might. Sir Morgan arose from near death and slew the familiars with ease. He spied the dark shadow that let them loose darting to the hills. He gave chase.")
end


function PAGE13(Item, Player)
      conversation = CreateConversation()
     if not QuestStepIsComplete(Player,  TheTrialsOfSirMorgan, 12) then
    SetStepComplete(Player,  TheTrialsOfSirMorgan, 12)
    end
    if GetQuestStep(Player, TheTrialsOfSirMorgan) == 14 then
    AddConversationOption(conversation, "Next page.", "PAGE14")
    end
    AddConversationOption(conversation, "Previous page.", "PAGE12")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "His chase was long and his prey would not tire. When it seemed as though the chase would never end it began to slow. The figure of evil stepped foot upon a mound surrounded by titanic thorns, like talons or a great maw rising from the ground. The shadowy figure stood quiet and waited for Sir Morgan and the final battle.")
end

function PAGE14(Item, Player)
     conversation = CreateConversation()
      AddConversationOption(conversation, "Next page.", "PAGE15")
    AddConversationOption(conversation, "Previous page.", "PAGE13")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "To great shock the evil behind the trials removed the veil of secrecy. The light of dusk gave way his features. It was Squire Wimbley, his faithful servant. \"Why?\" the knight asked. \"I tire of being the servant\", Wimbley said with an evil bellow. \"Now I see the truth of your arrogance and selfish ways. I wish to be the hero, but I cannot be the hero until Sir Morgan dies!\" The squire was not himself.")
end


function PAGE15(Item, Player)
     conversation = CreateConversation()
    if not QuestStepIsComplete(Player,  TheTrialsOfSirMorgan, 14) then
    SetStepComplete(Player,  TheTrialsOfSirMorgan, 14)
    end
    AddConversationOption(conversation, "Previous page.", "PAGE14")
    AddConversationOption(conversation, "Close the book.", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "Unknown to the knight, the squire was possessed by the evil of an ancient amulet he procured from the remnants of a place called the Keep of Immortality. The powers of envy and hate slowly overtook him. It lead to this battle to the death. The brave knight tried to suppress the advances of his once faithful squire. He did not want to harm him, but he was forced to or his own life would have been taken. Squire Wimbley fell to his blade. Sir Morgan freed the squire from his madness and all was well once again.")
end

