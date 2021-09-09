--[[
    Script Name    : SpawnScripts/qeynos_combined02/avisitingtraveller.lua
    Script Author  : Rylec
    Script Date    : 2021.03.14 09:03:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(5,5)

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
            SetModelType(NPC, "135") -- high elf female
            SpawnSet(NPC, "soga_model_type", "135")
            SpawnSet(NPC, "chest_type", "5521")
            SpawnSet(NPC, "legs_type", "5522")
            HighElfCosmetics(NPC)
        elseif model == 4 then
            SetModelType(NPC, "136") -- high elf male
            SpawnSet(NPC, "soga_model_type", "136")
            SpawnSet(NPC, "chest_type", "5525")
            SpawnSet(NPC, "legs_type", "5526")
            HighElfCosmetics(NPC)
        elseif model == 5 then
            SetModelType(NPC, "107") -- halfling female
            SpawnSet(NPC, "soga_model_type", "107")
--            SpawnSet(NPC, "chest_type", "5533")
--            SpawnSet(NPC, "legs_type", "5534")
            HalflingCosmetics(NPC)
        elseif model == 6 then
            SetModelType(NPC, "108") -- halfling male
            SpawnSet(NPC, "soga_model_type", "108")
            SpawnSet(NPC, "chest_type", "5517")
            SpawnSet(NPC, "legs_type", "5518")
            HalflingCosmetics(NPC)
        elseif model == 7 or model == 8 then
            local Erudite_Gender = MakeRandomInt(1,2)

                if Erudite_Gender == 1 then
                    SpawnSet(NPC, "chest_type", "5481")
                    SpawnSet(NPC, "legs_type", "5482")
                    local Erudite_Tattoo = MakeRandomInt(1587,1596)
                    SetModelType(NPC, Erudite_Tattoo) -- erudite female
                    SpawnSet(NPC, "soga_model_type", Erudite_Tattoo)
                else
                    SpawnSet(NPC, "chest_type", "5485")
                    SpawnSet(NPC, "legs_type", "5486")
                    local Erudite_Tattoo = MakeRandomInt(1597,1606) -- 119 missing
                    SetModelType(NPC, Erudite_Tattoo) -- erudite male
                    SpawnSet(NPC, "soga_model_type", Erudite_Tattoo)                
                end
            EruditeCosmetics(NPC)
        elseif model == 9 or model == 10 then
            KerraCosmetics(NPC)
        elseif model == 11 or model == 12 then
            FroglokCosmetics(NPC)
        end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EruditeCosmetics(NPC)

        SpawnSet(NPC, "hair_type", "0")
        SpawnSet(NPC, "soga_hair_type", "0")

    local overall_look = MakeRandomInt(12,12)

        if overall_look == 1 then -- Beige golden
            SpawnSet(NPC, "skin_color", "136 103 55")
            SpawnSet(NPC, "soga_skin_color", "136 103 55") 
            SpawnSet(NPC, "eye_color", "86 86 0")
            SpawnSet(NPC, "soga_eye_color", "86 86 0")
        elseif overall_look == 2 then -- Rust grey
            SpawnSet(NPC, "skin_color", "86 29 16")
            SpawnSet(NPC, "soga_skin_color", "86 29 16") 
            SpawnSet(NPC, "eye_color", "0 79 79")
            SpawnSet(NPC, "soga_eye_color", "0 79 79")
        elseif overall_look == 3 then -- Gold greyish
            SpawnSet(NPC, "skin_color", "165 132 92")
            SpawnSet(NPC, "soga_skin_color", "165 132 92") 
            SpawnSet(NPC, "eye_color", "0 60 39")
            SpawnSet(NPC, "soga_eye_color", "0 60 39") 
        elseif overall_look == 4 then -- Grey
            SpawnSet(NPC, "skin_color", "127 103 100")
            SpawnSet(NPC, "soga_skin_color", "109 60 47") 
            SpawnSet(NPC, "eye_color", "20 217 164")
            SpawnSet(NPC, "soga_eye_color", "20 217 164") 
        elseif overall_look == 5 then -- Greyish golden
            SpawnSet(NPC, "skin_color", "144 132 86")
            SpawnSet(NPC, "soga_skin_color", "144 132 86") 
            SpawnSet(NPC, "eye_color", "0 24 24")
            SpawnSet(NPC, "soga_eye_color", "0 24 24") 
        elseif overall_look == 6 then -- Greyish green
            SpawnSet(NPC, "skin_color", "101 95 57")
            SpawnSet(NPC, "soga_skin_color", "101 95 57") 
            SpawnSet(NPC, "eye_color", "0 145 146")
            SpawnSet(NPC, "soga_eye_color", "0 145 146") 
        elseif overall_look == 7 then -- Rust grey light
            SpawnSet(NPC, "skin_color", "109 60 47")
            SpawnSet(NPC, "soga_skin_color", "109 60 47") 
            SpawnSet(NPC, "eye_color", "20 217 164")
            SpawnSet(NPC, "soga_eye_color", "20 217 164") 
        elseif overall_look == 8 then -- Greyish green dark
            SpawnSet(NPC, "skin_color", "72 69 39")
            SpawnSet(NPC, "soga_skin_color", "72 69 39") 
            SpawnSet(NPC, "eye_color", "192 192 0")
            SpawnSet(NPC, "soga_eye_color", "192 192 0") 
        elseif overall_look == 9 then -- Golden very light
            SpawnSet(NPC, "skin_color", "175 160 108")
            SpawnSet(NPC, "soga_skin_color", "175 160 108") 
            SpawnSet(NPC, "eye_color", "0 189 4")
            SpawnSet(NPC, "soga_eye_color", "0 189 4") 
        elseif overall_look == 10 then -- Golden very light
            SpawnSet(NPC, "skin_color", "175 163 120")
            SpawnSet(NPC, "soga_skin_color", "175 163 120") 
            SpawnSet(NPC, "eye_color", "151 66 0")
            SpawnSet(NPC, "soga_eye_color", "151 66 0")
        elseif overall_look == 11 then -- Golden light
            SpawnSet(NPC, "skin_color", "155 143 88")
            SpawnSet(NPC, "soga_skin_color", "155 143 88") 
            SpawnSet(NPC, "eye_color", "95 96 0")
            SpawnSet(NPC, "soga_eye_color", "95 96 0") 
        elseif overall_look == 12 then -- Grey light
            SpawnSet(NPC, "skin_color", "101 95 57")
            SpawnSet(NPC, "soga_skin_color", "101 95 57") 
            SpawnSet(NPC, "eye_color", "0 145 146")
            SpawnSet(NPC, "soga_eye_color", "0 145 146") 
        end
end

function HalflingCosmetics(NPC)

    local hair = MakeRandomInt(1133,1140) -- 1113 (|m), 1116 (f|), 1124 (f|)

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local overall_look = MakeRandomInt(10,10)

        if overall_look == 1 then -- Brown light
            SpawnSet(NPC, "skin_color", "236 242 242")
            SpawnSet(NPC, "soga_skin_color", "236 242 242") 
            SpawnSet(NPC, "eye_color", "37 77 81")
            SpawnSet(NPC, "soga_eye_color", "37 77 81") 
            SpawnSet(NPC, "hair_type_color", "104 93 16")
            SpawnSet(NPC, "soga_hair_type_color", "104 93 16") 
            SpawnSet(NPC, "hair_type_highlight_color", "0 0 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "0 0 0")
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 2 then -- Brown orange
            SpawnSet(NPC, "skin_color", "241 205 204")
            SpawnSet(NPC, "soga_skin_color", "241 205 204") 
            SpawnSet(NPC, "eye_color", "50 104 95")
            SpawnSet(NPC, "soga_eye_color", "50 104 95") 
            SpawnSet(NPC, "hair_type_color", "131 92 0")
            SpawnSet(NPC, "soga_hair_type_color", "131 92 0") 
            SpawnSet(NPC, "hair_type_highlight_color", "167 60 30")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "167 60 30") 
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 3 then -- Black dark
            SpawnSet(NPC, "skin_color", "250 228 229")
            SpawnSet(NPC, "soga_skin_color", "250 228 229") 
            SpawnSet(NPC, "eye_color", "137 186 200")
            SpawnSet(NPC, "soga_eye_color", "137 186 200") 
            SpawnSet(NPC, "hair_type_color", "11 9 6")
            SpawnSet(NPC, "soga_hair_type_color", "11 9 6") 
            SpawnSet(NPC, "hair_type_highlight_color", "62 57 21")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "62 57 21") 
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 4 then -- Chestnut light
            SpawnSet(NPC, "skin_color", "240 242 214")
            SpawnSet(NPC, "soga_skin_color", "240 242 214") 
            SpawnSet(NPC, "eye_color", "49 29 9")
            SpawnSet(NPC, "soga_eye_color", "49 29 9") 
            SpawnSet(NPC, "hair_type_color", "35 24 1")
            SpawnSet(NPC, "soga_hair_type_color", "35 24 1") 
            SpawnSet(NPC, "hair_type_highlight_color", "100 70 10")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "100 70 10") 
            SpawnSet(NPC, "hair_color1", "79 28 15")
            SpawnSet(NPC, "soga_hair_color1", "79 28 15") 
            SpawnSet(NPC, "hair_color2", "111 64 0")
            SpawnSet(NPC, "soga_hair_color2", "111 64 0") 
            SpawnSet(NPC, "hair_highlight", "56 33 26")
            SpawnSet(NPC, "soga_hair_highlight", "56 33 26")
        elseif overall_look == 5 then -- Orange light golden
            SpawnSet(NPC, "skin_color", "204 217 217")
            SpawnSet(NPC, "soga_skin_color", "204 217 217") 
            SpawnSet(NPC, "eye_color", "157 187 169")
            SpawnSet(NPC, "soga_eye_color", "157 187 169") 
            SpawnSet(NPC, "hair_type_color", "208 129 3")
            SpawnSet(NPC, "soga_hair_type_color", "208 129 3") 
            SpawnSet(NPC, "hair_type_highlight_color", "31 12 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "31 12 0") 
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 6 then -- Orange brown with bright high lights
            SpawnSet(NPC, "skin_color", "240 242 214")
            SpawnSet(NPC, "soga_skin_color", "240 242 214") 
            SpawnSet(NPC, "eye_color", "143 189 203")
            SpawnSet(NPC, "soga_eye_color", "143 189 203") 
            SpawnSet(NPC, "hair_type_color", "97 67 9")
            SpawnSet(NPC, "soga_hair_type_color", "97 67 9") 
            SpawnSet(NPC, "hair_type_highlight_color", "233 184 31")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "233 184 31") 
            SpawnSet(NPC, "hair_color1", "56 33 26")
            SpawnSet(NPC, "soga_hair_color1", "56 33 26") 
            SpawnSet(NPC, "hair_color2", "94 59 11")
            SpawnSet(NPC, "soga_hair_color2", "94 59 11") 
            SpawnSet(NPC, "hair_highlight", "246 219 114")
            SpawnSet(NPC, "soga_hair_highlight", "246 219 114") 
        elseif overall_look == 7 then -- Orange with bright high lights
            SpawnSet(NPC, "skin_color", "155 162 162")
            SpawnSet(NPC, "soga_skin_color", "155 162 162") 
            SpawnSet(NPC, "eye_color", "74 70 37")
            SpawnSet(NPC, "soga_eye_color", "74 70 37") 
            SpawnSet(NPC, "hair_type_color", "114 31 28")
            SpawnSet(NPC, "soga_hair_type_color", "114 31 28") 
            SpawnSet(NPC, "hair_type_highlight_color", "192 99 44")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "192 99 44") 
            SpawnSet(NPC, "hair_color1", "91 21 51")
            SpawnSet(NPC, "soga_hair_color1", "91 21 51") 
            SpawnSet(NPC, "hair_color2", "159 88 0")
            SpawnSet(NPC, "soga_hair_color2", "159 88 0") 
            SpawnSet(NPC, "hair_highlight", "105 26 26")
            SpawnSet(NPC, "soga_hair_highlight", "105 26 26") 
        elseif overall_look == 8 then -- Brown light with bright high lights
            SpawnSet(NPC, "skin_color", "223 233 225")
            SpawnSet(NPC, "soga_skin_color", "223 233 225") 
            SpawnSet(NPC, "eye_color", "128 181 196")
            SpawnSet(NPC, "soga_eye_color", "128 181 196") 
            SpawnSet(NPC, "hair_type_color", "60 56 24")
            SpawnSet(NPC, "soga_hair_type_color", "60 56 24") 
            SpawnSet(NPC, "hair_type_highlight_color", "232 181 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "232 181 0") 
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        elseif overall_look == 9 then -- Orange light
            SpawnSet(NPC, "skin_color", "237 220 219")
            SpawnSet(NPC, "soga_skin_color", "237 220 219") 
            SpawnSet(NPC, "eye_color", "38 79 91")
            SpawnSet(NPC, "soga_eye_color", "38 79 91") 
            SpawnSet(NPC, "hair_type_color", "95 79 62")
            SpawnSet(NPC, "soga_hair_type_color", "95 79 62") 
            SpawnSet(NPC, "hair_type_highlight_color", "171 64 21")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "171 64 21") 
            SpawnSet(NPC, "hair_color1", "239 221 86")
            SpawnSet(NPC, "soga_hair_color1", "239 221 86") 
            SpawnSet(NPC, "hair_color2", "99 53 22")
            SpawnSet(NPC, "soga_hair_color2", "99 53 22") 
            SpawnSet(NPC, "hair_highlight", "105 26 26")
            SpawnSet(NPC, "soga_hair_highlight", "105 26 26") 
        elseif overall_look == 10 then -- Brown orange light
            SpawnSet(NPC, "skin_color", "236 199 197")
            SpawnSet(NPC, "soga_skin_color", "236 199 197") 
            SpawnSet(NPC, "eye_color", "156 195 200")
            SpawnSet(NPC, "soga_eye_color", "156 195 200") 
            SpawnSet(NPC, "hair_type_color", "121 82 35")
            SpawnSet(NPC, "soga_hair_type_color", "121 82 35") 
            SpawnSet(NPC, "hair_type_highlight_color", "79 33 0")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "79 33 0") 
            SpawnSet(NPC, "hair_color1", "0 0 0")
            SpawnSet(NPC, "soga_hair_color1", "0 0 0") 
            SpawnSet(NPC, "hair_color2", "0 0 0")
            SpawnSet(NPC, "soga_hair_color2", "0 0 0") 
            SpawnSet(NPC, "hair_highlight", "0 0 0")
            SpawnSet(NPC, "soga_hair_highlight", "0 0 0") 
        end
end

function KerraCosmetics(NPC)
    SpawnSet(NPC, "eye_color", "200 220 196")
    SpawnSet(NPC, "soga_eye_color", "200 220 196") 

    Random_Model = MakeRandomInt(1,1) -- 81, 82, 91, 92, 93, 94, 95, 97, 98, 100, 101

        if Random_Model == 1 then
            SetModelType(NPC, "81")
            SpawnSet(NPC, "soga_model_type", "81")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            SpawnSet(NPC, "skin_color", "82 45 14")
            SpawnSet(NPC, "soga_skin_color", "82 45 14")               
        elseif Random_Model == 2 then
            SetModelType(NPC, "82")
            SpawnSet(NPC, "soga_model_type", "82")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "112 58 34")
                    SpawnSet(NPC, "soga_skin_color", "112 58 34")               
                elseif color_variation == 2 then 
                    SpawnSet(NPC, "skin_color", "253 247 232")
                    SpawnSet(NPC, "soga_skin_color", "253 247 232")
                end
        elseif Random_Model == 4 then
            SetModelType(NPC, "91")
            SpawnSet(NPC, "soga_model_type", "91")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            SpawnSet(NPC, "skin_color", "204 195 164")
            SpawnSet(NPC, "soga_skin_color", "204 195 164") 
            SpawnSet(NPC, "eye_color", "222 35 32")
            SpawnSet(NPC, "soga_eye_color", "222 35 32") 
        elseif Random_Model == 5 then
            SetModelType(NPC, "92")
            SpawnSet(NPC, "soga_model_type", "92")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            local color_variation = MakeRandomInt(1,5)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "129 125 113")
                    SpawnSet(NPC, "soga_skin_color", "129 125 113")               
                elseif color_variation == 2 then 
                    SpawnSet(NPC, "skin_color", "132 37 1")
                    SpawnSet(NPC, "soga_skin_color", "132 37 1")
                elseif color_variation == 3 then 
                    SpawnSet(NPC, "skin_color", "152 93 67")
                    SpawnSet(NPC, "soga_skin_color", "152 93 67")
                elseif color_variation == 4 then 
                    SpawnSet(NPC, "skin_color", "175 153 74")
                    SpawnSet(NPC, "soga_skin_color", "175 153 74")
                elseif color_variation == 5 then  
                    SpawnSet(NPC, "skin_color", "254 252 248")
                    SpawnSet(NPC, "soga_skin_color", "254 252 248")
                end  
        elseif Random_Model == 6 then
            SetModelType(NPC, "93")
            SpawnSet(NPC, "soga_model_type", "93")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            SpawnSet(NPC, "skin_color", "139 38 1")
            SpawnSet(NPC, "soga_skin_color", "139 38 1") 
        elseif Random_Model == 5 then
            SetModelType(NPC, "94")
            SpawnSet(NPC, "soga_model_type", "94")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "74 64 39")
                    SpawnSet(NPC, "soga_skin_color", "74 64 39")               
                elseif color_variation == 2 then 
                    SpawnSet(NPC, "skin_color", "95 29 1")
                    SpawnSet(NPC, "soga_skin_color", "95 29 1") 
                end
        elseif Random_Model == 7 then
            SetModelType(NPC, "95")
            SpawnSet(NPC, "soga_model_type", "95")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "150 61 12")
                    SpawnSet(NPC, "soga_skin_color", "150 61 12") 
                else
                    SpawnSet(NPC, "skin_color", "221 188 99")
                    SpawnSet(NPC, "soga_skin_color", "221 188 99") 
                end
        elseif Random_Model == 8 then
            SetModelType(NPC, "97")
            SpawnSet(NPC, "soga_model_type", "97")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
            local color_variation = MakeRandomInt(1,3)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "127 90 37")
                    SpawnSet(NPC, "soga_skin_color", "127 90 37")               
                elseif color_variation == 2 then 
                    SpawnSet(NPC, "skin_color", "130 83 29")
                    SpawnSet(NPC, "soga_skin_color", "130 83 29") 
                elseif color_variation == 3 then 
                    SpawnSet(NPC, "skin_color", "247 247 248")
                    SpawnSet(NPC, "soga_skin_color", "247 247 248")
                end
        elseif Random_Model == 9 then
            SetModelType(NPC, "98")
            SpawnSet(NPC, "soga_model_type", "98")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "126 67 40")
                    SpawnSet(NPC, "soga_skin_color", "126 67 40") 
                else 
                    SpawnSet(NPC, "skin_color", "159 89 42")
                    SpawnSet(NPC, "soga_skin_color", "159 89 42") 
                end
        elseif Random_Model == 10 then
            SetModelType(NPC, "100")
            SpawnSet(NPC, "soga_model_type", "100")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
             local color_variation = MakeRandomInt(1,3)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "25 9 1")
                    SpawnSet(NPC, "soga_skin_color", "25 9 1")               
                elseif color_variation == 2 then
                    SpawnSet(NPC, "skin_color", "146 72 19")
                    SpawnSet(NPC, "soga_skin_color", "146 72 19") 
                    SpawnSet(NPC, "eye_color", "34 59 37")
                    SpawnSet(NPC, "soga_eye_color", "34 59 37") 
                else 
                    SpawnSet(NPC, "skin_color", "163 146 139")
                    SpawnSet(NPC, "soga_skin_color", "163 146 139") 
                end  
        else
            SetModelType(NPC, "101")
            SpawnSet(NPC, "soga_model_type", "101")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
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

function FroglokCosmetics(NPC)
    SpawnSet(NPC, "hair_type", "0")
    SpawnSet(NPC, "chest_type", "0")
    SpawnSet(NPC, "legs_type", "5494")

    local overall_look = MakeRandomInt(1,1) -- 1431, 3787, 3789, 3790, 4936, 4943

        if overall_look == 1 then -- 1431
            SetModelType(NPC, "1431")
            SpawnSet(NPC, "soga_model_type", "1431")
            SpawnSet(NPC, "skin_color", "112 58 34")
            SpawnSet(NPC, "soga_skin_color", "112 58 34") 
            SpawnSet(NPC, "eye_color", "38 112 112")
            SpawnSet(NPC, "soga_eye_color", "38 112 112") 
        elseif overall_look == 2 then -- 3789
            SetModelType(NPC, "3789")
            SpawnSet(NPC, "soga_model_type", "3789")
            SpawnSet(NPC, "skin_color", "19 0 19")
            SpawnSet(NPC, "soga_skin_color", "19 0 19") 
            SpawnSet(NPC, "eye_color", "0 78 95")
            SpawnSet(NPC, "soga_eye_color", "0 78 95")
        elseif overall_look == 3 then -- 3790
            SetModelType(NPC, "3790")
            SpawnSet(NPC, "soga_model_type", "3790")
            SpawnSet(NPC, "skin_color", "100 125 125")
            SpawnSet(NPC, "soga_skin_color", "100 125 125") 
            SpawnSet(NPC, "eye_color", "19 106 106")
            SpawnSet(NPC, "soga_eye_color", "19 106 106") 
        elseif overall_look == 4 then -- 3787
            SetModelType(NPC, "3787")
            SpawnSet(NPC, "soga_model_type", "3787")
            SpawnSet(NPC, "skin_color", "60 56 24")
            SpawnSet(NPC, "soga_skin_color", "60 56 24") 
            SpawnSet(NPC, "eye_color", "0 107 109")
            SpawnSet(NPC, "soga_eye_color", "0 107 109") 
        elseif overall_look == 5 then -- 4936
            SetModelType(NPC, "4936")
            SpawnSet(NPC, "soga_model_type", "4936")
            SpawnSet(NPC, "skin_color", "80 10 17")
            SpawnSet(NPC, "soga_skin_color", "80 10 17") 
            SpawnSet(NPC, "eye_color", "6 0 100")
            SpawnSet(NPC, "soga_eye_color", "6 0 100") 
        elseif overall_look == 6 then -- 4943
            SetModelType(NPC, "4943")
            SpawnSet(NPC, "soga_model_type", "4943")
            SpawnSet(NPC, "skin_color", "0 1 47")
            SpawnSet(NPC, "soga_skin_color", "0 1 47") 
            SpawnSet(NPC, "eye_color", "0 180 173")
            SpawnSet(NPC, "soga_eye_color", "0 180 173") 
        elseif overall_look == 7 then -- 1431
            SetModelType(NPC, "1431")
            SpawnSet(NPC, "soga_model_type", "1431")
            SpawnSet(NPC, "skin_color", "0 175 175")
            SpawnSet(NPC, "soga_skin_color", "112 58 34") 
            SpawnSet(NPC, "eye_color", "38 112 112")
            SpawnSet(NPC, "soga_eye_color", "38 112 112") 
        end
end