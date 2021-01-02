--[[
    Script Name    : SpawnScripts/QueensColony/CaptainVarlos.lua
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
    InitialDialogue(NPC, Spawn)
--[[
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_027.mp3", "", "hello", 2285948102, 2994720481, Spawn)
    AddConversationOption(conversation, "Yes.  Take me to Qeynos.", "AreYouSure")
    AddConversationOption(conversation, "Yes.  Take me to the Frostfang Sea.", "AreYouSureFrostfang")
    AddConversationOption(conversation, "Yes.  Take me to Kelethin. (GM: Not implemented yet)", "AreYouSureKelethin")
    AddConversationOption(conversation, "Who are you?", "WhoAreYou")
    AddConversationOption(conversation, "No, I'd like to explore more.")
    StartConversation(conversation, NPC, Spawn, "So, ya' ready ta go ashore matey? I can take ye all the way to Qeynos or just as far as the Frostfang Sea.")
--]]
end

function InitialDialogue(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_027.mp3", "", "hello", 2285948102, 2994720481, Spawn)
    AddConversationOption(conversation, "Yes.  Take me to Qeynos.", "AreYouSure")
    AddConversationOption(conversation, "Yes.  Take me to the Frostfang Sea.", "AreYouSureFrostfang")
    AddConversationOption(conversation, "Yes.  Take me to Kelethin.", "AreYouSureKelethin")
    AddConversationOption(conversation, "Who are you?", "WhoAreYou")
    AddConversationOption(conversation, "No, I'd like to explore more.")
    StartConversation(conversation, NPC, Spawn, "So, ya' ready ta go ashore matey? I can take ye all the way to Qeynos or just as far as the Frostfang Sea.")
end

function WhoAreYou(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_003.mp3", "", "bow", 2565389482, 560555759, Spawn)
    AddConversationOption(conversation, "I think I'm ready to leave now.", "InitialDialogue")
    AddConversationOption(conversation, "I'd like to explore more.  Goodbye.")
    StartConversation(conversation, NPC, Spawn, "I am Captain Draik Varlos, and this 'ere fine ship is the Far Journey.  I can give ya' a ride to Qeynos when yer ready to leave the island.")
end

function AreYouSure(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "", "ponder", 1155995604, 1406357895, Spawn)
    AddConversationOption(conversation, "I'm ready for the challenges ahead.  Take me to Qeynos.", "AreYouSure2")
    AddConversationOption(conversation, "On second thought, maybe I should wait a bit.")
    StartConversation(conversation, NPC, Spawn, "Ya' best be sure ta' explore the whole island, ya' hear!  Norrath can be a dangerous place ya' know?")
end

function AreYouSure2(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_013.mp3", "", "smile", 3880459741, 170861362, Spawn)
    AddConversationOption(conversation, "Thanks for the ride!", "AreYouSure3")
    AddConversationOption(conversation, "Wait!  I've changed my mind.  Let me off.")
    StartConversation(conversation, NPC, Spawn, "Yar! That's what we be needin'.  Ok then, off to Qeynos!")
end

function AreYouSure3(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_028.mp3", "", "", 1009737776, 2173458794, Spawn)
    AddConversationOption(conversation, "To Qeynos!", "LeaveIsland")
--    AddConversationOption(conversation, "Oh, nevermind! I'll stay!")
    StartConversation(conversation, NPC, Spawn, "Don't ya' mind, we get paid ta' do that.")
end

function AreYouSureFrostfang(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "", "ponder", 1155995604, 1406357895, Spawn)
    AddConversationOption(conversation, "I'm ready for the challenges ahead.  Take me to Frostfang Sea.", "AreYouSureFrostfang2")
    AddConversationOption(conversation, "On second thought, maybe I should wait a bit.")
    StartConversation(conversation, NPC, Spawn, "Ya' best be sure ta' explore the whole island, ya' hear!  Norrath can be a dangerous place ya' know?")
end

function AreYouSureFrostfang2(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_013.mp3", "", "smile", 3880459741, 170861362, Spawn)
    AddConversationOption(conversation, "Thanks for the ride!", "AreYouSureFrostfang3")
    AddConversationOption(conversation, "Wait!  I've changed my mind.  Let me off.")
    StartConversation(conversation, NPC, Spawn, "Yar! That's what we be needin'.  Ok then, off to Frostfang Sea!")
end

function AreYouSureFrostfang3(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_028.mp3", "", "", 1009737776, 2173458794, Spawn)
    AddConversationOption(conversation, "To Frostfang Sea!", "LeaveIslandFrostfang")
--    AddConversationOption(conversation, "Oh, nevermind! I'll stay!")
    StartConversation(conversation, NPC, Spawn, "Don't ya' mind, we get paid ta' do that.")
end

function AreYouSureKelethin(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "", "ponder", 1155995604, 1406357895, Spawn)
    AddConversationOption(conversation, "I'm ready for the challenges ahead.  Take me to Kelethin.", "AreYouSureKelethin2")
    AddConversationOption(conversation, "On second thought, maybe I should wait a bit.")
    StartConversation(conversation, NPC, Spawn, "Ya' best be sure ta' explore the whole island, ya' hear!  Norrath can be a dangerous place ya' know?")
end

function AreYouSureKelethin2(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_013.mp3", "", "smile", 3880459741, 170861362, Spawn)
    AddConversationOption(conversation, "Thanks for the ride!", "AreYouSureKelethin3")
    AddConversationOption(conversation, "Wait!  I've changed my mind.  Let me off.")
    StartConversation(conversation, NPC, Spawn, "Yar! That's what we be needin'.  Ok then, off to Kelethin!")
end

function AreYouSureKelethin3(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/captain_varlos/boat_06p_tutorial02/varlos_0_028.mp3", "", "", 1009737776, 2173458794, Spawn)
    AddConversationOption(conversation, "To Kelethin!", "LeaveIslandKelethin")
--    AddConversationOption(conversation, "Oh, nevermind! I'll stay!")
    StartConversation(conversation, NPC, Spawn, "Don't ya' mind, we get paid ta' do that.")
end

function LeaveIsland(NPC, Spawn)
    Race = GetRace(Spawn)

    -- Human / Kerra
    if Race == 9 or Race == 11 then
        AddSpellBookEntry(Spawn, 8057, 1)	
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Spawn)

    -- Erudite
    elseif Race == 3 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef,Spawn)

    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Graystone")
        Zone(ZoneRef,Spawn)

    -- High Elf / Froglok
    elseif Race == 4 or Race == 8 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Castleview")
        Zone(ZoneRef,Spawn)

    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Willowwood")
        Zone(ZoneRef,Spawn)

    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Baubbleshire")
        Zone(ZoneRef,Spawn)

--[[
    -- Fae
    elseif Race == 17 then
        AddSpellBookEntry(Spawn, 8057, 1)
        ZoneRef = GetZone("Kelethin")
        Zone(ZoneRef,Spawn)
--]]

    -- Unknown
    else
        PlayFlavor(NPC, "", "Sorry, I cannot deal with someone of your race. Try visiting the boat on the other island!", "", 0, 0, Spawn)
        ZoneRef = GetZone("OutpostOverlord")
        Zone(ZoneRef,Spawn)
    end
end

function LeaveIslandFrostfang(NPC, Spawn)
    AddSpellBookEntry(Spawn, 8057, 1)	
    ZoneRef = GetZone("FrostfangSea")
    Zone(ZoneRef,Spawn)
end

function LeaveIslandKelethin(NPC, Spawn)
    AddSpellBookEntry(Spawn, 8057, 1)	
    ZoneRef = GetZone("GreaterFaydark")
    Zone(ZoneRef,Spawn)
end