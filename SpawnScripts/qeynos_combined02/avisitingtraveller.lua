--[[
    Script Name    : SpawnScripts/qeynos_combined02/avisitingtraveller.lua
    Script Author  : Rylec
    Script Date    : 2021.03.14 09:03:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(7,8)

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
                    local Erudite_Tattoo = MakeRandomInt(1597,1606)
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

    local overall_look = MakeRandomInt(1,1)

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
        end
end

function HalflingCosmetics(NPC)

    local hair = MakeRandomInt(1133,1140)

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local overall_look = MakeRandomInt(1,1)

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
        end
end

-- NOT HERE
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

function KerraCosmetics(NPC)
    Random_Model = MakeRandomInt(10,10) -- 82, 91, 92, 93, 94, 95, 97, 98, 100, 101

        if Random_Model == 1 then
            SetModelType(NPC, "82")
            SpawnSet(NPC, "soga_model_type", "82")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
            SpawnSet(NPC, "skin_color", "112 58 34")
            SpawnSet(NPC, "soga_skin_color", "112 58 34") 
        elseif Random_Model == 2 then
            SetModelType(NPC, "91")
            SpawnSet(NPC, "soga_model_type", "91")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            SpawnSet(NPC, "skin_color", "204 195 164")
            SpawnSet(NPC, "soga_skin_color", "204 195 164") 
        elseif Random_Model == 3 then
            SetModelType(NPC, "92")
            SpawnSet(NPC, "soga_model_type", "92")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
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
        elseif Random_Model == 4 then
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
                else 
                    SpawnSet(NPC, "skin_color", "95 29 1")
                    SpawnSet(NPC, "soga_skin_color", "95 29 1") 
                end
        elseif Random_Model == 6 then
            SetModelType(NPC, "95")
            SpawnSet(NPC, "soga_model_type", "95")
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
            SpawnSet(NPC, "skin_color", "150 61 12")
            SpawnSet(NPC, "soga_skin_color", "150 61 12") 
        elseif Random_Model == 7 then
            SetModelType(NPC, "97")
            SpawnSet(NPC, "soga_model_type", "97")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
            local color_variation = MakeRandomInt(1,2)
                if color_variation == 1 then
                    SpawnSet(NPC, "skin_color", "130 83 29")
                    SpawnSet(NPC, "soga_skin_color", "130 83 29")               
                else 
                    SpawnSet(NPC, "skin_color", "247 247 248")
                    SpawnSet(NPC, "soga_skin_color", "247 247 248") 
                end
        elseif Random_Model == 8 then
            SetModelType(NPC, "98")
            SpawnSet(NPC, "soga_model_type", "98")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
            SpawnSet(NPC, "skin_color", "126 67 40")
            SpawnSet(NPC, "soga_skin_color", "126 67 40")  
        elseif Random_Model == 9 then
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

    local overall_look = MakeRandomInt(4,4) -- 1431, 3787, 3789, 3790

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
        end
end