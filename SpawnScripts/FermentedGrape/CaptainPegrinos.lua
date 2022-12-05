--[[
    Script Name    : SpawnScripts/FermentedGrape/CaptainPegrinos.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 05:12:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

local Quest = 5785

   local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3"};

function spawn(NPC)

end

function hailed(NPC, Spawn)
    PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], "", "glare", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "Take it easy on her, it`s hard to perform!","Dialog1")	
	StartConversation(conversation, NPC, Spawn, "Hey waddya want? Her performance is terrible and we`re gonna fix that...for good.")
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Don't be a fool! People come here to take it easy- not to get their face punched!","Attack1")
	AddConversationOption(conversation, "How do you expect her to get better if you hurt her now?","Dialog2")
	AddConversationOption(conversation, "Surely you and your lot have better things to do than attack a minstrel?","Dialog3")
	StartConversation(conversation, NPC, Spawn, "Now what should we be doing that? Her song was off-key, the lyrics were terrible, and I think one of me hearties ruptured an ear listenin` to her rot!")
end

function Attack1(NPC,Spawn)
    PlayFlavor(NPC,"","Did ya hear that boys? We've been called fools! Time to punch this one's face!","shakefist",0,0,Spawn)
 	FaceTarget(NPC, Spawn)
    AddTimer(NPC,3000,"AttackFinal",1,Spawn)   
end



function AttackFinal(NPC,Spawn)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781037) --FIRSTMATE  
local Pirate2 = GetSpawnByLocationID(zone, 133781036) --CUTTER  
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034)   
local Captain = GetSpawnByLocationID(zone, 133781033)  

Attack(Pirate1,Spawn)
Attack(Pirate2,Spawn)
Attack(Pirate3,Spawn)
Attack(Pirate4,Spawn)
Attack(Pirate5,Spawn)
Attack(Pirate6,Spawn)
Attack(Captain,Spawn)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "But she`s just a poor, innocent bard!","Dialog2a")
	AddConversationOption(conversation, "How about you leave her alone and nobody gets hurt...","Attack2")
	StartConversation(conversation, NPC, Spawn, "Ya weak-bellied scoundrel! We`re not expectin`her to get better, that`s rather the point!")
end

function Attack2(NPC,Spawn)
    PlayFlavor(NPC,"","Nobody get's hurt except YOU that is! Haha! It's time, boys! Get'm!","chuckle",0,0,Spawn)
 	FaceTarget(NPC, Spawn)
    AddTimer(NPC,3000,"AttackFinal",1,Spawn)   
PlaySound(Spawn,"sounds/e3_scripted/mage_ohh02.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end

function Dialog2a(NPC,Spawn)
    PlayFlavor(NPC,"","Àrrr! Ya went and made em run! It`s just up to me and my mates here now! Prepare yerself, ya angered the wrong captain!","grumble",0,0,Spawn)
 	FaceTarget(NPC, Spawn)
    AddTimer(NPC,4500,"AttackFinal",1,Spawn)   
    SendPopUpMessage(Spawn,"Some pirates disperse after your conversation with their captain.",250,250,250)
    PlaySound(Spawn,"sounds/e3_scripted/mage_boo01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
 zone = GetZone(NPC)
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034) 
Despawn(Pirate3)
Despawn(Pirate4)
Despawn(Pirate5)
Despawn(Pirate6)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "But she`s just a poor, innocent bard!","Dialog2a")
	AddConversationOption(conversation, "You want to tumble? I've got your answer right here!","Attack3")
	StartConversation(conversation, NPC, Spawn, "'Tis our first landfall in months just to hear this dribble! Give me one reason I shouldn't bash some teeth in...")
end


function Attack3(NPC,Spawn)
    PlayFlavor(NPC,"","Let's gett'm boys! Bring me those teeth!","cutthroat",0,0,Spawn)
 	FaceTarget(NPC, Spawn)
    AddTimer(NPC,3000,"AttackFinal",1,Spawn)   
PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end


function aggro(NPC,Spawn)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781037) --FIRSTMATE  
local Pirate2 = GetSpawnByLocationID(zone, 133781036) --CUTTER  
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034)   
local Captain = GetSpawnByLocationID(zone, 133781033)  

Attack(Pirate1,Spawn)
Attack(Pirate2,Spawn)
Attack(Pirate3,Spawn)
Attack(Pirate4,Spawn)
Attack(Pirate5,Spawn)
Attack(Pirate6,Spawn)
Attack(Captain,Spawn)
end

function death(NPC,Spawn)
CloseConversation(NPC,Spawn)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781037) --FIRSTMATE  
local Pirate2 = GetSpawnByLocationID(zone, 133781036) --CUTTER  
local Pirate3 = GetSpawnByLocationID(zone, 133781038)   
local Pirate4 = GetSpawnByLocationID(zone, 133781039)   
local Pirate5 = GetSpawnByLocationID(zone, 133781035)   
local Pirate6 = GetSpawnByLocationID(zone, 133781034)   
local Captain = GetSpawnByLocationID(zone, 133781033)

local Bartender = GetSpawnByLocationID(zone, 133781031)  
local Bard = GetSpawnByLocationID(zone, 133781032)  
local Bobick = GetSpawnByLocationID(zone, 133781027)  

if not IsAlive(Pirate1) and not IsAlive(Pirate2) and not IsAlive(Pirate3) and not IsAlive(Pirate4) and not IsAlive(Pirate5) and not IsAlive(Pirate6) and not IsAlive(Captain) then
    if HasQuest(Spawn,5784) then
    SetStepComplete(Spawn,5784,1)
    end
SpawnSet(Bartender,"name","a relieved bartender")
SpawnSet(Bartender,"mood_state",0)
SpawnSet(Bartender,"action_state",11214)
SpawnSet(Bard,"name","a thankful bard")
SpawnSet(Bard,"mood_state",11854)
SpawnSet(Bard,"action_state",0)
SpawnSet(Bobick,"action_state",11422)
SpawnSet(Bobick,"name","a satisfied patron")

end
end
