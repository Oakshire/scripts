--[[
    Script Name    : ItemScripts/TheGreatFloodofBlackburrow.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.22 05:07:31
    Script Purpose : 
                   : 
--]]
local TheGreatFlood = 5689

function examined(Item, Player)
if not HasQuest(Player, TheGreatFlood) and not HasCompletedQuest(Player, TheGreatFlood) then
OfferQuest(nil, Player, TheGreatFlood)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One", "EntryOne")
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "While the pages of this book appear blank at first glance, there is actually faint writing on each of the existing pages.  They are the observations of someone who was trapped in Blackburrow when the waters rose to fill the lower tunnels.")
end

function EntryOne(Item, Player)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 1) then
AddConversationOption(conversation, "Entry Two", "EntryTwo")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The route through the Blackburrow of the gnolls from Everfrost is dark, twisting and deep.  I have quite often gotten lost as I do not use any source of light.  That would reveal my presence to the cursed gnolls.  My business is my own, taking me through these dark passages every fortnight.")
end

function EntryTwo(Item, Player)
SetStepComplete(Player, TheGreatFlood, 2)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 3) then
AddConversationOption(conversation, "Entry Three", "EntryThree")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "My home is Halas of the North.  My business takes me to Qeynos Hills and for that reason alone, I must suffer the trek through the stench of the gnoll pits.  Sometimes I will send ahead my pet wolf Silkie to find sport in the darkness.  She enjoys the exercise, for the gnolls cannot outrun her.  I can follow their cries and need not use any of the dark methods I have learned to see in the dark.")
end

function EntryThree(Item, Player)
SetStepComplete(Player, TheGreatFlood, 4)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 5) then
AddConversationOption(conversation, "Entry Four", "EntryFour")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "On this journey, Silkie and I found the snows melting by day and freezing at night.  Daggers of ice hung from the rocky outcroppings, sometimes breaking off and shattering on the ground below with a loud crack.  Her tail between her legs, her ears darting back and forth, Silkie panted and paced, uneasy.  Her troubled behavior made me uneasy as well.")
end


function EntryFour(Item, Player)
SetStepComplete(Player, TheGreatFlood, 6)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 7) then
AddConversationOption(conversation, "Entry Five", "EntryFive")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "At the entrance to the tunnels, we found the gnoll guards had abandoned their posts, leaving behind nothing but the cold embers of their watch fires.  There used to be snow at this level, but there was not.  The ground was moist with melting snow.  Silkie refused to enter the tunnel until I threatened her.  Then she scuttled ahead sideways, like a crab, trying to see both ahead of us and behind.")
end


function EntryFive(Item, Player)
SetStepComplete(Player, TheGreatFlood, 8)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 9) then
AddConversationOption(conversation, "Entry Six", "EntrySix")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Down we went on our usual route, encountering nothing.  The tunnels were silent, but for the constant drip-drip-drip of water in the dark.  As we emerged from one narrow tunnel into a wider space, Silkie whimpered and whined, her misery echoing around the chamber.  \"Be still!\"  I commanded her.  She fell silent and I was aware that the entire world had gone silent as well.")
end

function EntrySix(Item, Player)
SetStepComplete(Player, TheGreatFlood, 10)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 11) then
AddConversationOption(conversation, "Entry Seven", "EntrySeven")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Suddenly came a large rending sound that shook the marrow of the mountains and threw me and Silkie to the ground.  She scrambled to her feet and ran howling away through the darkness.  I lay pressed against the rocky ground, hugging it as though I could stop its convulsions.  Finally, it grew still.  \"Silkie!\" I called into the silence.  She did not answer.")
end

function EntrySeven(Item, Player)
SetStepComplete(Player, TheGreatFlood, 12)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 13) then
AddConversationOption(conversation, "Entry Eight", "EntryEight")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "No, Silkie did not come at my call, though I could still hear her terrified, high-pitched whimper echoing.  Then she fell silent and I heard something else -- a roar that I have never heard in those tunnels before.  It reminded me of the scream the snow makes as it tumbles down a mountainside on a sleigh of ice.  A roar covered in velvet.")
end

function EntryEight(Item, Player)
SetStepComplete(Player, TheGreatFlood, 14)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 15) then
AddConversationOption(conversation, "Entry Nine", "EntryNine")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "I too scrambled to my feet, but with the unseen roar echoing through the chamber, could not know which way to turn.  I began my enchantment, though my teeth chattered.  A heavy wind rushed into the chamber, bringing with it the smell of generations of foul gnolls from somewhere deep in the Blackburrow.  It broke my concentration and my spell dissipated before I could cast.")
end

function EntryNine(Item, Player)
SetStepComplete(Player, TheGreatFlood, 16)
conversation = CreateConversation()
if QuestStepIsComplete(Player, TheGreatFlood, 17) then
AddConversationOption(conversation, "Entry Ten", "EntryTen")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "And then the water surrounded me.  It tumbled me over and over like a pebble on the sea shore.  I could not tell what was skyward and which way led to death in its depths.  The waters rushed onward, as frantic as I to find an outlet.  After an eternity, the waters threw me onto an unseen ledge near the roof of the cavern before swirling away.")
end

function EntryTen(Item, Player)
SetStepComplete(Player, TheGreatFlood, 18)
conversation = CreateConversation()
AddConversationOption(conversation, "Close Book.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Though I lay on the ledge for days, the water did not drain.  I was finally able to cast my light-giving spell and saw the ruin of the cavern below.  My thoughts lay on my certain death and I was bitter and angry to die like a gnoll and not with honor in battle.  I would not die unsung.  You who read this, know that the world was shaken and I survived.  For a little while.")
end
