--[[
    Script Name    : Spells/commands.lua
    Script Purpose : Process game "commands" that use a cast bar
    Script Author  : Everyone
    Script Date    : Anytime
    Script Notes   : Use spells_data to link to the specific command(s)
--]]

function cast(Caster, Target, Type)
    -- JA: commenting out other functions since revamp of database renders the IDs/Spawns invalid (2013/08/18)
    if Type == "ThrowSnowball" then
        ThrowSnowball(Caster, Target)
	end
--[[
    if Type == "Examine" then
        Examine(Caster, Target)
    elseif Type == "Grab Soil" then
        GrabSoil(Caster, Target)
    elseif Type == "Plant Seeds" then
        PlantSeeds(Caster, Target)
    elseif Type == "Burn Tent" then
        BurnTent(Caster, Target)
    elseif Type == "Destroy Totem" then
        DestroyTotem(Caster, Target)
    elseif Type == "Smack Hive" then
        SmackHive(Caster, Target)
    elseif Type == "Help Down" then
        HelpDown(Caster, Target)
    elseif Type == "Read Gravestone" then
        ReadGravestone(Caster, Target)
    elseif Type == "ClimbTheBench" then
        ClimbTheBench(Caster, Target)
    elseif Type == "PullYourselfThroughTheFoliage" then
        PullYourselfThroughTheFoliage(Caster, Target)
    elseif Type == "InspectBox" then
        InspectBox(Caster, Target)
    elseif Type == "ThrowSnowball" then
        ThrowSnowball(Caster, Target)
    end
--]]
end

function GrabSoil(Caster, Target)
    if HasQuest(Caster, 60) and not QuestStepIsComplete(Caster, 60, 3) then
        -- Mana-Enriched Soil
        SummonItem(Caster, 6463)
    end
end

function PlantSeeds(Caster, Target)
end

function BurnTent(Caster, Target)
    BurnSpawn = GetSpawn(Target, 2780218) 
    SpawnSet(BurnSpawn, "visual_state", "6866") 
    SpawnSet(Target, "show_command_icon", "0")
    
    KillSpawn(Target, Caster, 0) -- kill the tent to get journal update
    KillSpawn(BurnSpawn, Caster, 0) -- kill the cube to put out the "tent/'s fire"
end 

function DestroyTotem(Caster, Target) 
   SpawnSet(Target, "destroy_totem", "0") 
   SpawnSet(Target, "show_command_icon", "0")
   KillSpawn(Target, Caster) 
end

function SmackHive(Caster, Target)
    SpawnSet(Target, "show_command_icon", 0)
    
    -- 20% chance to spawn a Queen bee
    -- 80% chance to spawn a soldier bee
    choice = math.random(1, 100)

    if choice <= 20 then
        -- spawn a Queen bee
        SpawnMob(GetZone(Target), 2780092, false, GetX(Target), GetY(Target), GetZ(Target))
    else
        -- spawn a soldier bee
        SpawnMob(GetZone(Target), 2780088, false, GetX(Target), GetY(Target), GetZ(Target))
    end
    
    AddTimer(Target, 60000, "enable_command_icon_beeHive")
end

function HelpDown(Caster, Target)
    SpawnSet(Target, "show_command_icon", 0)
    SpawnMob(GetZone(Caster), 2530232, false, 268.05, -5.08, -10.95, 101.63)
    Despawn(Target)
    newHalfling = GetSpawn(Caster, 2530232)
    
    --temporary.  the poor halfling will climb back into the tree when the Moraks respawn
    AddTimer(newHalfling, 30000, "ClimbTree")
end

function Examine(Caster, Target)
end

function ReadGravestone(Caster, Target)
    SpawnMob(GetZone(Caster), 1960199, false, 967.581, -17.0745, -821.035, 159.344)
    UlinirBush = GetSpawn(Caster, 1960199)
    Ilaen = GetSpawn(Caster, 1960126)
    PlayFlavor(Ilaen, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_ulinir_d84a1bb.mp3", "You are wise to know Ulinir is worth your time. Speak with me if you wish to use your wisdom for a greater good.", "", 1864539566, 4233668295, Caster)
    AddTimer(UlinirBush, 30000, "DespawnBush")
end

function ClimbTheBench(Caster, Target)
    SetPosition(Caster, 761.79, -20.38, 314.48)
end

function PullYourselfThroughTheFoliage(Caster, Target)
    SetPosition(Caster, 743.47, -20.35, 306.85)
end

function InspectBox(Caster, Target)
    SetStepComplete(Caster, 142, 3)
end

function ThrowSnowball(Caster, Target)
    SpawnSet(Caster, "visual_state", "1224") 
end 