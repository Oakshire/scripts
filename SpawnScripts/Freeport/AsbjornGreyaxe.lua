--[[
    Script Name    : SpawnScripts/Freeport/AsbjornGreyaxe.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.20 07:07:09
    Script Purpose : 
                   : 
--]]

local TheHiddenNewHalasian = 578

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn, TheHiddenNewHalasian) == 4 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "asbjorn_greyaxe/freeport_combined/quest/racial/barbarian/asbjorn_greyaxe_001.mp3", "", "", 3279743071, 361114308, Spawn)
    AddConversationOption(conversation, "Don't you mean meat pies and strong ale?", "dlg1")
    StartConversation(conversation, NPC, Spawn, "You've come to the right spot... for strong pies and meat ale, my northern cousin.")
    else
    PlayFlavor(NPC, "", "Take my advice, drink the hard stuff.  That way you'll get sick from the drink, not the filthy stein they serve it in.", "", 1689589577, 4560189, Spawn)
end
   end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "asbjorn_greyaxe/freeport_combined/quest/racial/barbarian/asbjorn_greyaxe_002.mp3", "", "", 3935464437, 2216667688, Spawn)
  AddConversationOption(conversation, "Ah, you've drank a few of those strong ales yourself.", "dlg2")
  StartConversation(conversation, NPC, Spawn, "Do I?  Well, you've come to the spot right then!")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation() 
 PlayFlavor(NPC, "asbjorn_greyaxe/freeport_combined/quest/racial/barbarian/asbjorn_greyaxe_003.mp3", "", "", 3544364809, 2029412270, Spawn)
 AddConversationOption(conversation, "You worship The Tribunal?", "dlg3")
 StartConversation(conversation, NPC, Spawn, "The Tribunal says... Guilty!  Hehehe!  Good thing they have no problem with such vices, right?  Of course, some hangovers feel as if The Seventh Hammer is bangin' on my head.  Not pretty.")
end

function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation() 
 PlayFlavor(NPC, "asbjorn_greyaxe/freeport_combined/quest/racial/barbarian/asbjorn_greyaxe_004.mp3", "", "", 2835759691, 2598023134, Spawn)
 AddConversationOption(conversation, "What do you think of New Halas?", "dlg4")
 StartConversation(conversation, NPC, Spawn, "That I do!  You can't get any more neutral than the Eternal Court where actions are weighed and consequences are decided.")
end


function dlg4(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, TheHiddenNewHalasian, 4)
 conversation = CreateConversation() 
 PlayFlavor(NPC, "asbjorn_greyaxe/freeport_combined/quest/racial/barbarian/asbjorn_greyaxe_005.mp3", "", "", 1175596969, 2507697102, Spawn)
 AddConversationOption(conversation, "Fair enough!")
 StartConversation(conversation, NPC, Spawn, "Pbbbbt!  You can call a pup a wolf, but it don't make it one!  ''New Halas'' - that pathetic ice cube is not Halas, nor will it be.  Halas was a city of great strength and vigor, much like Freeport.  Here is my home.")
end




function respawn(NPC)

end

