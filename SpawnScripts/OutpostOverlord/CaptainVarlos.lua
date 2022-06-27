--[[
    Script Name    : SpawnScripts/OutpostOverlord/CaptainVarlos.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Captain Varlos dialog
    Modified Date : 2020.04.03
    Modified by    : premierio015
    Notes          : Added Animations & Gives a  Spell "Call to Home"
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_027.mp3", "", "hello", 2285948102, 2994720481, Spawn)
    AddConversationOption(conversation, "Yes.  Take me to Freeport.", "AreYouSure")
    AddConversationOption(conversation, "Who are you?", "WhoAreYou")
    AddConversationOption(conversation, "No, I'd like to explore more.")
    StartConversation(conversation, NPC, Spawn, "So, ya' ready ta go ashore matey?")
end

function WhoAreYou(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_003.mp3", "", "bow", 2565389482, 560555759, Spawn)
    AddConversationOption(conversation, "I think I'm ready to leave now.", "AreYouSure")
    AddConversationOption(conversation, "I'd like to explore more.  Goodbye.")
    StartConversation(conversation, NPC, Spawn, "I am Captain Draik Varlos, and this 'ere fine ship is the Far Journey.  I can give ya' a ride to Freeport when yer ready to leave the island.")
end

function AreYouSure(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "", "", 1155995604, 1406357895, Spawn)
    AddConversationOption(conversation, "I'm ready for the challenges ahead.  Take me to Freeport.", "AreYouSure2")
    AddConversationOption(conversation, "On second thought, maybe I should wait a bit.")
    StartConversation(conversation, NPC, Spawn, "Ya' best be sure ta' explore the whole island, ya' hear!  Norrath can be a dangerous place ya' know?")
end

function AreYouSure2(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_013.mp3", "", "smile", 3880459741, 170861362, Spawn)
    AddConversationOption(conversation, "Thanks for the ride!", "AreYouSure3")
    AddConversationOption(conversation, "Wait!  I've changed my mind.  Let me off.")
    StartConversation(conversation, NPC, Spawn, "Yar! That's what we be needin'.  Ok then, off to Freeport!")
end

function AreYouSure3(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_028.mp3", "", "", 1009737776, 2173458794, Spawn)
    AddConversationOption(conversation, "To Freeport!", "LeaveIsland")
    AddConversationOption(conversation, "Oh, nevermind! I'll stay!")
    StartConversation(conversation, NPC, Spawn, "Don't ya' mind, we get paid ta' do that.")
end

function LeaveIsland(NPC, Spawn)
    Race = GetRace(Spawn)
  
    Bind(Spawn, 559, -232.03, -56.06, 172.57, 360.0)
    -- Human / Kerra
    if Race == 9 or Race == 11 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)

      -- Ratonga / Gnome
    elseif Race == 5 or Race == 13 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)


      -- Half Elf
    elseif Race == 6 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)


   -- Orge / Troll
    elseif Race == 12 or Race == 14 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)
    
   -- Dark Elf / Iksar
    elseif Race == 1 or Race == 10 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)



    -- Erudite / Freeblood
    elseif Race == 3 or Race == 19 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)


    -- Barbarian and Aerakyn
    elseif Race == 0 or Race == 20 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)

    -- Arasai or Sarnak
    elseif Race == 17 or Race == 18 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Freeport")
        Zone(ZoneRef,Spawn)

    -- Unknown
    else
        PlayFlavor(NPC, "", "Sorry, I cannot deal with someone of your race. Try visiting the boat on the other island!", "", 0, 0, Spawn)
        ZoneRef = GetZone("Qeynos")
        Zone(ZoneRef,Spawn)
    end
end
