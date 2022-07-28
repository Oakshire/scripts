--[[
    Script Name    : ItemScripts/BasicMiningGuidePartOne.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.27 03:07:27
    Script Purpose : 
                   : 
--]]

local BasicMinersGuidePartOne = 5705

function examined(Item, Player)
if not HasQuest(Player, BasicMinersGuidePartOne) and not HasCompletedQuest(Player, BasicMinersGuidePartOne) then
OfferQuest(nil, Player, BasicMinersGuidePartOne)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One", "EntryOne")
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The mining way is the way of the future.  It is also the way of the past.  Come, pups, I will tell you why the Sabertooth gnolls are famous for mining!  You will learn much.")
   end

function EntryOne(Item, Player)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 1) then
AddConversationOption(conversation, "Entry Two", "EntryTwo")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "It is dark.  In the mines we work by the light of our lamps.   We must dig for ore.  Ore can be sold.  Ore can be made into things.  Therefore, we mine.  Gnolls, the Sabertooth gnolls, have a keen sense of smell.  We smell the ore beneath the earth, behind the rocks and underground.  That led us to Blackburrow many, many years ago.")
end

function EntryTwo(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 2)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 3) then
AddConversationOption(conversation, "Entry Three", "EntryThree")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Unlike the trotters, we Sabertooth gnolls are clever.  We found something precious and we stay with it.  Before mining, we preyed on what caught our fancy.  Then we were enlightened and some of us turned to mining to support our Clan.  For it was told to us by the Great Sage, \"The furless light their darkness and we can be their light!\"")
end

function EntryThree(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 4)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 5) then
AddConversationOption(conversation, "Entry Four", "EntryFour")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Great Sage was not a miner.  He knew the language of the furless and taught it to us.  He taught us many things he learned in his travels.  Not a trotter, no!  He went among them to learn their ways and teach us so that we would be strong.  Our mines we had, but mostly kept them because even if we did not use them, we did not want anyone else to use them.")
end

function EntryFour(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 6)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 7) then
AddConversationOption(conversation, "Entry Five", "EntryFive")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "We learned what rocks would sell to the furless.  Sometimes they would try to remove the Clan by force, but we would chase them from the lowest caverns to the entrance.  They were trained to run swiftly away through the many tunnels.  We chased them for sport.  We chased them to keep them away from our mines.  They never learned.")
end

function EntryFive(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 8)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 9) then
AddConversationOption(conversation, "Entry Six", "EntrySix")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The furless fought each other, which was good for the Clan.  If they fought each other, they would not bother us.  We worked in the dark in our mines, our paws flowing with ore.  While the furless fought, we kept to ourselves.  The Clan is not interested in the wars of those who do not believe in the Great Sage.")
end


function EntrySix(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 10)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 11) then
AddConversationOption(conversation, "Entry Seven", "EntrySeven")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Now, a word about mining itself, pups.  To mine successfully, get a pick.  A pick has a sharp, pointed end like a fang.  You swing this at the stones hiding the ore.  Swing, swing again.  The stones crumble and are pulled away.  The ore shows.  Then the miners bring carts that are rolled from the depths full of ore.  That is the basic mining principle. Now back to our history.")
end

function EntrySeven(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 12)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 13) then
AddConversationOption(conversation, "Entry Eight", "EntryEight")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "We mined into the depths, we used the mining ways of old.  Remove stone, find ore.  Remove ore.  For generations, we mined the Blackburrow.  In some of the hollows, we kept our mates and offspring.  In some of the hollows, we stored our food.  Through the years the furless fought, we kept our ways.")
end

function EntryEight(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 14)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 15) then
AddConversationOption(conversation, "Entry Nine", "EntryNine")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "But the furless were not content with fighting each other.  No! They brought their wars to the Clan.  Not interested in our ore, but our tunnels.  The tunnels! Worthless to any but the gnoll who can see fine in the dark.  They came in anyway, forcing us from our hollows.  They were huge and green and fur would not improve their looks.")
end

function EntryNine(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 16)
conversation = CreateConversation()
if QuestStepIsComplete(Player, BasicMinersGuidePartOne, 17) then
AddConversationOption(conversation, "Entry Ten", "EntryTen")
end
AddConversationOption(conversation, "Put book away", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Clan is clever.  We let them think we gave way before them.  But we had other, secret ways beneath the Blackburrow.  Some of the furless found them.  They used our secret, sacred tunnels to gather their strength.  They ate our stores of food.  They drove away the weak.  Curse them, in our secret places!")
end

function EntryTen(Item, Player)
SetStepComplete(Player, BasicMinersGuidePartOne, 18)
end
