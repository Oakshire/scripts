--[[
    Script Name    : SpawnScripts/Graystone/WatcherCurmoglielKarthal.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.09
    Script Purpose : 
                   : 
--]]

local Rats = 5503

function spawn(NPC)
ProvidesQuest(NPC,Rats)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
if math.random(1, 100) <= 70 then
    if not HasCompletedQuest (Spawn, Rats) and not HasQuest (Spawn, Rats) and GetLevel(Spawn) >=6 then       
        FaceTarget(NPC, Spawn)        
        PlayFlavor(NPC, "voiceover/english/watcher_curmogliel_kar_thal/qey_village03/100_customer_highelf_watcher_karthal_callout_b1652e76.mp3", "Step forward citizen! Prove your faith to the Celestial Watch.", "nod", 131916429, 83798577, Spawn)
    end
    end
end

function hailed(NPC, Spawn)
    conversation = CreateConversation()    
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/watcher_curmogliel_kar_thal/qey_village03/watchercurmogliel000.mp3", "", "", 1545523898, 2801793023, Spawn)
 if not HasCompletedQuest (Spawn, Rats) and not HasQuest (Spawn, Rats) and GetLevel(Spawn) >=6 then 
    AddConversationOption(conversation, "Haven't the gods been quiet since The Shattering?", "Gods")
    end
 if GetQuestStep (Spawn, Rats)==2 then 
    AddConversationOption(conversation, "I have slain the Bloodsabers. Is that proof enough?", "Finished")
    end    
    AddConversationOption(conversation, "Good to know. Good day to you.")
if not HasCompletedQuest (Spawn, Rats) and not HasQuest (Spawn, Rats) then
    AddConversationOption(conversation, "I don't need faith telling me what to do.","NoFaith")
end
    StartConversation(conversation, NPC, Spawn, "The Celestial Watch is ever vigilant. Rest will come only after the tyranny of evil can be undone.")
    
end

 function NoFaith(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/watcher_curmogliel_kar_thal/qey_village03/watchercurmogliel004.mp3","","sigh",3442673353,215479191,Spawn)
  AddConversationOption(conversation, "Perhaps.")
  StartConversation(conversation, NPC, Spawn, "Faith is all that can save us. I am sorry you cannot see this. This fight is not yours. But someday, you shall find your way.")
end   

 function Gods(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/watcher_curmogliel_kar_thal/qey_village03/watchercurmogliel001.mp3","","nod",2796372523,2339729936,Spawn)
  AddConversationOption(conversation, "How can I prove my faith?","Prove")
  AddConversationOption(conversation, "I don't need faith telling me what to do.","NoFaith")  
  StartConversation(conversation, NPC, Spawn, "The Celestial Watch is the bearer of faith in this near faithless world. The powers that be have been silenced for ages, and far too many have lost faith. Now is the time for all to prove their faith.")
end   

 function Prove(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/watcher_curmogliel_kar_thal/qey_village03/watchercurmogliel002.mp3","","agree",1937849354,1911529851,Spawn)
  AddConversationOption(conversation, "I will prove myself. I will be back.","Prove2")
  AddConversationOption(conversation, "I don't need faith telling me what to do.","NoFaith")  
  StartConversation(conversation, NPC, Spawn, "Then seek out the catacombs! You must slay the Bloodsabers in the caverns. May your faith in the righteous bring you victory, or welcome you in the afterlife. The gods are watching!")
end   

function Prove2(NPC,Spawn)
    OfferQuest(NPC,Spawn, Rats)
end

 function Finished(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/watcher_curmogliel_kar_thal/qey_village03/watchercurmogliel003.mp3","","thank",2058282306,1196487776,Spawn)
  AddConversationOption(conversation, "Thank you.","Finished2")
  StartConversation(conversation, NPC, Spawn, "You've done well. The Celestial Watch salutes you! Take this reward for our gratitude. Use it wisely so that you may aid those in need. You'll be in our prayers. Should your adventures take you to the Temple of Light in Qeynos, please visit us fair traveler. Farewell.")
end 

function Finished2(NPC,Spawn)
    SetStepComplete(Spawn,Rats,2)
end