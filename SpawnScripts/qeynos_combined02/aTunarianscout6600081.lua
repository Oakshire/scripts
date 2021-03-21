--[[
    Script Name    : SpawnScripts/qeynos_combined02/aTunarianscout6600081.lua
    Script Author  : Rylec
    Script Date    : 2021.03.18 05:03:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,2)

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
        end
        
    SetEquipment(NPC, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function HumanCosmetics(NPC)

    local hair = MakeRandomInt(1121,1140) -- f: 1123 (f|), 1125 (f|m), 1126 (f|), 1129 (f|), 1130 (f|m), 1133 (|), 1134 (f|m), 1136 (|)

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local beard = MakeRandomInt(1164,1191) -- 1168, 1171, 1184, 1188
    local beard_chance = MakeRandomInt(1,100)    

        if beard_chance < 51 then
            SpawnSet(NPC, "facial_hair_type", "0")
            SpawnSet(NPC, "soga_facial_hair_type", "0")
        else
            SpawnSet(NPC, "facial_hair_type", beard)
            SpawnSet(NPC, "soga_facial_hair_type", beard)
        end

    local overall_look = MakeRandomInt(12,12)
 
        if overall_look == 1 then -- Yellow bright
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
            SpawnSet(NPC, "hair_color1", "38 22 21")
            SpawnSet(NPC, "soga_hair_color1", "38 22 21") 
            SpawnSet(NPC, "hair_color2", "120 50 0")
            SpawnSet(NPC, "soga_hair_color2", "120 50 0") 
            SpawnSet(NPC, "hair_highlight", "29 21 28")
            SpawnSet(NPC, "soga_hair_highlight", "29 21 28") 
        elseif overall_look == 2 then -- Yellow bright white high lights
            SpawnSet(NPC, "skin_color", "244 250 239")
            SpawnSet(NPC, "soga_skin_color", "244 250 239") 
            SpawnSet(NPC, "eye_color", "158 198 210")
            SpawnSet(NPC, "soga_eye_color", "158 198 210") 
            SpawnSet(NPC, "hair_type_color", "184 128 10")
            SpawnSet(NPC, "soga_hair_type_color", "184 128 10") 
            SpawnSet(NPC, "hair_face_color", "184 128 10")
            SpawnSet(NPC, "soga_hair_face_color", "184 128 10")
            SpawnSet(NPC, "hair_type_highlight_color", "244 246 246")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "244 246 246") 
            SpawnSet(NPC, "hair_face_highlight_color", "244 246 246")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "244 246 246")
            SpawnSet(NPC, "hair_color1", "209 131 22")
            SpawnSet(NPC, "soga_hair_color1", "209 131 22") 
            SpawnSet(NPC, "hair_color2", "199 150 48")
            SpawnSet(NPC, "soga_hair_color2", "199 150 48") 
            SpawnSet(NPC, "hair_highlight", "161 165 168")
            SpawnSet(NPC, "soga_hair_highlight", "161 165 168") 
        elseif overall_look == 3 then -- Orange light
            SpawnSet(NPC, "skin_color", "228 177 149")
            SpawnSet(NPC, "soga_skin_color", "228 177 149") 
            SpawnSet(NPC, "eye_color", "144 188 195")
            SpawnSet(NPC, "soga_eye_color", "144 188 195") 
            SpawnSet(NPC, "hair_type_color", "121 38 35")
            SpawnSet(NPC, "soga_hair_type_color", "121 38 35") 
            SpawnSet(NPC, "hair_face_color", "121 38 35")
            SpawnSet(NPC, "soga_hair_face_color", "121 38 35")
            SpawnSet(NPC, "hair_type_highlight_color", "47 33 3")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "47 33 3") 
            SpawnSet(NPC, "hair_face_highlight_color", "47 33 3")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "47 33 3")
            SpawnSet(NPC, "hair_color1", "91 21 51")
            SpawnSet(NPC, "soga_hair_color1", "91 21 51") 
            SpawnSet(NPC, "hair_color2", "159 88 0")
            SpawnSet(NPC, "soga_hair_color2", "159 88 0") 
            SpawnSet(NPC, "hair_highlight", "79 28 15")
            SpawnSet(NPC, "soga_hair_highlight", "79 28 15") 
        elseif overall_look == 4 then -- Yellow bright
            SpawnSet(NPC, "skin_color", "186 197 195")
            SpawnSet(NPC, "soga_skin_color", "186 197 195") 
            SpawnSet(NPC, "eye_color", "33 64 50")
            SpawnSet(NPC, "soga_eye_color", "33 64 50") 
            SpawnSet(NPC, "hair_type_color", "219 157 24")
            SpawnSet(NPC, "soga_hair_type_color", "219 157 24") 
            SpawnSet(NPC, "hair_face_color", "219 157 24")
            SpawnSet(NPC, "soga_hair_face_color", "219 157 24")
            SpawnSet(NPC, "hair_type_highlight_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "0 0 0")
            SpawnSet(NPC, "hair_face_highlight_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "0 0 0")
            SpawnSet(NPC, "hair_color1", "200 165 96")
            SpawnSet(NPC, "soga_hair_color1", "200 165 96") 
            SpawnSet(NPC, "hair_color2", "173 99 44")
            SpawnSet(NPC, "soga_hair_color2", "173 99 44") 
            SpawnSet(NPC, "hair_highlight", "38 22 21")
            SpawnSet(NPC, "soga_hair_highlight", "38 22 21") 
        elseif overall_look == 5 then -- Black light with white stribes
            SpawnSet(NPC, "skin_color", "211 199 150")
            SpawnSet(NPC, "soga_skin_color", "211 199 150") 
            SpawnSet(NPC, "eye_color", "57 120 128")
            SpawnSet(NPC, "soga_eye_color", "57 120 128") 
            SpawnSet(NPC, "hair_type_color", "15 1 21")
            SpawnSet(NPC, "soga_hair_type_color", "15 1 21") 
            SpawnSet(NPC, "hair_face_color", "15 1 21")
            SpawnSet(NPC, "soga_hair_face_color", "15 1 21")
            SpawnSet(NPC, "hair_type_highlight_color", "244 246 246")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "244 246 246")
            SpawnSet(NPC, "hair_face_highlight_color", "244 246 246")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "244 246 246")
            SpawnSet(NPC, "hair_color1", "29 21 28")
            SpawnSet(NPC, "soga_hair_color1", "29 21 28") 
            SpawnSet(NPC, "hair_color2", "39 32 39")
            SpawnSet(NPC, "soga_hair_color2", "39 32 39") 
            SpawnSet(NPC, "hair_highlight", "161 165 168")
            SpawnSet(NPC, "soga_hair_highlight", "161 165 168") 
        elseif overall_look == 6 then -- Orange
            SpawnSet(NPC, "skin_color", "136 118 120")
            SpawnSet(NPC, "soga_skin_color", "136 118 120") 
            SpawnSet(NPC, "eye_color", "84 139 114")
            SpawnSet(NPC, "soga_eye_color", "84 139 114") 
            SpawnSet(NPC, "hair_type_color", "84 0 0")
            SpawnSet(NPC, "soga_hair_type_color", "84 0 0") 
            SpawnSet(NPC, "hair_face_color", "84 0 0")
            SpawnSet(NPC, "soga_hair_face_color", "84 0 0")
            SpawnSet(NPC, "hair_type_highlight_color", "35 24 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "35 24 1")
            SpawnSet(NPC, "hair_face_highlight_color", "35 24 1")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "35 24 1")
            SpawnSet(NPC, "hair_color1", "109 14 49")
            SpawnSet(NPC, "soga_hair_color1", "109 14 49") 
            SpawnSet(NPC, "hair_color2", "185 97 0")
            SpawnSet(NPC, "soga_hair_color2", "185 97 0") 
            SpawnSet(NPC, "hair_highlight", "79 28 15")
            SpawnSet(NPC, "soga_hair_highlight", "79 28 15") 
        elseif overall_look == 7 then -- Grey dark
            SpawnSet(NPC, "skin_color", "243 251 251")
            SpawnSet(NPC, "soga_skin_color", "243 251 251") 
            SpawnSet(NPC, "eye_color", "173 142 88")
            SpawnSet(NPC, "soga_eye_color", "173 142 88") 
            SpawnSet(NPC, "hair_type_color", "49 47 61")
            SpawnSet(NPC, "soga_hair_type_color", "49 47 61") 
            SpawnSet(NPC, "hair_face_color", "49 47 61")
            SpawnSet(NPC, "soga_hair_face_color", "49 47 61")
            SpawnSet(NPC, "hair_type_highlight_color", "42 29 2")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "42 29 2")
            SpawnSet(NPC, "hair_face_highlight_color", "42 29 2")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "42 29 2")
            SpawnSet(NPC, "hair_color1", "43 36 70")
            SpawnSet(NPC, "soga_hair_color1", "43 36 70") 
            SpawnSet(NPC, "hair_color2", "64 76 74")
            SpawnSet(NPC, "soga_hair_color2", "64 76 74") 
            SpawnSet(NPC, "hair_highlight", "79 28 15")
            SpawnSet(NPC, "soga_hair_highlight", "79 28 15") 
        elseif overall_look == 8 then -- Chocolat light
            SpawnSet(NPC, "skin_color", "177 159 108")
            SpawnSet(NPC, "soga_skin_color", "177 159 108") 
            SpawnSet(NPC, "eye_color", "163 201 212")
            SpawnSet(NPC, "soga_eye_color", "163 201 212") 
            SpawnSet(NPC, "hair_type_color", "40 20 7")
            SpawnSet(NPC, "soga_hair_type_color", "40 20 7") 
            SpawnSet(NPC, "hair_face_color", "40 20 7")
            SpawnSet(NPC, "soga_hair_face_color", "40 20 7")
            SpawnSet(NPC, "hair_type_highlight_color", "47 42 59")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "47 42 59")
            SpawnSet(NPC, "hair_face_highlight_color", "47 42 59")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "47 42 59")
            SpawnSet(NPC, "hair_color1", "79 28 15")
            SpawnSet(NPC, "soga_hair_color1", "79 28 15") 
            SpawnSet(NPC, "hair_color2", "111 64 0")
            SpawnSet(NPC, "soga_hair_color2", "111 64 0") 
            SpawnSet(NPC, "hair_highlight", "43 36 70")
            SpawnSet(NPC, "soga_hair_highlight", "43 36 70") 
        elseif overall_look == 9 then -- White bright
            SpawnSet(NPC, "skin_color", "243 250 242")
            SpawnSet(NPC, "soga_skin_color", "243 250 242") 
            SpawnSet(NPC, "eye_color", "152 183 163")
            SpawnSet(NPC, "soga_eye_color", "152 183 163") 
            SpawnSet(NPC, "hair_type_color", "152 173 173")
            SpawnSet(NPC, "soga_hair_type_color", "152 173 173") 
            SpawnSet(NPC, "hair_face_color", "152 173 173")
            SpawnSet(NPC, "soga_hair_face_color", "152 173 173")
            SpawnSet(NPC, "hair_type_highlight_color", "174 69 28")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "174 69 28")
            SpawnSet(NPC, "hair_face_highlight_color", "174 69 28")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "174 69 28")
            SpawnSet(NPC, "hair_color1", "114 112 142")
            SpawnSet(NPC, "soga_hair_color1", "114 112 142") 
            SpawnSet(NPC, "hair_color2", "152 138 129")
            SpawnSet(NPC, "soga_hair_color2", "152 138 129") 
            SpawnSet(NPC, "hair_highlight", "89 21 21")
            SpawnSet(NPC, "soga_hair_highlight", "89 21 21") 
        elseif overall_look == 10 then -- Chestnut yellow stribes
            SpawnSet(NPC, "skin_color", "234 195 198")
            SpawnSet(NPC, "soga_skin_color", "234 195 198") 
            SpawnSet(NPC, "eye_color", "102 74 34")
            SpawnSet(NPC, "soga_eye_color", "102 74 34") 
            SpawnSet(NPC, "hair_type_color", "5 2 2")
            SpawnSet(NPC, "soga_hair_type_color", "5 2 2") 
            SpawnSet(NPC, "hair_face_color", "5 2 2")
            SpawnSet(NPC, "soga_hair_face_color", "5 2 2")
            SpawnSet(NPC, "hair_type_highlight_color", "228 172 24")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "228 172 24")
            SpawnSet(NPC, "hair_face_highlight_color", "228 172 24")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "228 172 24")
            SpawnSet(NPC, "hair_color1", "38 22 21")
            SpawnSet(NPC, "soga_hair_color1", "38 22 21") 
            SpawnSet(NPC, "hair_color2", "120 50 0")
            SpawnSet(NPC, "soga_hair_color2", "120 50 0") 
            SpawnSet(NPC, "hair_highlight", "200 165 96")
            SpawnSet(NPC, "soga_hair_highlight", "200 165 96") 
        elseif overall_look == 11 then -- Orange light
            SpawnSet(NPC, "skin_color", "234 183 184")
            SpawnSet(NPC, "soga_skin_color", "234 183 184") 
            SpawnSet(NPC, "eye_color", "54 109 126")
            SpawnSet(NPC, "soga_eye_color", "54 109 126") 
            SpawnSet(NPC, "hair_type_color", "150 51 27")
            SpawnSet(NPC, "soga_hair_type_color", "150 51 27") 
            SpawnSet(NPC, "hair_face_color", "150 51 27")
            SpawnSet(NPC, "soga_hair_face_color", "150 51 27")
            SpawnSet(NPC, "hair_type_highlight_color", "45 14 18")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "45 14 18")
            SpawnSet(NPC, "hair_face_highlight_color", "45 14 18")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "45 14 18")
            SpawnSet(NPC, "hair_color1", "89 21 21")
            SpawnSet(NPC, "soga_hair_color1", "89 21 21") 
            SpawnSet(NPC, "hair_color2", "171 87 0")
            SpawnSet(NPC, "soga_hair_color2", "171 87 0") 
            SpawnSet(NPC, "hair_highlight", "54 45 28")
            SpawnSet(NPC, "soga_hair_highlight", "54 45 28") 
        elseif overall_look == 12 then -- Orange light
            SpawnSet(NPC, "skin_color", "105 112 109")
            SpawnSet(NPC, "soga_skin_color", "105 112 109") 
            SpawnSet(NPC, "eye_color", "41 82 95")
            SpawnSet(NPC, "soga_eye_color", "41 82 95") 
            SpawnSet(NPC, "hair_type_color", "100 70 10")
            SpawnSet(NPC, "soga_hair_type_color", "100 70 10") 
            SpawnSet(NPC, "hair_face_color", "100 70 10")
            SpawnSet(NPC, "soga_hair_face_color", "100 70 10")
            SpawnSet(NPC, "hair_type_highlight_color", "232 183 30")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "232 183 30")
            SpawnSet(NPC, "hair_face_highlight_color", "232 183 30")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "232 183 30")
            SpawnSet(NPC, "hair_color1", "56 33 26")
            SpawnSet(NPC, "soga_hair_color1", "56 33 26") 
            SpawnSet(NPC, "hair_color2", "94 59 11")
            SpawnSet(NPC, "soga_hair_color2", "94 59 11") 
            SpawnSet(NPC, "hair_highlight", "246 219 114")
            SpawnSet(NPC, "soga_hair_highlight", "246 219 114") 
        end
end
