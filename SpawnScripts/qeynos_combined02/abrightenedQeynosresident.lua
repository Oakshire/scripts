--[[
    Script Name    : SpawnScripts/qeynos_combined02/abrightenedQeynosresident.lua
    Script Author  : Rylec
    Script Date    : 2021.01.23 01:01:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "model_color", "229 229 102")
    SpawnSet(NPC, "soga_model_color", "229 229 102")

    local NPC_Type = MakeRandomInt(1,5)

        if NPC_Type == 1 then
            SpawnSet(NPC, "name", "a brightened Qeynos resident")
            SetEquipment(NPC, 3, 1079, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 4, 1898, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 7, 1084, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 8, 1893, 255, 255, 255, 255, 255, 255)
            HumanGender(NPC)
        elseif NPC_Type == 2 then
            SpawnSet(NPC, "name", "a pacified Qeynos resident")
            SetEquipment(NPC, 3, 1892, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 5, 1894, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 7, 1897, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 8, 1893, 255, 255, 255, 255, 255, 255)
            HighElfGender(NPC)
        elseif NPC_Type == 3 then
            SpawnSet(NPC, "name", "a relieved Qeynos resident")
            SetEquipment(NPC, 3, 2330, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 7, 2331, 255, 255, 255, 255, 255, 255)
            HumanGender(NPC)
        elseif NPC_Type == 4 then
            SpawnSet(NPC, "name", "a wonderstruck Qeynos resident")
            SetEquipment(NPC, 3, 501, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 4, 500, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 6, 503, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 7, 504, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 8, 502, 255, 255, 255, 255, 255, 255)
            KerranGender(NPC)
        else
            SpawnSet(NPC, "name", "an awestruck Qeynos resident")
            SetEquipment(NPC, 3, 501, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 4, 500, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 6, 503, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 7, 504, 255, 255, 255, 255, 255, 255)
            SetEquipment(NPC, 8, 502, 255, 255, 255, 255, 255, 255)
            HumanGender(NPC)
        end

    SetPlayerProximityFunction(NPC, 20, "InRange")
end

function HumanGender(NPC)
    local model = MakeRandomInt(1,2)

        if model == 1 then
            SetModelType(NPC, "132")
            SpawnSet(NPC, "soga_model_type", "132")
            SpawnSet(NPC, "chest_type", "5529")
            SpawnSet(NPC, "legs_type", "5530")
        elseif model == 2 then
            SetModelType(NPC, "134")
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5533")
            SpawnSet(NPC, "legs_type", "5534")
        end

    HumanCosmetics(NPC)   
end

function HighElfGender(NPC)
    local model = MakeRandomInt(1,2)

        if model == 1 then
            SetModelType(NPC, "135")
            SpawnSet(NPC, "soga_model_type", "135")
            SpawnSet(NPC, "chest_type", "5521")
            SpawnSet(NPC, "legs_type", "5522")
        elseif model == 2 then
            SetModelType(NPC, "136")
            SpawnSet(NPC, "soga_model_type", "136")
            SpawnSet(NPC, "chest_type", "5525")
            SpawnSet(NPC, "legs_type", "5526")
        end
    
    HighElfCosmetics(NPC)  
end

function KerranGender(NPC)
    local Random_Model = MakeRandomInt(1,9) -- 82, 91, 92, 93, 94, 95, 97, 100, 101

        if Random_Model == 1 then
            SetModelType(NPC, "82")
            SpawnSet(NPC, "soga_model_type", "82")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        elseif Random_Model == 2 then
            SetModelType(NPC, "91")
            SpawnSet(NPC, "soga_model_type", "91")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
        elseif Random_Model == 3 then
            SetModelType(NPC, "92")
            SpawnSet(NPC, "soga_model_type", "92")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
        elseif Random_Model == 4 then
            SetModelType(NPC, "93")
            SpawnSet(NPC, "soga_model_type", "93")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
        elseif Random_Model == 5 then
            SetModelType(NPC, "94")
            SpawnSet(NPC, "soga_model_type", "94")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
        elseif Random_Model == 6 then
            SetModelType(NPC, "95")
            SpawnSet(NPC, "soga_model_type", "95")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
        elseif Random_Model == 7 then
            SetModelType(NPC, "97")
            SpawnSet(NPC, "soga_model_type", "97")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        elseif Random_Model == 8 then
            SetModelType(NPC, "100")
            SpawnSet(NPC, "soga_model_type", "100")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        elseif Random_Model == 9 then
            SetModelType(NPC, "101")
            SpawnSet(NPC, "soga_model_type", "101")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        end    

    KerranCosmetics(NPC)  
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local type = GetModelType(NPC)
    local voice = MakeRandomInt(1,3)

        if type == 132 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1033.mp3", "", "", 0, 0, Spawn)
        elseif type == 134 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "", "", 0, 0, Spawn)
        elseif type == 135 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1011.mp3", "", "", 0, 0, Spawn)
        elseif type == 136 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1012.mp3", "", "", 0, 0, Spawn)
        elseif type < 97 and type ~= 82 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1053.mp3", "", "", 0, 0, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1054.mp3", "", "", 0, 0, Spawn)
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

function HumanCosmetics(NPC)

    local hair = MakeRandomInt(1121,1140)

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local beard = MakeRandomInt(1164,1191)
    local beard_chance = MakeRandomInt(1,100)    

        if beard_chance < 51 then
            SpawnSet(NPC, "facial_hair_type", "0")
            SpawnSet(NPC, "soga_facial_hair_type", "0")
        else
            SpawnSet(NPC, "facial_hair_type", beard)
            SpawnSet(NPC, "soga_facial_hair_type", beard)
        end

    local overall_look = MakeRandomInt(1,14)
 
        if overall_look == 1 then -- Bright yellow
            SpawnSet(NPC, "skin_color", "206 162 137")
            SpawnSet(NPC, "soga_skin_color", "206 162 137") 
            SpawnSet(NPC, "eye_color", "47 100 102")
            SpawnSet(NPC, "soga_eye_color", "47 100 102") 
            SpawnSet(NPC, "hair_type_color", "194 164 6")
            SpawnSet(NPC, "soga_hair_type_color", "194 164 6") 
            SpawnSet(NPC, "hair_face_color", "194 164 6")
            SpawnSet(NPC, "soga_hair_face_color", "194 164 6")
            SpawnSet(NPC, "hair_type_highlight_color", "188 168 37")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "188 168 37") 
            SpawnSet(NPC, "hair_face_highlight_color", "188 168 37")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "188 168 37")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0")
        elseif overall_look == 2 then -- Extra light chestnut (towards yellow)
            SpawnSet(NPC, "skin_color", "241 245 221")
            SpawnSet(NPC, "soga_skin_color", "241 245 221") 
            SpawnSet(NPC, "eye_color", "38 65 40")
            SpawnSet(NPC, "soga_eye_color", "38 65 40") 
            SpawnSet(NPC, "hair_type_color", "100 70 10")
            SpawnSet(NPC, "soga_hair_type_color", "100 70 10") 
            SpawnSet(NPC, "hair_face_color", "100 70 10")
            SpawnSet(NPC, "soga_hair_face_color", "100 70 10")
            SpawnSet(NPC, "hair_type_highlight_color", "231 170 26")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "231 170 26") 
            SpawnSet(NPC, "hair_face_highlight_color", "231 170 26")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "231 170 26")
            SpawnSet(NPC, "hair_color1", "56 33 26")
            SpawnSet(NPC, "soga_hair_color1", "56 33 26") 
            SpawnSet(NPC, "hair_color2", "94 59 11")
            SpawnSet(NPC, "soga_hair_color2", "94 59 11") 
            SpawnSet(NPC, "hair_highlight", "200 165 96")
            SpawnSet(NPC, "soga_hair_highlight", "200 165 96")  
        elseif overall_look == 3 then -- Light orange
            SpawnSet(NPC, "skin_color", "210 188 159")
            SpawnSet(NPC, "soga_skin_color", "210 188 159") 
            SpawnSet(NPC, "eye_color", "74 130 98")
            SpawnSet(NPC, "soga_eye_color", "74 130 98") 
            SpawnSet(NPC, "hair_type_color", "184 128 10")
            SpawnSet(NPC, "soga_hair_type_color", "184 128 10") 
            SpawnSet(NPC, "hair_face_color", "184 128 10")
            SpawnSet(NPC, "soga_hair_face_color", "184 128 10")
            SpawnSet(NPC, "hair_type_highlight_color", "37 10 14")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "37 10 14") 
            SpawnSet(NPC, "hair_face_highlight_color", "37 10 14")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "37 10 14")
            SpawnSet(NPC, "hair_color1", "213 84 34")
            SpawnSet(NPC, "soga_hair_color1", "213 84 34") 
            SpawnSet(NPC, "hair_color2", "2 0 0")
            SpawnSet(NPC, "soga_hair_color2", "2 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 4 then -- Orange with bright highlights
            SpawnSet(NPC, "skin_color", "234 244 244")
            SpawnSet(NPC, "soga_skin_color", "234 244 244") 
            SpawnSet(NPC, "eye_color", "37 76 88")
            SpawnSet(NPC, "soga_eye_color", "37 76 88") 
            SpawnSet(NPC, "hair_type_color", "121 38 35")
            SpawnSet(NPC, "soga_hair_type_color", "121 38 35") 
            SpawnSet(NPC, "hair_face_color", "121 38 35")
            SpawnSet(NPC, "soga_hair_face_color", "121 38 35")
            SpawnSet(NPC, "hair_type_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "233 184 31") 
            SpawnSet(NPC, "hair_face_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "233 184 31")
            SpawnSet(NPC, "hair_color1", "91 21 51")
            SpawnSet(NPC, "soga_hair_color1", "91 21 51") 
            SpawnSet(NPC, "hair_color2", "159 88 0")
            SpawnSet(NPC, "soga_hair_color2", "159 88 0") 
            SpawnSet(NPC, "hair_highlight", "246 219 114")
            SpawnSet(NPC, "soga_hair_highlight", "246 219 114") 
        elseif overall_look == 5 then -- Light chestnut
            SpawnSet(NPC, "skin_color", "245 249 245")
            SpawnSet(NPC, "soga_skin_color", "245 249 245") 
            SpawnSet(NPC, "eye_color", "43 70 43")
            SpawnSet(NPC, "soga_eye_color", "43 70 43") 
            SpawnSet(NPC, "hair_type_color", "37 22 5")
            SpawnSet(NPC, "soga_hair_type_color", "37 22 5") 
            SpawnSet(NPC, "hair_face_color", "37 22 5")
            SpawnSet(NPC, "soga_hair_face_color", "37 22 5")
            SpawnSet(NPC, "hair_type_highlight_color", "121 38 35")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "121 38 35") 
            SpawnSet(NPC, "hair_face_highlight_color", "121 38 35")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "121 38 35")
            SpawnSet(NPC, "hair_color1", "79 28 15")
            SpawnSet(NPC, "soga_hair_color1", "79 28 15") 
            SpawnSet(NPC, "hair_color2", "111 64 0")
            SpawnSet(NPC, "soga_hair_color2", "111 64 0") 
            SpawnSet(NPC, "hair_highlight", "91 21 51")
            SpawnSet(NPC, "soga_hair_highlight", "91 21 51")  
        elseif overall_look == 6 then -- Chestnut
            SpawnSet(NPC, "skin_color", "241 245 221")
            SpawnSet(NPC, "soga_skin_color", "241 245 221") 
            SpawnSet(NPC, "eye_color", "102 154 140")
            SpawnSet(NPC, "soga_eye_color", "102 154 140") 
            SpawnSet(NPC, "hair_type_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_type_color", "0 0 0") 
            SpawnSet(NPC, "hair_face_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_face_color", "0 0 0")
            SpawnSet(NPC, "hair_type_highlight_color", "15 1 21")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "15 1 21") 
            SpawnSet(NPC, "hair_face_highlight_color", "15 1 21")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "15 1 21")
            SpawnSet(NPC, "hair_color1", "38 22 21")
            SpawnSet(NPC, "soga_hair_color1", "38 22 21") 
            SpawnSet(NPC, "hair_color2", "120 50 0")
            SpawnSet(NPC, "soga_hair_color2", "120 50 0") 
            SpawnSet(NPC, "hair_highlight", "29 21 28")
            SpawnSet(NPC, "soga_hair_highlight", "29 21 28") 
        elseif overall_look == 7 then -- Chestnut and brown skin
            SpawnSet(NPC, "skin_color", "46 35 12")
            SpawnSet(NPC, "soga_skin_color", "46 35 12") 
            SpawnSet(NPC, "eye_color", "105 85 44")
            SpawnSet(NPC, "soga_eye_color", "105 85 44") 
            SpawnSet(NPC, "hair_type_color", "40 20 7")
            SpawnSet(NPC, "soga_hair_type_color", "40 20 7") 
            SpawnSet(NPC, "hair_face_color", "40 20 7")
            SpawnSet(NPC, "soga_hair_face_color", "40 20 7")
            SpawnSet(NPC, "hair_type_highlight_color", "47 42 59")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "47 42 59") 
            SpawnSet(NPC, "hair_face_highlight_color", "47 42 59")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "47 42 59")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 8 then -- Dark brown
            SpawnSet(NPC, "skin_color", "176 156 105")
            SpawnSet(NPC, "soga_skin_color", "176 156 105") 
            SpawnSet(NPC, "eye_color", "67 132 116")
            SpawnSet(NPC, "soga_eye_color", "67 132 116") 
            SpawnSet(NPC, "hair_type_color", "33 24 12")
            SpawnSet(NPC, "soga_hair_type_color", "33 24 12") 
            SpawnSet(NPC, "hair_face_color", "33 24 12")
            SpawnSet(NPC, "soga_hair_face_color", "33 24 12")
            SpawnSet(NPC, "hair_type_highlight_color", "11 6 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "11 6 1") 
            SpawnSet(NPC, "hair_face_highlight_color", "11 6 1")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "11 6 1")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0")    
        elseif overall_look == 9 then -- Dark brown and brown skin
            SpawnSet(NPC, "skin_color", "46 35 12")
            SpawnSet(NPC, "soga_skin_color", "46 35 12") 
            SpawnSet(NPC, "eye_color", "105 85 44")
            SpawnSet(NPC, "soga_eye_color", "105 85 44") 
            SpawnSet(NPC, "hair_type_color", "33 24 12")
            SpawnSet(NPC, "soga_hair_type_color", "33 24 12") 
            SpawnSet(NPC, "hair_face_color", "33 24 12")
            SpawnSet(NPC, "soga_hair_face_color", "33 24 12")
            SpawnSet(NPC, "hair_type_highlight_color", "11 6 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "11 6 1") 
            SpawnSet(NPC, "hair_face_highlight_color", "11 6 1")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "11 6 1")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0")  
        elseif overall_look == 10 then -- Lige grey towards white
            SpawnSet(NPC, "skin_color", "181 132 94")
            SpawnSet(NPC, "soga_skin_color", "181 132 94") 
            SpawnSet(NPC, "eye_color", "31 68 69")
            SpawnSet(NPC, "soga_eye_color", "31 68 69") 
            SpawnSet(NPC, "hair_type_color", "213 209 159")
            SpawnSet(NPC, "soga_hair_type_color", "213 209 159") 
            SpawnSet(NPC, "hair_face_color", "213 209 159")
            SpawnSet(NPC, "soga_hair_face_color", "213 209 159")
            SpawnSet(NPC, "hair_type_highlight_color", "56 40 19")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "56 40 19") 
            SpawnSet(NPC, "hair_face_highlight_color", "56 40 19")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "56 40 19")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 11 then -- Dark grey 
            SpawnSet(NPC, "skin_color", "186 191 170")
            SpawnSet(NPC, "soga_skin_color", "186 191 170") 
            SpawnSet(NPC, "eye_color", "38 77 88")
            SpawnSet(NPC, "soga_eye_color", "38 77 88") 
            SpawnSet(NPC, "hair_type_color", "59 58 73")
            SpawnSet(NPC, "soga_hair_type_color", "59 58 73") 
            SpawnSet(NPC, "hair_face_color", "59 58 73")
            SpawnSet(NPC, "soga_hair_face_color", "59 58 73")
            SpawnSet(NPC, "hair_type_highlight_color", "119 147 147")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "119 147 147") 
            SpawnSet(NPC, "hair_face_highlight_color", "119 147 147")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "119 147 147")
            SpawnSet(NPC, "hair_color1", "43 36 70")
            SpawnSet(NPC, "soga_hair_color1", "43 36 70") 
            SpawnSet(NPC, "hair_color2", "64 76 74")
            SpawnSet(NPC, "soga_hair_color2", "64 76 74")
            SpawnSet(NPC, "hair_highlight", "114 112 142")
            SpawnSet(NPC, "soga_hair_highlight", "114 112 142")
        elseif overall_look == 12 then -- Dark grey and brown skin
            SpawnSet(NPC, "skin_color", "46 35 12")
            SpawnSet(NPC, "soga_skin_color", "46 35 12") 
            SpawnSet(NPC, "eye_color", "105 85 44")
            SpawnSet(NPC, "soga_eye_color", "105 85 44") 
            SpawnSet(NPC, "hair_type_color", "59 58 73")
            SpawnSet(NPC, "soga_hair_type_color", "59 58 73") 
            SpawnSet(NPC, "hair_face_color", "59 58 73")
            SpawnSet(NPC, "soga_hair_face_color", "59 58 73")
            SpawnSet(NPC, "hair_type_highlight_color", "119 147 147")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "119 147 147") 
            SpawnSet(NPC, "hair_face_highlight_color", "119 147 147")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "119 147 147")
            SpawnSet(NPC, "hair_color1", "43 36 70")
            SpawnSet(NPC, "soga_hair_color1", "43 36 70") 
            SpawnSet(NPC, "hair_color2", "64 76 74")
            SpawnSet(NPC, "soga_hair_color2", "64 76 74")
            SpawnSet(NPC, "hair_highlight", "114 112 142")
            SpawnSet(NPC, "soga_hair_highlight", "114 112 142")
        elseif overall_look == 13 then -- Black with white highlights
            SpawnSet(NPC, "skin_color", "179 188 188")
            SpawnSet(NPC, "soga_skin_color", "179 188 188") 
            SpawnSet(NPC, "eye_color", "105 165 179")
            SpawnSet(NPC, "soga_eye_color", "105 165 179") 
            SpawnSet(NPC, "hair_type_color", "15 1 21")
            SpawnSet(NPC, "soga_hair_type_color", "15 1 21") 
            SpawnSet(NPC, "hair_face_color", "15 1 21")
            SpawnSet(NPC, "soga_hair_face_color", "15 1 21")
            SpawnSet(NPC, "hair_type_highlight_color", "211 220 220")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "211 220 220") 
            SpawnSet(NPC, "hair_face_highlight_color", "211 220 220")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "211 220 220")
            SpawnSet(NPC, "hair_color1", "29 21 28")
            SpawnSet(NPC, "soga_hair_color1", "29 21 28") 
            SpawnSet(NPC, "hair_color2", "39 32 39")
            SpawnSet(NPC, "soga_hair_color2", "39 32 39")
            SpawnSet(NPC, "hair_highlight", "161 165 168")
            SpawnSet(NPC, "soga_hair_highlight", "161 165 168")
         else -- Light black
            SpawnSet(NPC, "skin_color", "176 156 105")
            SpawnSet(NPC, "soga_skin_color", "176 156 105") 
            SpawnSet(NPC, "eye_color", "67 132 116")
            SpawnSet(NPC, "soga_eye_color", "67 132 116") 
            SpawnSet(NPC, "hair_type_color", "39 50 50")
            SpawnSet(NPC, "soga_hair_type_color", "39 50 50") 
            SpawnSet(NPC, "hair_face_color", "39 50 50")
            SpawnSet(NPC, "soga_hair_face_color", "39 50 50")
            SpawnSet(NPC, "hair_type_highlight_color", "18 11 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "18 11 0") 
            SpawnSet(NPC, "hair_face_highlight_color", "18 11 0")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "18 11 0")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        end
end
        
function HighElfCosmetics(NPC)

    local hair = MakeRandomInt(1133,1140)

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local overall_look = MakeRandomInt(1,6)

        if overall_look == 1 then -- White
            SpawnSet(NPC, "skin_color", "235 243 243")
            SpawnSet(NPC, "soga_skin_color", "235 243 243") 
            SpawnSet(NPC, "eye_color", "112 168 180")
            SpawnSet(NPC, "soga_eye_color", "112 168 180") 
            SpawnSet(NPC, "hair_type_color", "247 240 227")
            SpawnSet(NPC, "soga_hair_type_color", "247 240 227") 
            SpawnSet(NPC, "hair_type_highlight_color", "14 11 9")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "14 11 9") 
        elseif overall_look == 2 then -- Light grey
            SpawnSet(NPC, "skin_color", "209 181 133")
            SpawnSet(NPC, "soga_skin_color", "209 181 133") 
            SpawnSet(NPC, "eye_color", "69 82 46")
            SpawnSet(NPC, "soga_eye_color", "69 82 46") 
            SpawnSet(NPC, "hair_type_color", "219 219 216")
            SpawnSet(NPC, "soga_hair_type_color", "219 219 216") 
            SpawnSet(NPC, "hair_type_highlight_color", "54 22 8")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "54 22 8") 
        elseif overall_look == 3 then -- Very light yellow
            SpawnSet(NPC, "skin_color", "240 249 246")
            SpawnSet(NPC, "soga_skin_color", "240 249 246") 
            SpawnSet(NPC, "eye_color", "96 160 174")
            SpawnSet(NPC, "soga_eye_color", "96 160 174") 
            SpawnSet(NPC, "hair_type_color", "214 184 120")
            SpawnSet(NPC, "soga_hair_type_color", "214 184 120") 
            SpawnSet(NPC, "hair_type_highlight_color", "65 61 27")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "65 61 27") 
        elseif overall_look == 4 then -- Light yellow
            SpawnSet(NPC, "skin_color", "255 255 255")
            SpawnSet(NPC, "soga_skin_color", "255 255 255") 
            SpawnSet(NPC, "eye_color", "58 62 34")
            SpawnSet(NPC, "soga_eye_color", "58 62 34") 
            SpawnSet(NPC, "hair_type_color", "213 215 126")
            SpawnSet(NPC, "soga_hair_type_color", "213 215 126") 
            SpawnSet(NPC, "hair_type_highlight_color", "54 32 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "54 32 1") 
        elseif overall_look == 5 then -- Bright yellow
            SpawnSet(NPC, "skin_color", "193 199 199")
            SpawnSet(NPC, "soga_skin_color", "193 199 199") 
            SpawnSet(NPC, "eye_color", "71 57 30")
            SpawnSet(NPC, "soga_eye_color", "71 57 30") 
            SpawnSet(NPC, "hair_type_color", "236 195 50")
            SpawnSet(NPC, "soga_hair_type_color", "236 195 50") 
            SpawnSet(NPC, "hair_type_highlight_color", "65 37 3")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "65 37 3") 
        else -- Dark yellow
            SpawnSet(NPC, "skin_color", "240 249 246")
            SpawnSet(NPC, "soga_skin_color", "240 249 246") 
            SpawnSet(NPC, "eye_color", "105 85 44")
            SpawnSet(NPC, "soga_eye_color", "105 85 44") 
            SpawnSet(NPC, "hair_type_color", "211 157 3")
            SpawnSet(NPC, "soga_hair_type_color", "211 157 3") 
            SpawnSet(NPC, "hair_type_highlight_color", "125 50 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "125 50 1") 
        end
end

function KerranCosmetics(NPC)
    SpawnSet(NPC, "hair_type", "0")
    SpawnSet(NPC, "eye_color", "222 35 32")
    SpawnSet(NPC, "soga_eye_color", "222 35 32") 
            
    local overall_look = MakeRandomInt(1,9)

        if overall_look == 1 then -- 82
            SpawnSet(NPC, "skin_color", "112 58 34")
            SpawnSet(NPC, "soga_skin_color", "112 58 34") 
        elseif overall_look == 2 then -- 91
            SpawnSet(NPC, "skin_color", "204 195 164")
            SpawnSet(NPC, "soga_skin_color", "204 195 164") 
        elseif overall_look == 3 then -- 92
            local color_variation = MakeRandomInt(1,4)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "129 125 113")
                    SpawnSet(NPC, "soga_skin_color", "129 125 113")               
                elseif color_variation == 2 then 
                    SpawnSet(NPC, "skin_color", "152 93 67")
                    SpawnSet(NPC, "soga_skin_color", "152 93 67")
                elseif color_variation == 3 then 
                    SpawnSet(NPC, "skin_color", "175 153 74")
                    SpawnSet(NPC, "soga_skin_color", "175 153 74")
                else 
                    SpawnSet(NPC, "skin_color", "254 252 248")
                    SpawnSet(NPC, "soga_skin_color", "254 252 248")
                end        
        elseif overall_look == 4 then -- 93
            SpawnSet(NPC, "skin_color", "139 38 1")
            SpawnSet(NPC, "soga_skin_color", "139 38 1") 
        elseif overall_look == 5 then -- 94
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "74 64 39")
                    SpawnSet(NPC, "soga_skin_color", "74 64 39")               
                else 
                    SpawnSet(NPC, "skin_color", "95 29 1")
                    SpawnSet(NPC, "soga_skin_color", "95 29 1") 
                end
        elseif overall_look == 6 then -- 95
            SpawnSet(NPC, "skin_color", "150 61 12")
            SpawnSet(NPC, "soga_skin_color", "150 61 12") 
        elseif overall_look == 7 then -- 97
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "130 83 29")
                    SpawnSet(NPC, "soga_skin_color", "130 83 29")               
                else 
                    SpawnSet(NPC, "skin_color", "247 247 248")
                    SpawnSet(NPC, "soga_skin_color", "247 247 248") 
                end
        elseif overall_look == 8 then -- 100
             local color_variation = MakeRandomInt(1,3)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "25 9 1")
                    SpawnSet(NPC, "soga_skin_color", "25 9 1")               
                elseif color_variation == 2 then
                    SpawnSet(NPC, "skin_color", "146 72 19")
                    SpawnSet(NPC, "soga_skin_color", "146 72 19") 
                else 
                    SpawnSet(NPC, "skin_color", "163 146 139")
                    SpawnSet(NPC, "soga_skin_color", "163 146 139") 
                end           
        else -- 101
            local color_variation = MakeRandomInt(1,3)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "16 6 1")
                    SpawnSet(NPC, "soga_skin_color", "16 6 1")
                elseif color_variation == 2 then
                    SpawnSet(NPC, "skin_color", "114 32 1")
                    SpawnSet(NPC, "soga_skin_color", "114 32 1")
                else
                    SpawnSet(NPC, "skin_color", "248 243 242")
                    SpawnSet(NPC, "soga_skin_color", "248 243 242")  
                end
        end
end