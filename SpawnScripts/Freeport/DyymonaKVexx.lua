--[[
    Script Name    : SpawnScripts/Freeport/DyymonaKVexx.lua
    Script Author  : premierio015
    Script Date    : 2020.06.07 01:06:08
    Script Purpose : Offer Dark Elf Racial Questlines
                   : 
--]]

QUEST1 = 566

function spawn(NPC)
ProvidesQuest(NPC, QUEST1)
end

function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        if GetRace(Spawn) == 1 then
        if not HasQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST1) then
	AddConversationOption(conversation, "Are those the only choices?", "Option1")
	AddConversationOption(conversation, "The Overlord.", "Option2")
	AddConversationOption(conversation, "Queen Cristanos.", "Option2")
	AddConversationOption(conversation, "Talvus Thex.", "Talvus")
	StartConversation(conversation, NPC, Spawn, "I greet you, fellow child of Hate.  But this is where our conversation must end, without knowledge of your allegiance.  Do you bend your knee to Queen Cristanos, The Overlord, or Talvus Thex?")
        elseif GetQuestStep(Spawn, QUEST1) == 1 and GetQuestStep(Spawn, QUEST1) == 2 then
        PlayFlavor(NPC, "", "I was blessed with hate and cunning, not patience.  You have agreed to kill Thexians and obtain Arasai zealot torture instruments in Longshadow Alley.  Now, do it.", "", 1689589577, 4560189, Spawn)
        elseif GetQuestStep(Spawn, QUEST1) == 3 then
        Option5(NPC, Spawn)
        elseif not HasQuest(Spawn, QUEST2) and HasCompletedQuest(Spawn, QUEST1) then
        Option8(NPC, Spawn)
        end
end
    end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
             AddConversationOption(conversation, "Queen Cristanos.", "Option2")
              AddConversationOption(conversation, "The Overlord.", "Option2")
               AddConversationOption(conversation, "Talvus Thex.", "Talvus")
	AddConversationOption(conversation, "None of your concern.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "The only ones that influence this conversation, yes.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, actually, I am.", "Option3")
                AddConversationOption(conversation, "No, I am not.", "Knowledge")
	StartConversation(conversation, NPC, Spawn, "Delicious.  Let us continue then.  Are you aware of the situation in Longshadow Alley?")
end

function Knowledge(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_004.mp3", "", "", 1720881107, 1177602499, Spawn)
	AddConversationOption(conversation, "Until?", "Knowledge2")
        StartConversation(conversation, NPC, Spawn, "Allow me to provide you with the knowledge, "..GetName(Spawn).." Longshadow Alley, the slum that our dear Overlord saw fit to designate for us Teir'Dal, became a hotbed of Thexians, particulary during the years of Neriak's selusion.")
end
function Knowledge2(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_005.mp3", "", "", 1685256981, 4197957080, Spawn)
        AddConversationOption(conversation, "The Overlord would never stand for that.", "Knowledge3")
        StartConversation(conversation, NPC, Spawn, "Until they proved to be a nuisance that could no longer be dismissed.  During The Overlord's unfortunate absence, the Would-Be-Prince Talvus Thex came out of hiding and led his delusional caste of Thexians in a bid for the throne of Freeport.")
end

function Knowledge3(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_006.mp3", "", "", 3377812319, 220561527, Spawn)
         AddConversationOption(conversation, "But not all of them?", "Knowledge4")
         StartConversation(conversation, NPC, Spawn, "That is an understatement.  They were depending on his death.  Thankfully, that was not to be the situation.  The Overlord returned victorious and immediately reestablished order.  The Would-Be-Prince and the majority of his followers fled the city, choosing to cower within caves in Darklight Woods.")
end

function Knowledge4(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_007.mp3", "", "", 1471843234, 2678928120, Spawn)
        AddConversationOption(conversation, "Which is why you asked about my allegiance?", " Knowledge5")
        StartConversation(conversation, NPC, Spawn, "No.  Those that were apprehended were first forced to labor, making vast improvements to the city of Freeport.  Now that the construction is complete, they are being put to death.  But there are still more Thexians hiding about.")
end


function Knowledge5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_008.mp3", "", "", 1466260974, 1982510737, Spawn)
        AddConversationOption(conversation, "How can we do this, when they hide amongst us?", "Knowledge6")
        StartConversation(conversation, NPC, Spawn, "Precisely.  They have long proved difficult to identify and remove due to their ability to hide amongst us loyal Teir'Dal.  They are a threat and must be cut out!")
end


function Knowledge6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
   local conversation = CreateConversation()
    PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_009.mp3", "", "", 3175038054, 3023396310, Spawn)
    AddConversationOption(conversation, "I am a true Teir'Dal and superior child of Hate!", "Option4")
    AddConversationOption(conversation, "Flattery will get you nowhere.  Farewell.")
    StartConversation(conversation, NPC, Spawn, "With an uncaring amount of error.  It is more important that we remove the Thexian disease from within Longshadow Alley.  I believe that you are the perfect Teir'Dal for this job, or are you not the superior child of Hate that you appear to be?")
end



function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am a true Teir'Dal and superior child of Hate!", "Option4")
        AddConversationOption(conversation, "Flattery will get you nowhere.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Then we may cut to the meat of this inquiry.  The Thexian disease must be removed from within Longshadow Alley.  I believe that you are the perfect Teir'Dal for this job, or are you not the superior child of Hate that you appear to be?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Arasai and Thexians?  This should be interesting.", "offer")
        AddConversationOption(conversation, "Arasai and Thexians?  No way!")
	StartConversation(conversation, NPC, Spawn, "Delicious.  Enter Longshadow Alley and kill as many Thexians as you find.  And while you are there, bring me back whatever torture instruments the Arasai zealots are using in their Thexian inquiries.  Their use will become clear, later.")
end

function Option5(NPC, Spawn)
       FaceTarget(NPC, Spawn)
       local conversation = CreateConversation()
       PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_012.mp3", "", "", 1391663293, 2393163292, Spawn)
       AddConversationOption(conversation, "What's that?", "Option6")
       StartConversation(conversation, NPC, Spawn, "Oh, how you reek of death and torment, Ukaop.  I am almost jealous of you!  But don't let the fun you just experienced overshadow the lesson to be learned.")
end



function Option6(NPC, Spawn)
      FaceTarget(NPC, Spawn)
      local conversation = CreateConversation()    
      PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_013.mp3", "", "", 917183823, 3670205303, Spawn)
      AddConversationOption(conversation, "Okay...", "Option7")
      StartConversation(conversation, NPC, Spawn, "We Teir'Dal, by Innoruuk's great design, are deceitful, opportunistic and power hungry.  These are useful and admirable traits in all of us, but they must be tempered with patience and a measure of the consequences, both guaranteed and possible.")
end

function Option7(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     local conversation = CreateConversation()  
     PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_014.mp3", "", "", 433459849, 3163112108, Spawn)
     AddConversationOption(conversation, "Oh!  You're right.", "Complete1")
     StartConversation(conversation, NPC, Spawn, "The Would-Be-Prince and his delusional caste of Thexians failed to do this.  They made a grab for power, revealing themselves as a threat to both The Overlord and to Queen Cristanos of Neriak, while they were still vulnerable.")
end

function Option8(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()  
 PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_016.mp3", "", "", 4167407616, 1182222079, Spawn)
 AddConversationOption(conversation, "I did, yes.", "Option9") 
 AddConversationOption(conversation, "A few may have run into my blade.", "Option9") 
 StartConversation(conversation, NPC, Spawn, "Doubtless, you ran into some of those flittering upstarts known as Arasai, within Longshadow Alley.")
end

function Option9(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()  
 PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_017.mp3", "", "", 3264193808, 1800689916, Spawn)
  AddConversationOption(conversation, "That could be fun.", "Option10")
  StartConversation(conversation, NPC, Spawn, "That is to be expected, "..GetName(Spawn).."!  I can't tell you how many times I've been tempted to pluck their wings off, just to watch them squirm.")
end
   

function Option10(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()  
 PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_018.mp3", "", "", 3983587076, 1125050295, Spawn)
 AddConversationOption(conversation, "On that, we agree!")
 AddConversationOption(conversation, "Not even Innoruuk?")
 StartConversation(conversation, NPC, Spawn, "It escapes my web how Queen Cristanos favors them to her own kin.  Yes, she made them, but we are the superior species!  There are none above the Teir'Dal!")
end


function Talvus(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "Turn around and put heel to pavestones, immediately!", "", 1689589577, 4560189, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST1)
end

function Complete1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST1, 3)
local conversation = CreateConversation()  
PlayFlavor(NPC, "dyymona_k_vexx/freeport_combined/quest/racial/darkelf/dyymona_kvexx_015.mp3", "", "", 3400123354, 2823025646, Spawn)
AddConversationOption(conversation, "What more do you have in mind?", "Option8")
AddConversationOption(conversation, "I'm sure we will, but it will have to wait.")
StartConversation(conversation, NPC, Spawn, "Of course I am.  It's what drew you to me.  Together, we will accomplish much in this great city!")
end
