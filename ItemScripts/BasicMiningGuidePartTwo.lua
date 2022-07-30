--[[
    Script Name    : ItemScripts/BasicMiningGuidePartTwo.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.27 05:07:56
    Script Purpose : 
                   : 
--]]

local  SabertoothMinersGuidePartTwo = 5706

function examined(Item, Player)
if not HasQuest(Player, SabertoothMinersGuidePartTwo) and not HasCompletedQuest(Player, SabertoothMinersGuidePartTwo) then
OfferQuest(nil, Player, SabertoothMinersGuidePartTwo)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One", "EntryOne")
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This is the second part of the Sabertooth gnoll's mining history, covering their history after Blackburrow was invaded by the Horde.")
end
   end

function EntryOne(Item, Player)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 1) then
AddConversationOption(conversation, "Entry Two", "EntryTwo")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Great Sage had said, \"Dark times mean there's not enough light.\"  He was right.  They came up from beneath us, surprising us within our own mines.  We fled to deeper tunnels only to find them overrun by the furless as well.  They attacked our young pups.  They ate our stores of food.  We howled with rage and our voices echoed, but still the furless came.")
end

function EntryTwo(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 2)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 3) then
AddConversationOption(conversation, "Entry Three", "EntryThree")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "They said at first they were just passing through.  Most of them did, going on to battle the furless of the walled cities.  But many more came and stayed.  There were many of them.  They offered to remove us from our mines and we refused.  First, they started attacking our miners.  Later, we decided to let them stay if we had our pickings from the battlefields.  They agreed.")
end

function EntryThree(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 4)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 5) then
AddConversationOption(conversation, "Entry Four", "EntryFour")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Around this time, we picked up some of their words.  Not many, only a few.  Handy for knowing their secrets.  They had already taken the furless north.  They were going to take the furless south, too.  Our tunnels and mines would be famous!  We wished it were famous because of us.  Then we remembered the words of the Great Sage, \"Famous is as famous does.\"  We have no idea what that means.  It comforted us.")
end

function EntryFour(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 6)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 7) then
AddConversationOption(conversation, "Entry Five", "EntryFive")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "For many years the furless trooped through the Blackburrow.  They ate all our stores.  They stole what ore we had produced.  Then, suddenly as they appeared, they retreated.  Some of our best scouts reported that something bad had happened on the battlefield.  The bodies of furless were piled high.  Their faces were twisted in pain.  Maybe it was something they ate.")
end


function EntryFive(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 8)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 9) then
AddConversationOption(conversation, "Entry Six", "EntrySix")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "After that time, the Clan rebuilt some of the deepest tunnels.  We closed off some of our secret entrances.  They weren't as secret as we'd thought.  Some of the tunnels were so wide across it took years to close them off.  We could have saved the effort if we'd known what would be coming within a generation or so.")
end


function EntrySix(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 10)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 11) then
AddConversationOption(conversation, "Entry Seven", "EntrySeven")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The shaking woke everyone up.  Big stones fell in the mines.  Some miners were killed.  Some lost their tails.  We left the lowest tunnels.  Many tunnels filled with water.  When the water would drain away, the walls fell in.  Many of the excavators grumbled about the wasted work below.  Sometimes, whole tunnels collapsed on themselves.  It was an uneasy time.")
end

function EntrySeven(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 12)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 13) then
AddConversationOption(conversation, "Entry Eight", "EntryEight")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The furless called this time \"the Rending,\" and were afraid.  The Clan wasn't afraid.  We were disappointed.  All our work to close off the lowest tunnels was already done.  The Clan is clever.  If we'd known, we'd have saved our strength for other things.  Since we no longer needed to block old entries, we cleaned up the upper levels.  The furless came to us, begging for shelter.  We put them in the storerooms till we needed them.")
end

function EntryEight(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 14)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 15) then
AddConversationOption(conversation, "Entry Nine", "EntryNine")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Things were quiet for generations.  Then the moon, the new one, broke up in the sky.  The furless fell to the ground, begging for help from their gods.  The Clan was not afraid.  We have the words of the Great Sage to guide us.  He had said, \"Dig deep,\" so we did.  Some of the Clan had forgot that the lowest tunnels were gone.  We never saw them again.")
end

function EntryNine(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 16)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartTwo, 17) then
AddConversationOption(conversation, "Entry Ten", "EntryTen")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Lucky for us, we have an underground home.  The surface was hit by big rocks.  A lot of things died.  We were safe in the Blackburrow.  Some of the old tunnels are filled with spiders.  Big spiders.  We mine the other levels.  Some went down to clear out the spiders.  They got stuck in the webs.  These are big spiders.")
end

function EntryTen(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartTwo, 18)
end
