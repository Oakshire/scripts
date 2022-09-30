--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.29 03:09:02
    Script Purpose : 
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end


    

function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_garbled_7e085e6a.mp3", "Hih hih hihaaaaaa   gillysee   beeeetahhh     gim(laughing)", "", 3399890614, 264152008, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_garbled_4e60f28a.mp3", "Eetabee wazzah net hava see", "", 1653288173, 4188680709, Player, 20)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_garbled_27d93e2a.mp3", "Neeeh neeeeh  vooooeee    waddasee    gai geee", "", 4004358685, 1661226684, Player, 20)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_garbled_91577ded.mp3", "Kai leeza watawonga sooo beeta hee hee(laugh)", "", 937221476, 2685779061, Player, 20)
     end     
end

 function aggro(NPC,Player)   
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Player)
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=33 and IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_aggro_3e6d7bc3.mp3", "They want to kill us all! Charge!","", 1297886042, 938149593, Player, 20)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_7623c3ad.mp3", "Hit them! Smash the face!", "", 1669181471, 1013046182, Player, 20)
        elseif choice == 3 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_aggro_c4b47779.mp3", "Attack! Attack!  Kill everything!", "", 3380426802, 2678177698, Player, 20)
         elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_aggro_b639fe0e.mp3", "Help! Help! Big ones coming!", "", 3389049362, 1602980703, Player, 20)
        end
end   
end
end


function death(NPC,Player)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_death_a117394f.mp3", "We no can win, must flee!", "", 700157407, 3625236831, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_death_de31a5b3.mp3", "Run away! These ones too strong!", "", 45632181, 2602785034, Player, 20)
        end
    end
end
end
end


function FifteenCall(NPC,Player)
 if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Player)and  GetTempVariable(NPC, "CalloutTimer")== "false" then
    if math.random(0,100)<=33 then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else       
      local choice = MakeRandomInt(1,4)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_8c0ceaf2.mp3", "Me want to eat you skin!", "", 4260304461, 2785283618, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_164e4a4f.mp3", "Now, I go get little one ...ready?", "", 3942794123, 4207602069, Player, 20)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_fbf65c07.mp3", "Keep hitting till all fall down!", "", 4058596532, 1515408483, Player, 20)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_c_b9bf6e4d.mp3", "This one goes BOOM!", "", 2215482861, 2562924174, Player, 20)
        end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Player)
    end
end  
end





function victory(NPC,Player)
    if IsPlayer(Player)and  not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    elseif  IsPlayer(Player) and HasLanguage(Player,20 )then
	    PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_victory_f76bf039.mp3", "What I do now?", "", 1862619283, 2206242734, Player, 20)
    end
end

