--[[
    Script Name    : SpawnScripts/qeynos_combined02/aGraystoneGuildbruiserDojoBarbarian133772275.lua
    Script Author  : Rylec
    Script Date    : 2021.03.07 06:03:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,6)

        if model == 1 then
            SetModelType(NPC, "132") -- human female
            SpawnSet(NPC, "soga_model_type", "132")
            SpawnSet(NPC, "chest_type", "5529")
            SpawnSet(NPC, "legs_type", "5530")
            HumanCosmetics(NPC)
        elseif model == 2 then
            SetModelType(NPC, "134") -- human male
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5533")
            SpawnSet(NPC, "legs_type", "5534")
            HumanCosmetics(NPC)
        elseif model == 3 then
            SetModelType(NPC, "109") -- dwarf female
            SpawnSet(NPC, "soga_model_type", "109")
            SpawnSet(NPC, "chest_type", "5473")
            SpawnSet(NPC, "legs_type", "5474")
            DwarfCosmetics(NPC)
        elseif model == 4 then
            SetModelType(NPC, "110") -- dwarf male
            SpawnSet(NPC, "soga_model_type", "110")
            SpawnSet(NPC, "chest_type", "5477")
            SpawnSet(NPC, "legs_type", "5478")
            DwarfCosmetics(NPC)
        elseif model == 5 then
            SetModelType(NPC, "111") -- barbarian female
            SpawnSet(NPC, "soga_model_type", "111")
            SpawnSet(NPC, "chest_type", "5457")
            SpawnSet(NPC, "legs_type", "5458")
            BarbarianCosmetics(NPC)
        else
            SetModelType(NPC, "112") -- barbarian male
            SpawnSet(NPC, "soga_model_type", "112")
            SpawnSet(NPC, "chest_type", "5461")
            SpawnSet(NPC, "legs_type", "5462")
            BarbarianCosmetics(NPC)
        end
        
    SetEquipment(NPC, 3, 991, 255, 255, 255, 255, 255, 255)
    SetEquipment(NPC, 7, 4570, 255, 255, 255, 255, 255, 255)
    SetEquipment(NPC, 8, 992, 255, 255, 255, 255, 255, 255)

    local Forearms_chance = MakeRandomInt(1,100)  

        if Forearms_chance < 51 then
            SetEquipment(NPC, 5, 1009, 255, 255, 255, 255, 255, 255)
        else
            SetEquipment(NPC, 5, 0)
        end 
        
    AddTimer(NPC, 6000, "EmoteLoop")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local Type = GetModelType(NPC)
    local choice = MakeRandomInt(1,2) 
    
        if Type == 132 then
            if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_2d0e8823.mp3", "Almost time to stop and have an ale, isn't it?", "wink", 1106325239, 2982056892, Spawn)
            else
                PlayFlavor(NPC, "voiceover/english/human_eco_race_good/ft/eco/good/human_eco_race_good_hail_gf_837968a9.mp3", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 3270846909, 2717985314, Spawn)
            end
        elseif Type == 134 then
            if choice == 1 then
                PlayFlavor(NPC, "", "Almost time to stop and have an ale, isn't it?", "", 0, 0, Spawn)
            else
                PlayFlavor(NPC, "", "Oh, my aching back!  As good a time to stop and chat as any, I say.", "yawn", 0, 0, Spawn)
            end
        elseif Type == 109 then
            if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_bce06b4a.mp3", "A hard day of adventuring makes one long for home, don't it?", "", 2210732036, 3144200859, Spawn)
            else
                PlayFlavor(NPC, "voiceover/english/dwarf_eco_race_good/ft/eco/good/dwarf_eco_race_good_hail_gf_c221a26e.mp3", "Ah, what I wouldn't give to be cradling a mug of good dwarven ale.", "", 409704670, 4015848226, Spawn)
            end
        elseif Type == 110 then
            if choice == 1 then
                PlayFlavor(NPC, "", "A hard day of adventuring makes one long for home, don't it?", "", 0, 0, Spawn)
            else
                PlayFlavor(NPC, "", "Ah, what I wouldn't give to be cradling a mug of good dwarven ale.", "", 0, 0, Spawn)
            end
        elseif Type == 111 then
            if choice == 1 then
                PlayFlavor(NPC, "", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "", 0, 0, Spawn)
            else
                PlayFlavor(NPC, "", "Treasures from the past can be found throughout the lands, for those who care to look.", "", 0, 0, Spawn)
            end
        elseif Type == 112 then
            if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_d571c130.mp3", "I'm not used to this weather, but my people can adapt to any change in order to survive.", "", 3421348121, 1004876500, Spawn)
            else
                PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_good/ft/eco/good/barbarian_eco_race_good_hail_gm_5a6b643f.mp3", "Treasures from the past can be found throughout the lands, for those who care to look.", "", 3614931515, 1601871948, Spawn)
            end
        end
end

function respawn(NPC)
    spawn(NPC)
end

function BarbarianCosmetics(NPC)

    local Type = GetModelType(NPC)
    local HairType = 0

        if Type == 111 then
            HairType = MakeRandomInt(1136,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        else
            HairType = MakeRandomInt(1133,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        end

    local FaceHairType = MakeRandomInt(1185,1189)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
            SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)

    local overall_look = MakeRandomInt(1,6)

        if overall_look == 1 then -- Light chestnut (yellowish)
            SpawnSet(NPC, "skin_color", "206 162 137")
            SpawnSet(NPC, "soga_skin_color", "206 162 137") 
            SpawnSet(NPC, "eye_color", "47 100 102")
            SpawnSet(NPC, "soga_eye_color", "47 100 102") 
            SpawnSet(NPC, "hair_type_color", "37 22 5")
            SpawnSet(NPC, "soga_hair_type_color", "37 22 5") 
            SpawnSet(NPC, "hair_face_color", "37 22 5")
            SpawnSet(NPC, "soga_hair_face_color", "37 22 5")
            SpawnSet(NPC, "hair_type_highlight_color", "27 15 35")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "27 15 35") 
            SpawnSet(NPC, "hair_face_highlight_color", "27 15 35")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "27 15 35")
            SpawnSet(NPC, "hair_color1", "79 28 15")
            SpawnSet(NPC, "soga_hair_color1", "79 28 15") 
            SpawnSet(NPC, "hair_color2", "111 64 0")
            SpawnSet(NPC, "soga_hair_color2", "111 64 0") 
            SpawnSet(NPC, "hair_highlight", "29 21 28")
            SpawnSet(NPC, "soga_hair_highlight", "29 21 28")
        elseif overall_look == 2 then -- White
            SpawnSet(NPC, "skin_color", "229 215 216")
            SpawnSet(NPC, "soga_skin_color", "229 215 216") 
            SpawnSet(NPC, "eye_color", "47 95 110")
            SpawnSet(NPC, "soga_eye_color", "47 95 110") 
            SpawnSet(NPC, "hair_type_color", "119 147 147")
            SpawnSet(NPC, "soga_hair_type_color", "119 147 147") 
            SpawnSet(NPC, "hair_face_color", "119 147 147")
            SpawnSet(NPC, "soga_hair_face_color", "119 147 147")
            SpawnSet(NPC, "hair_type_highlight_color", "193 100 45")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "193 100 45") 
            SpawnSet(NPC, "hair_face_highlight_color", "193 100 45")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "193 100 45")
            SpawnSet(NPC, "hair_color1", "114 112 142")
            SpawnSet(NPC, "soga_hair_color1", "114 112 142") 
            SpawnSet(NPC, "hair_color2", "152 138 129")
            SpawnSet(NPC, "soga_hair_color2", "152 138 129") 
            SpawnSet(NPC, "hair_highlight", "105 26 26")
            SpawnSet(NPC, "soga_hair_highlight", "105 26 26")
        elseif overall_look == 3 then -- Bright yellow
            SpawnSet(NPC, "skin_color", "191 197 197")
            SpawnSet(NPC, "soga_skin_color", "191 197 197") 
            SpawnSet(NPC, "eye_color", "38 78 71")
            SpawnSet(NPC, "soga_eye_color", "38 78 71") 
            SpawnSet(NPC, "hair_type_color", "190 133 13")
            SpawnSet(NPC, "soga_hair_type_color", "190 133 13") 
            SpawnSet(NPC, "hair_face_color", "190 133 13")
            SpawnSet(NPC, "soga_hair_face_color", "190 133 13")
            SpawnSet(NPC, "hair_type_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "233 184 31") 
            SpawnSet(NPC, "hair_face_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "233 184 31")
            SpawnSet(NPC, "hair_color1", "209 131 22")
            SpawnSet(NPC, "soga_hair_color1", "209 131 22") 
            SpawnSet(NPC, "hair_color2", "199 150 48")
            SpawnSet(NPC, "soga_hair_color2", "199 150 48") 
            SpawnSet(NPC, "hair_highlight", "246 219 114")
            SpawnSet(NPC, "soga_hair_highlight", "246 219 114")
        elseif overall_look == 4 then -- Chestnut
            SpawnSet(NPC, "skin_color", "166 167 167")
            SpawnSet(NPC, "soga_skin_color", "166 167 167") 
            SpawnSet(NPC, "eye_color", "52 104 87")
            SpawnSet(NPC, "soga_eye_color", "52 104 87") 
            SpawnSet(NPC, "hair_type_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_type_color", "0 0 0") 
            SpawnSet(NPC, "hair_face_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_face_color", "0 0 0")
            SpawnSet(NPC, "hair_type_highlight_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "0 0 0") 
            SpawnSet(NPC, "hair_face_highlight_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "0 0 0")
            SpawnSet(NPC, "hair_color1", "38 22 21")
            SpawnSet(NPC, "soga_hair_color1", "38 22 21") 
            SpawnSet(NPC, "hair_color2", "120 50 0")
            SpawnSet(NPC, "soga_hair_color2", "120 50 0") 
            SpawnSet(NPC, "hair_highlight", "54 45 28")
            SpawnSet(NPC, "soga_hair_highlight", "54 45 28")
        elseif overall_look == 5 then -- Dark yellow
            SpawnSet(NPC, "skin_color", "191 197 197")
            SpawnSet(NPC, "soga_skin_color", "191 197 197") 
            SpawnSet(NPC, "eye_color", "35 75 76")
            SpawnSet(NPC, "soga_eye_color", "35 75 76") 
            SpawnSet(NPC, "hair_type_color", "97 67 10")
            SpawnSet(NPC, "soga_hair_type_color", "97 67 10") 
            SpawnSet(NPC, "hair_face_color", "97 67 10")
            SpawnSet(NPC, "soga_hair_face_color", "97 67 10")
            SpawnSet(NPC, "hair_type_highlight_color", "139 47 30")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "139 47 30") 
            SpawnSet(NPC, "hair_face_highlight_color", "139 47 30")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "139 47 30")
            SpawnSet(NPC, "hair_color1", "56 33 26")
            SpawnSet(NPC, "soga_hair_color1", "56 33 26") 
            SpawnSet(NPC, "hair_color2", "94 59 11")
            SpawnSet(NPC, "soga_hair_color2", "94 59 11") 
            SpawnSet(NPC, "hair_highlight", "91 21 51")
            SpawnSet(NPC, "soga_hair_highlight", "91 21 51")
        elseif overall_look == 6 then -- Dark yellow NY
            SpawnSet(NPC, "skin_color", "191 197 197")
            SpawnSet(NPC, "soga_skin_color", "191 197 197") 
            SpawnSet(NPC, "eye_color", "38 78 71")
            SpawnSet(NPC, "soga_eye_color", "38 78 71") 
            SpawnSet(NPC, "hair_type_color", "190 133 13")
            SpawnSet(NPC, "soga_hair_type_color", "190 133 13") 
            SpawnSet(NPC, "hair_face_color", "190 133 13")
            SpawnSet(NPC, "soga_hair_face_color", "190 133 13")
            SpawnSet(NPC, "hair_type_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "233 184 31") 
            SpawnSet(NPC, "hair_face_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "233 184 31")
            SpawnSet(NPC, "hair_color1", "209 131 22")
            SpawnSet(NPC, "soga_hair_color1", "209 131 22") 
            SpawnSet(NPC, "hair_color2", "199 150 48")
            SpawnSet(NPC, "soga_hair_color2", "199 150 48") 
            SpawnSet(NPC, "hair_highlight", "246 219 114")
            SpawnSet(NPC, "soga_hair_highlight", "246 219 114")
        end
end

function DwarfCosmetics(NPC)

    local Type = GetModelType(NPC)
    local HairType = 0

        if Type == 109 then
            HairType = MakeRandomInt(1135,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        else
            HairType = MakeRandomInt(1136,1140)
            local bald_chance = MakeRandomInt(1,100)    

                if bald_chance < 11 then
                    SpawnSet(NPC, "hair_type", "0")
                    SpawnSet(NPC, "soga_hair_type", "0")
                else
                    SpawnSet(NPC, "hair_type", HairType)
                    SpawnSet(NPC, "soga_hair_type", HairType)
                end
        end

    local FaceHairType = MakeRandomInt(1164,1191)

        if Type == 109 then    
             local beard_chance = MakeRandomInt(1,100)    

                if beard_chance < 11 then
                    SpawnSet(NPC, "facial_hair_type", FaceHairType)
                    SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)
                else
                    SpawnSet(NPC, "facial_hair_type", "0")
                    SpawnSet(NPC, "soga_facial_hair_type", "0")
                end   
        else
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
            SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)
        end

    local overall_look = MakeRandomInt(1,7)

        if overall_look == 1 then -- Dark beige
            SpawnSet(NPC, "skin_color", "225 171 169")
            SpawnSet(NPC, "soga_skin_color", "225 171 169") 
            SpawnSet(NPC, "eye_color", "70 59 31")
            SpawnSet(NPC, "soga_eye_color", "70 59 31") 
            SpawnSet(NPC, "hair_type_color", "83 77 59")
            SpawnSet(NPC, "soga_hair_type_color", "83 77 59") 
            SpawnSet(NPC, "hair_face_color", "83 77 59")
            SpawnSet(NPC, "soga_hair_face_color", "83 77 59")
            SpawnSet(NPC, "hair_type_highlight_color", "75 47 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "75 47 0") 
            SpawnSet(NPC, "hair_face_highlight_color", "75 47 0")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "75 47 0")
        elseif overall_look == 2 then -- Light reddish beige
            SpawnSet(NPC, "skin_color", "224 178 171")
            SpawnSet(NPC, "soga_skin_color", "224 178 171") 
            SpawnSet(NPC, "eye_color", "59 119 134")
            SpawnSet(NPC, "soga_eye_color", "59 119 134") 
            SpawnSet(NPC, "hair_type_color", "213 133 99")
            SpawnSet(NPC, "soga_hair_type_color", "213 133 99") 
            SpawnSet(NPC, "hair_face_color", "213 133 99")
            SpawnSet(NPC, "soga_hair_face_color", "213 133 99")
            SpawnSet(NPC, "hair_type_highlight_color", "93 33 15")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "93 33 15") 
            SpawnSet(NPC, "hair_face_highlight_color", "93 33 15")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "93 33 15")
        elseif overall_look == 3 then -- Dark brown
            SpawnSet(NPC, "skin_color", "213 189 156")
            SpawnSet(NPC, "soga_skin_color", "213 189 156") 
            SpawnSet(NPC, "eye_color", "50 62 34")
            SpawnSet(NPC, "soga_eye_color", "50 62 34") 
            SpawnSet(NPC, "hair_type_color", "61 52 29")
            SpawnSet(NPC, "soga_hair_type_color", "61 52 29") 
            SpawnSet(NPC, "hair_face_color", "61 52 29")
            SpawnSet(NPC, "soga_hair_face_color", "61 52 29")
            SpawnSet(NPC, "hair_type_highlight_color", "56 47 2")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "56 47 2") 
            SpawnSet(NPC, "hair_face_highlight_color", "56 47 2")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "56 47 2")
        elseif overall_look == 4 then -- Dark Chestnut
            SpawnSet(NPC, "skin_color", "200 198 174")
            SpawnSet(NPC, "soga_skin_color", "200 198 174") 
            SpawnSet(NPC, "eye_color", "34 70 78")
            SpawnSet(NPC, "soga_eye_color", "34 70 78") 
            SpawnSet(NPC, "hair_type_color", "36 22 6")
            SpawnSet(NPC, "soga_hair_type_color", "36 22 6") 
            SpawnSet(NPC, "hair_face_color", "36 22 6")
            SpawnSet(NPC, "soga_hair_face_color", "36 22 6")
            SpawnSet(NPC, "hair_type_highlight_color", "50 41 28")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "50 41 28") 
            SpawnSet(NPC, "hair_face_highlight_color", "50 41 28")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "50 41 28")
        elseif overall_look == 5 then -- Dark orange
            SpawnSet(NPC, "skin_color", "196 146 123")
            SpawnSet(NPC, "soga_skin_color", "196 146 123") 
            SpawnSet(NPC, "eye_color", "121 176 192")
            SpawnSet(NPC, "soga_eye_color", "121 176 192") 
            SpawnSet(NPC, "hair_type_color", "119 43 9")
            SpawnSet(NPC, "soga_hair_type_color", "119 43 9") 
            SpawnSet(NPC, "hair_face_color", "119 43 9")
            SpawnSet(NPC, "soga_hair_face_color", "119 43 9")
            SpawnSet(NPC, "hair_type_highlight_color", "66 28 9")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "66 28 9") 
            SpawnSet(NPC, "hair_face_highlight_color", "66 28 9")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "66 28 9")
        elseif overall_look == 6 then -- White (light grey/yellowish)
            SpawnSet(NPC, "skin_color", "245 248 246")
            SpawnSet(NPC, "soga_skin_color", "245 248 246") 
            SpawnSet(NPC, "eye_color", "131 163 133")
            SpawnSet(NPC, "soga_eye_color", "131 163 133") 
            SpawnSet(NPC, "hair_type_color", "247 239 212")
            SpawnSet(NPC, "soga_hair_type_color", "247 239 212") 
            SpawnSet(NPC, "hair_face_color", "247 239 212")
            SpawnSet(NPC, "soga_hair_face_color", "247 239 212")
            SpawnSet(NPC, "hair_type_highlight_color", "54 47 3")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "54 47 3") 
            SpawnSet(NPC, "hair_face_highlight_color", "54 47 3")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "54 47 3")
        elseif overall_look == 7 then -- Light beige
            SpawnSet(NPC, "skin_color", "209 217 217")
            SpawnSet(NPC, "soga_skin_color", "209 217 217") 
            SpawnSet(NPC, "eye_color", "97 105 57")
            SpawnSet(NPC, "soga_eye_color", "97 105 57") 
            SpawnSet(NPC, "hair_type_color", "159 155 143")
            SpawnSet(NPC, "soga_hair_type_color", "159 155 143") 
            SpawnSet(NPC, "hair_face_color", "159 155 143")
            SpawnSet(NPC, "soga_hair_face_color", "159 155 143")
            SpawnSet(NPC, "hair_type_highlight_color", "165 155 144")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "165 155 144") 
            SpawnSet(NPC, "hair_face_highlight_color", "165 155 144")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "165 155 144")
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
        end
end

function EmoteLoop(NPC)
    local choice = MakeRandomInt(1,14) 
    local timer = math.random(5000,10000)

    if choice == 1 then  -- cackle 
        PlayAnimation(NPC, 125)
        AddTimer(NPC, timer, "EmoteLoop")	
    elseif choice == 2 then  -- converse_male04
	    PlayAnimation(NPC, 2983)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 3 then  -- confused
	    PlayAnimation(NPC, 11214)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 4 then  -- converse_male05
	    PlayAnimation(NPC, 11236)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 5 then  -- converse_male06  
	    PlayAnimation(NPC, 11237)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 6 then  -- converse_male07    
	    PlayAnimation(NPC, 11238)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 7 then  -- converse_male10    
	    PlayAnimation(NPC, 11241)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 8 then  -- converse_male11 
	    PlayAnimation(NPC, 11242)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 9 then  -- doubletake
	    PlayAnimation(NPC, 11415)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 10 then  -- happy  
	    PlayAnimation(NPC, 11668)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 11 then  -- heckno  
	    PlayAnimation(NPC, 11680)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 12 then  -- howl  
	    PlayAnimation(NPC, 11718)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 13 then  -- smile 
	    PlayAnimation(NPC, 12285)
        AddTimer(NPC, timer, "EmoteLoop")
    else  -- wink 
    	PlayAnimation(NPC, 13304)
        AddTimer(NPC, timer, "EmoteLoop")
    end
end