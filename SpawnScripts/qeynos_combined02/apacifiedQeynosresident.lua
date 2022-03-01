--[[
    Script Name    : SpawnScripts/qeynos_combined02/apacifiedQeynosresident.lua
    Script Author  : Rylec
    Script Date    : 2021.01.23 01:01:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,2)
    local beard = MakeRandomInt(1164,1191)

        if model == 1 then
            SetModelType(NPC, "135")
            SpawnSet(NPC, "soga_model_type", "135")
            SpawnSet(NPC, "chest_type", "5521")
            SpawnSet(NPC, "legs_type", "5522")
        else
            SetModelType(NPC, "136")
            SpawnSet(NPC, "soga_model_type", "136")
            SpawnSet(NPC, "chest_type", "5525")
            SpawnSet(NPC, "legs_type", "5526")
        end

    local hair = MakeRandomInt(1133,1140)
        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local type = GetModelType(NPC)
    local voice = MakeRandomInt(1,3)

        if type == 135 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1011.mp3", "", "", 0, 0, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1012.mp3", "", "", 0, 0, Spawn)
        end

    InRange(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC)
    local say = MakeRandomInt(1,19)  

        if say == 1 then
            PlayFlavor(NPC, "", "Look upon our great city! Threatened time and time again, but Qeynos still stands.", "yeah", 0, 0, Spawn)
        elseif say == 2 then
            PlayFlavor(NPC, "", "Luclin is whole again... I never thought I'd see such a thing.", "shrug", 0, 0, Spawn)
        elseif say == 3 then
            PlayFlavor(NPC, "", "Luclin shines so bright...", "nod", 0, 0, Spawn)
        elseif say == 4 then
            PlayFlavor(NPC, "", "If we can make Luclin whole, then there is nothing that Qeynos can't accomplish!", "sigh", 0, 0, Spawn)
        elseif say == 5 then
            PlayFlavor(NPC, "", "We must not doubt Queen Antonia. We owe much to her leadership!", "yeah", 0, 0, Spawn)
        elseif say == 6 then
            PlayFlavor(NPC, "", "The night sky is so different now, I love it!", "yeah", 0, 0, Spawn)
        elseif say == 7 then
            PlayFlavor(NPC, "", "See! We never needed Freeport's help! Queen Antonia can do it all on her own!", "agree", 0, 0, Spawn)
        elseif say == 8 then
            PlayFlavor(NPC, "", "I heard some have found a way to Luclin. It is a new beginning for us now!", "yeah", 0, 0, Spawn)
        elseif say == 9 then
            PlayFlavor(NPC, "", "Freeportians will learn the errors of their ways, one day.", "crazy", 0, 0, Spawn)
        elseif say == 10 then
            PlayFlavor(NPC, "", "Kerafyrm is still up there... trapped, but for how long?", "scared", 0, 0, Spawn)
        elseif say == 11 then
            PlayFlavor(NPC, "", "I can look up at Luclin and know I will never see Kerafyrm's shadow again.", "agree", 0, 0, Spawn)
        elseif say == 12 then
            PlayFlavor(NPC, "", "Luclin... it kind of looks like an egg now, doesn't it? I hope Kerafyrm cannot get free...", "shakefist", 0, 0, Spawn)
        elseif say == 13 then
            PlayFlavor(NPC, "", "Luclin is so beautiful... but it's terrifying to know what she harbors within.", "cringe", 0, 0, Spawn)
        elseif say == 14 then
            PlayFlavor(NPC, "", "May the gods continue to bless us.", "agree", 0, 0, Spawn)
        elseif say == 15 then
            PlayFlavor(NPC, "", "Even if the shissar found a way off Luclin, Queen Antonia wouldn't let any harm come to us.", "scream", 0, 0, Spawn)
        elseif say == 16 then
            PlayFlavor(NPC, "", "I know there are those who wish harm upon Qeynos, but I just feel sorry for them.", "sad", 0, 0, Spawn)
        elseif say == 17 then
            PlayFlavor(NPC, "", "We can all breathe a sigh of relief. Norrath now has a new friend in the sky, and she keeps us safe from Kerafyrm's wrath.", "yes", 0, 0, Spawn)
        elseif say == 18 then
            PlayFlavor(NPC, "", "Luclin represents an end to the war, an end to the Awakened. We must thank her.", "bow", 0, 0, Spawn)
        else
            PlayFlavor(NPC, "", "I heard some have found a way to Luclin. It is a new beginning for us now!", "yeah", 0, 0, Spawn)
        end
end