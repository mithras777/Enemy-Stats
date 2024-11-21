-- Function to get MCM setting values
function MCMGet(settingID)
return Mods.BG3MCM.MCMAPI:GetSettingValue(settingID, ModuleUUID)
end

local function OnSessionLoaded()
    print("Enemy Stats - MCM Version")
    Vars = {
        Enemies = MCMGet("Enemies"),
        Bosses = MCMGet("Bosses"),
        BossesACMult = MCMGet("BossesACMult"),
        BossesDamageMult = MCMGet("BossesDamageMult"),
        BossesHPMult = MCMGet("BossesHPMult"),
        BossScaling = MCMGet("BossScaling"),
        LevelScalingMult = MCMGet("LevelScalingMult"),
        LevelIncrementforHP = MCMGet("LevelIncrementforHP"),
        LevelIncrementforDexterity = MCMGet("LevelIncrementforDexterity"),
        LevelIncrementforStrength = MCMGet("LevelIncrementforStrength"),
        LevelIncrementforConstitution = MCMGet("LevelIncrementforConstitution"),
        LevelIncrementforIntelligence = MCMGet("LevelIncrementforIntelligence"),
        LevelIncrementforCharisma = MCMGet("LevelIncrementforCharisma"),
        LevelIncrementforWisdom = MCMGet("LevelIncrementforWisdom"),
        LevelIncrementforRollBonus = MCMGet("LevelIncrementforRollBonus"),
        LevelIncrementforDamage = MCMGet("LevelIncrementforDamage"),
        LevelIncrementforAC = MCMGet("LevelIncrementforAC"),
        LevelIncrementforMovement = MCMGet("LevelIncrementforMovement"),
        ActionPointBoosts = MCMGet("ActionPointBoosts"),
        BonusActionPointBoosts = MCMGet("BonusActionPointBoosts"),
        StaticDamageBoost = MCMGet("StaticDamageBoost"),
        StaticACBoost = MCMGet("StaticACBoost"),
        StaticMovementBoost = MCMGet("StaticMovementBoost"),
        MaxHealthPercentage = MCMGet("MaxHealthPercentage"),
        StaticScalingHealthBoost = MCMGet("StaticScalingHealthBoost"),
        StaticHealthBoost = MCMGet("StaticHealthBoost"),
        HealthScalingPercentage = MCMGet("HealthScalingPercentage"),
        StaticStrengthBoost = MCMGet("StaticStrengthBoost"),
        StaticDexterityBoost = MCMGet("StaticDexterityBoost"),
        StaticConstitutionBoost = MCMGet("StaticConstitutionBoost"),
        StaticIntelligenceBoost = MCMGet("StaticIntelligenceBoost"),
        StaticWisdomBoost = MCMGet("StaticWisdomBoost"),
        StaticCharismaBoost = MCMGet("StaticCharismaBoost"),
        ConstitutionLevelIncrement = MCMGet("ConstitutionLevelIncrement"),
        DexterityLevelIncrement = MCMGet("DexterityLevelIncrement"),
        StrengthLevelIncrement = MCMGet("StrengthLevelIncrement"),
        IntelligenceLevelIncrement = MCMGet("IntelligenceLevelIncrement"),
        WisdomLevelIncrement = MCMGet("WisdomLevelIncrement"),
        CharismaLevelIncrement = MCMGet("CharismaLevelIncrement"),
        ACLevelIncrement = MCMGet("ACLevelIncrement"),
        RollBonusLevelIncrement = MCMGet("RollBonusLevelIncrement"),
        MovementLevelIncrement = MCMGet("MovementLevelIncrement"),
        DamageLevelIncrement = MCMGet("DamageLevelIncrement"),
        RollBonusBoosts = MCMGet("RollBonusBoosts"),
        Allies = MCMGet("Allies"),
        SpellSaveDCBoosts = MCMGet("SpellSaveDCBoosts"),
        SpellSaveDCLevelIncrement = MCMGet("SpellSaveDCLevelIncrement"),
        LevelIncrementforSpellSaveDC = MCMGet("LevelIncrementforSpellSaveDC")
    }
end
Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)

ExcludedNPCs= 
{
    "S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c",
    "S_Player_Minsc_0de603c5-42e2-4811-9dad-f652de080eba",
    "S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b",
    "S_GLO_Halsin_7628bc0e-52b8-42a7-856a-13a6fd413323",
    "S_Player_Jaheira_91b6b200-7d00-4d62-8dc9-99e8339dfa1a",
    "S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604",
    "S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255",
    "S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12",
    "S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d",
    "S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679"
}

Bosses= {
    "[WIP] Humans_Female_Strong_NightSong_9671ecbb-4030-48ff-b63e-f138e988835f",
    "S_LOW_Lorroakan_a9d4b71d-b0ef-429e-8210-6dc8be986ee9",
    "S_MOO_Ketheric_e9918f3e-5b87-40a3-a9bd-61545151573f",
    "S_GLO_Orin_bf24e0ec-a3a6-4905-bd2d-45dc8edf8101",
    "S_GLO_Gortash_b878a854-f790-4999-95c4-3f20f00f65ac",
    "S_GLO_Monitor_f65becd6-5cd7-4c88-b85e-6dd06b60f7b8",
    "S_FOR_Bottomless_SpiderQueen_e6b2f3ba-2d02-4507-8680-6047322e1a4b",
    "S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b",
    "S_GOB_GoblinPriest_b983c336-9a14-4e9b-adb9-4689e7e0afa9",
    "S_GOB_GoblinKing_11337af0-6a57-426b-a820-c4b00923dd54",
    "BASE_Bipedal_Fey_GreenHag_5968560a-6a96-421d-b173-070566f7519e",
    "S_UND_TheDrowNere_06bf05c5-216b-4eaf-91f5-8f1dd3d57f30",
    "S_GLO_Cazador_2f1880e6-1297-4ca3-a79c-9fabc7f179d3",
    "S_PLA_ConflictedFlind_Boss_34464430-fed8-4f50-86d5-bd35846920a0",
    "S_PLA_ZhentShipment_Spectator_2c214b80-1d72-431d-bc0b-1997a646c99b",
    "S_UND_Bulette_307934b5-6fb5-4fdc-a7ff-433a7ba175b3",
    "S_UND_KethericCity_AdamantineGolem_2a5997fc-5f2a-4a13-b309-bed16da3b255",
    "BASE_Drider_d2bbcd5b-31f9-41a6-83e7-b11c4b7c793a",
    "S_SHA_Necromancer_53651a9f-7ea8-444f-ba2d-224390b72f7d",
    "Hag_Green_Act1Hag_Double_8c85932d-12dd-4046-a694-6534071470a2",
    "S_GLO_Orthon_1dc8091d-2af6-4d33-9268-998ef266d19c",
    "S_TWN_Tollhouse_TollhouseMaster_3b460226-8ca2-4bbc-9bd7-8bb947aa2c06",
    "S_TWN_Hospital_Surgeon_e58b8b34-038b-4858-b817-c2a8096a9381",
    "S_TWN_Distillery_Brewer_4d9e3db3-9a78-4f4b-8101-1dd73c0f3be5",
    "S_MOO_Executioner_8e75eb3b-7551-485e-8f98-2bf2e51d3e84",
    "S_SCL_ServantOfTheRaven_ShadarKai_a66dd998-1e87-433b-b147-359c0572e700",
    "S_GLO_Emperor_73d49dc5-8b8b-45dc-a98c-927bb4e3169b",
    "S_GLO_Elminster_75bb6396-1132-4064-bafe-205a3f156b9b",
    "S_LOW_Elfsong_GithyankiShield_Paladin_54467aa9-33dd-41c4-bd77-87a71ed22c16",
    "S_TWN_VlaakithAttack_Caster_000_e4141a02-f5e7-4a0c-a7af-d3dda6610c1b",
    "S_CRE_Templar_378ac93e-03a0-40b4-904c-f37989ac7a8c",
    "SteelWatcher_Quadruped_A_26fa3fe9-608c-4113-99a6-727781351ea4",
    "S_LOW_Viconia_b1ea974d-96fb-47ca-b6d9-9c85fcb69313",
    "LOW_Undead_Mummy_FatherCarrion_cfe6ad05-98cc-47ac-b524-f48333cae046",
    "S_TUT_Helm_Devil_005_ed103005-fd71-457d-ae6c-39654bbd8f2e", 
    "S_HAG_ForestIllusion_Redcap_01_ff840420-d46a-4837-868b-ac02f45e4586", 
    "S_HAG_ForestIllusion_Redcap_02_2b08981e-5cb0-496d-98cf-15e6a92121ec", 
    "S_HAG_ForestIllusion_Redcap_03_14026955-2546-4d31-bc0c-4bfe0c34bd8a", 
    "S_HAG_ForestIllusion_Redcap_04_30a871b1-9df3-42bb-87cb-c284cafd32eb", 
    "S_END_MindBrain_f8bb04a3-22e5-41b0-aed7-5dcf852343d1", 
    "S_WYR_SkeletalDragon_67770922-5e0a-40c5-b3f0-67e8eb50493a", 
    "S_HAG_Hag_HumanDouble_3f461909-81a2-825c-2365-5387db9121f9" 
}

function IsTargetABoss(guid)
    if IsBoss(guid) == 1 then
        return 1
    end
    for _, boss in ipairs(Bosses) do
        if boss == guid then
            return 1
        end
    end
    return 0
end

function CheckIfOrigin(target)
    for i=#ExcludedNPCs,1,-1 do
        if (ExcludedNPCs[i] == target) then
            return 1
        end
    end
    return 0
end

function GetCharacterId(rawId)
    -- Assume some characters might be prefixed that need to be stripped out
    return rawId:match(".*_(.*)") or rawId
end

function ScaleLevel(target)
    local targetLevel = GetLevel(target)
    local hostLevel = GetLevel(GetHostCharacter())
    local levelScalingMultiplier = tonumber(Vars["LevelScalingMult"])
    local BossScalingMultiplier = tonumber(Vars["BossScaling"])

    if Vars["Enemies"] == true and Vars["LevelScalingMult"] > 0 and IsTargetABoss(target) == 0 then
        local ScalingNewLevel = math.floor(hostLevel * levelScalingMultiplier)
        if ScalingNewLevel < 1 then ScalingNewLevel = 1 end
        SetLevel(target,ScalingNewLevel)
        return ScalingNewLevel
    end
    if Vars["Bosses"] == true and IsTargetABoss(target) == 1 and Vars["BossScaling"] > 0 then
        local ScalingNewLevel = math.floor(hostLevel * BossScalingMultiplier)
        if ScalingNewLevel < 1 then ScalingNewLevel = 1 end
        SetLevel(target,ScalingNewLevel)
        return ScalingNewLevel
    end
    return targetLevel
end

function GiveHPIncrease(target)
    local staticScalingHealthBoost = tonumber(Vars["StaticScalingHealthBoost"])
    local maxHealthPercentage = tonumber(Vars["MaxHealthPercentage"])
    local healthScalingPercentage = tonumber(Vars["HealthScalingPercentage"])
    local staticHealthBoost = tonumber(Vars["StaticHealthBoost"])
    local levelIncrement = tonumber(Vars["LevelIncrementforHP"])
    
    local maxHealth = Ext.Entity.Get(target).Health.MaxHp
    local staticscalingBoost = staticScalingHealthBoost * math.floor(ScalingNewLevel / levelIncrement)
    local percentageBoost = math.ceil((maxHealthPercentage / 100) * maxHealth)
    local percentagescalingBoost = math.ceil((healthScalingPercentage / 100) * maxHealth * math.floor(ScalingNewLevel / levelIncrement))
    
    local hpincrease = staticHealthBoost + percentageBoost + percentagescalingBoost + staticscalingBoost

    if IsTargetABoss(target) == 1 and tonumber(Vars["BossesHPMult"]) >= 1 then
        hpincrease = math.floor(hpincrease * tonumber(Vars["BossesHPMult"]))
    end

    if target == "S_HAG_Hag_c457d064-83fb-4ec6-b74d-1f30dfafd12d" or target == "S_GLO_Monitor_f65becd6-5cd7-4c88-b85e-6dd06b60f7b8" then
        hpBoost = "TemporaryHP(" .. hpincrease .. ")"
    else
        hpBoost = "IncreaseMaxHP(" .. hpincrease .. ")"
    end
    
    AddBoosts(target, hpBoost, "1", "1")
end

function GiveMovementBoost(target)
    local totalMovementBoost = tonumber(Vars["StaticMovementBoost"]) + tonumber(Vars["MovementLevelIncrement"]) * math.floor(ScalingNewLevel / tonumber(Vars["LevelIncrementforMovement"]))
    local movement = "ActionResource(Movement," .. totalMovementBoost .. ",0)"
    Osi.AddBoosts(target, movement, "1", "1")
end

function GiveACBoost(target)
    local StaticACBoost = tonumber(Vars["StaticACBoost"])
    local acLevelIncrement = tonumber(Vars["ACLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforAC"])

    local totalACBoost = StaticACBoost + acLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)

    if IsTargetABoss(target) == 1 and tonumber(Vars["BossesACMult"]) >= 1 then
        totalACBoost = math.floor(totalACBoost * tonumber(Vars["BossesACMult"]))
    end
    local ac = "AC(" .. totalACBoost .. ")"
    Osi.AddBoosts(target, ac, "", "")
end

function GiveStrengthBoost(target)
    local StaticStrengthBoost = tonumber(Vars["StaticStrengthBoost"])
    local strengthLevelIncrement = tonumber(Vars["StrengthLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforStrength"])

    local totalStrengthBoost = StaticStrengthBoost + strengthLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local strength = "Ability(Strength,+" .. totalStrengthBoost .. ")"
    Osi.AddBoosts(target, strength, "", "")
end

function GiveDexterityBoost(target)
    local StaticDexterityBoost = tonumber(Vars["StaticDexterityBoost"])
    local dexterityLevelIncrement = tonumber(Vars["DexterityLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforDexterity"])

    local totalDexterityBoost = StaticDexterityBoost + dexterityLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local dexterity = "Ability(Dexterity,+" .. totalDexterityBoost .. ")"
    Osi.AddBoosts(target, dexterity, "", "")
end

function GiveConstitutionBoost(target)
    local StaticConstitutionBoost = tonumber(Vars["StaticConstitutionBoost"])
    local constitutionLevelIncrement = tonumber(Vars["ConstitutionLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforConstitution"])

    local totalConstitutionBoost = StaticConstitutionBoost + constitutionLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local constitution = "Ability(Constitution,+" .. totalConstitutionBoost .. ")"
    Osi.AddBoosts(target, constitution, "", "")
end

function GiveIntelligenceBoost(target)
    local StaticIntelligenceBoost = tonumber(Vars["StaticIntelligenceBoost"])
    local intelligenceLevelIncrement = tonumber(Vars["IntelligenceLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforIntelligence"])

    local totalIntelligenceBoost = StaticIntelligenceBoost + intelligenceLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local intelligence = "Ability(Intelligence,+" .. totalIntelligenceBoost .. ")"
    Osi.AddBoosts(target, intelligence, "", "")
end

function GiveWisdomBoost(target)
    local StaticWisdomBoost = tonumber(Vars["StaticWisdomBoost"])
    local wisdomLevelIncrement = tonumber(Vars["WisdomLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforWisdom"])

    local totalWisdomBoost = StaticWisdomBoost + wisdomLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local wisdom = "Ability(Wisdom,+" .. totalWisdomBoost .. ")"
    Osi.AddBoosts(target, wisdom, "", "")
end

function GiveCharismaBoost(target)
    local StaticCharismaBoost = tonumber(Vars["StaticCharismaBoost"])
    local charismaLevelIncrement = tonumber(Vars["CharismaLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforCharisma"])

    local totalCharismaBoost = StaticCharismaBoost + charismaLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local charisma = "Ability(Charisma,+" .. totalCharismaBoost .. ")"
    Osi.AddBoosts(target, charisma, "", "")
end

function GiveRollBonusBoost(target)
    local rollBonusBoosts = tonumber(Vars["RollBonusBoosts"])
    local rollBonusLevelIncrement = tonumber(Vars["RollBonusLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforRollBonus"])

    local totalRollBonus = rollBonusBoosts + rollBonusLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local rollBonus = "RollBonus(Attack," .. totalRollBonus .. ")"
    Osi.AddBoosts(target, rollBonus, "", "")
end

function GiveDamageBoost(target)
    local StaticDamageBoost = tonumber(Vars["StaticDamageBoost"])
    local damageLevelIncrement = tonumber(Vars["DamageLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforDamage"])

    local totalDamageBoost = StaticDamageBoost + damageLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    if IsTargetABoss(target) == 1 and tonumber(Vars["BossesDamageMult"]) >= 1 then 
        totalDamageBoost = math.floor(totalDamageBoost * tonumber(Vars["BossesDamageMult"]))
    end
    local damageBonus = "DamageBonus(" .. totalDamageBoost .. ")"
    Osi.AddBoosts(target, damageBonus, "", "")
end

function GiveSpellSaveDCBoost(target)
    local spellSaveDCBoosts = tonumber(Vars["SpellSaveDCBoosts"])
    local spellSaveDCLevelIncrement = tonumber(Vars["SpellSaveDCLevelIncrement"])
    local levelIncrement = tonumber(Vars["LevelIncrementforSpellSaveDC"])

    local totalSpellSaveDC = spellSaveDCBoosts + spellSaveDCLevelIncrement * math.floor(ScalingNewLevel / levelIncrement)
    local spellSaveDC = "SpellSaveDC(" .. totalSpellSaveDC .. ")"
    Osi.AddBoosts(target, spellSaveDC, "", "")
end

function GiveActionPointBoost(target)
    local actionPoints = "ActionResource(ActionPoint," .. tonumber(Vars["ActionPointBoosts"]) .. ",0)"
    AddBoosts(target, actionPoints, "1", "1")
end

function GiveBonusActionPointBoost(target)
    local bonusActionPoints = "ActionResource(BonusActionPoint," .. tonumber(Vars["BonusActionPointBoosts"]) .. ",0)"
    AddBoosts(target, bonusActionPoints, "1", "1")
end

function CheckAndApplyStats(guid)
    if (Vars["Enemies"] == true or Vars["Bosses"] == true) then 
        if (IsCharacter(guid) == 1 and IsEnemy(guid, GetHostCharacter()) == 1 and CheckIfOrigin(guid) == 0 and HasAppliedStatus(guid,"Enhanced") == 0 and IsPartyMember(guid, 1) == 0) then 
            
            if IsTargetABoss(guid) == 1 and not Vars["Bosses"] then
                -- Skip bosses if Bosses is set to 0
                return
            end

            ScalingNewLevel = ScaleLevel(guid)

            if tonumber(Vars["StaticScalingHealthBoost"]) >= 1 or tonumber(Vars["MaxHealthPercentage"]) >= 0 or tonumber(Vars["StaticHealthBoost"]) > 0 or tonumber(Vars["HealthScalingPercentage"]) > 0 then
                GiveHPIncrease(guid)
            end
    
            if tonumber(Vars["ActionPointBoosts"]) >= 1 then
                GiveActionPointBoost(guid)
            end
    
            if tonumber(Vars["BonusActionPointBoosts"]) >= 1 then
                GiveBonusActionPointBoost(guid)
            end
            
            if tonumber(Vars["StaticMovementBoost"]) >= 1 then
                GiveMovementBoost(guid)
            end

            if tonumber(Vars["StaticACBoost"]) >= 1 or tonumber(Vars["ACLevelIncrement"]) > 0 then
                GiveACBoost(guid)
            end
        
            if tonumber(Vars["StaticStrengthBoost"]) >= 1 or tonumber(Vars["StrengthLevelIncrement"]) > 0 then
                GiveStrengthBoost(guid)
            end
            
            if tonumber(Vars["StaticDexterityBoost"]) >= 1 or tonumber(Vars["DexterityLevelIncrement"]) > 0 then
                GiveDexterityBoost(guid)
            end
            
            if tonumber(Vars["StaticConstitutionBoost"]) >= 1 or tonumber(Vars["ConstitutionLevelIncrement"]) > 0 then
                GiveConstitutionBoost(guid)
            end
            
            if tonumber(Vars["StaticIntelligenceBoost"]) >= 1 or tonumber(Vars["IntelligenceLevelIncrement"]) > 0 then
                GiveIntelligenceBoost(guid)
            end
            
            if tonumber(Vars["StaticWisdomBoost"]) >= 1 or tonumber(Vars["WisdomLevelIncrement"]) > 0 then
                GiveWisdomBoost(guid)
            end
            
            if tonumber(Vars["StaticCharismaBoost"]) >= 1 or tonumber(Vars["CharismaLevelIncrement"]) > 0 then
                GiveCharismaBoost(guid)
            end

            if tonumber(Vars["RollBonusBoosts"]) >= 1 or tonumber(Vars["RollBonusLevelIncrement"]) > 0 then
                GiveRollBonusBoost(guid)
            end
    
            if tonumber(Vars["StaticDamageBoost"]) >= 1 or tonumber(Vars["DamageLevelIncrement"]) > 0 then
                GiveDamageBoost(guid)
            end

            if tonumber(Vars["SpellSaveDCBoosts"]) >= 1 or tonumber(Vars["SpellSaveDCLevelIncrement"]) > 0 then
                GiveSpellSaveDCBoost(guid)
            end
            
            ApplyStatus(guid,"Enhanced",-1)
        end

        if Vars["Allies"] == true then
            if (IsCharacter(guid) == 1 and IsEnemy(guid, GetHostCharacter()) == 0 and CheckIfOrigin(guid) == 0 and HasAppliedStatus(guid,"Enhanced") == 0 and IsPartyMember(guid, 1) == 0) then
                ScalingNewLevel = ScaleLevel(guid)
                GiveHPIncrease(guid)
                ApplyStatus(guid,"Enhanced",-1)
            end
        end

    end
end

Ext.Osiris.RegisterListener("EnteredCombat", 2, "after", function(guid, combatid)
    CheckAndApplyStats(guid)
end)

Ext.Osiris.RegisterListener("TurnStarted", 1, "after", function(guid)
    if HasAppliedStatus(guid, "Enhanced") == 0 then
        CheckAndApplyStats(guid)
    end
end)

Ext.Osiris.RegisterListener("AttackedBy", 7, "after", function(defender, attackerOwner, attacker2, damageType, damageAmount, damageCause, storyActionID) 
    if IsPartyMember(attackerOwner, 1) == 1 then
        CheckAndApplyStats(defender)
    end
end)


Ext.ModEvents.BG3MCM["MCM_Setting_Saved"]:Subscribe(function(payload)
    if not payload or payload.modUUID ~= ModuleUUID or not payload.settingId then
        return
    end
    
    if Vars[payload.settingId] ~= nil then
        Vars[payload.settingId] = payload.value
    end
end)