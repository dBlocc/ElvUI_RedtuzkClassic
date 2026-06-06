local  RUI = select(2, ...):unpack()

function RUI:PlaterSettings()
  PlaterDB["profiles"]["RedtuzkUI"] = {
    ["target_shady_combat_only"] = false,
    ["script_data"] = {
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
        ["ScriptType"] = 3,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
        ["Time"] = 1553105907,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
        ["Icon"] = 135996,
        ["Enabled"] = true,
        ["Revision"] = 157,
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
        ["SpellIds"] = {
        },
        ["PlaterCore"] = 1,
        ["Name"] = "Unit - Important [Plater]",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
        ["NpcNames"] = {
          "135029", -- [1]
          "134388", -- [2]
          "134612", -- [3]
          "133361", -- [4]
          "136330", -- [5]
          "130896", -- [6]
          "129758", -- [7]
          "Healing Tide Totem", -- [8]
          "131009", -- [9]
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
      }, -- [1]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
        ["Time"] = 1558091651,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
        ["NpcNames"] = {
        },
        ["Enabled"] = true,
        ["Revision"] = 404,
        ["Author"] = "Tercioo-Sylvanas",
        ["Desc"] = "Add the buff name in the trigger box.",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
        ["SpellIds"] = {
          275826, -- [1]
          272888, -- [2]
          272659, -- [3]
          267901, -- [4]
          267830, -- [5]
          265393, -- [6]
        },
        ["PlaterCore"] = 1,
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
        ["Name"] = "Aura - Buff Alert [Plater]",
      }, -- [2]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
        ["ScriptType"] = 2,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Time"] = 1553749840,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
        ["Enabled"] = true,
        ["Revision"] = 391,
        ["Author"] = "Bombad�o-Azralon",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Name"] = "Cast - Very Important [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
          257785, -- [1]
          267237, -- [2]
          266951, -- [3]
          267273, -- [4]
          267433, -- [5]
          263066, -- [6]
          255577, -- [7]
          255371, -- [8]
        },
        ["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
      }, -- [3]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
        ["ScriptType"] = 2,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
        ["Time"] = 1553105911,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
        ["Icon"] = 2175503,
        ["Enabled"] = true,
        ["Revision"] = 328,
        ["Author"] = "Bombad�o-Azralon",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
        ["Name"] = "Explosion Affix M+ [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
          240446, -- [1]
          273577, -- [2]
        },
        ["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
      }, -- [4]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Time"] = 1558091650,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
        ["NpcNames"] = {
        },
        ["Enabled"] = true,
        ["Revision"] = 236,
        ["Author"] = "Tercioo-Sylvanas",
        ["Desc"] = "Add the debuff name in the trigger box.",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["SpellIds"] = {
        },
        ["PlaterCore"] = 1,
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
        ["Name"] = "Aura - Debuff Alert [Plater]",
      }, -- [5]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
        ["ScriptType"] = 2,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Time"] = 1553749837,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
        ["Enabled"] = true,
        ["Revision"] = 569,
        ["Author"] = "Tercioo-Sylvanas",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Name"] = "Cast - Big Alert [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
          258153, -- [1]
          258313, -- [2]
          257069, -- [3]
          274569, -- [4]
          278020, -- [5]
          261635, -- [6]
          272700, -- [7]
          280404, -- [8]
          268030, -- [9]
          265368, -- [10]
          263891, -- [11]
          264520, -- [12]
          265407, -- [13]
          278567, -- [14]
          278602, -- [15]
          258128, -- [16]
          257791, -- [17]
          258938, -- [18]
          265089, -- [19]
          272183, -- [20]
          256060, -- [21]
          257397, -- [22]
          257899, -- [23]
          269972, -- [24]
          270901, -- [25]
          270492, -- [26]
          268129, -- [27]
          268709, -- [28]
          263215, -- [29]
          268797, -- [30]
          262540, -- [31]
          262554, -- [32]
          253517, -- [33]
          255041, -- [34]
          252781, -- [35]
          250368, -- [36]
          258777, -- [37]
        },
        ["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
      }, -- [6]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
        ["ScriptType"] = 2,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
        ["Time"] = 1553749839,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
        ["Enabled"] = true,
        ["Revision"] = 379,
        ["Author"] = "Tercioo-Sylvanas",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
        ["Name"] = "Cast - Small Alert [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
          275192, -- [1]
          265912, -- [2]
          274438, -- [3]
          268317, -- [4]
          268375, -- [5]
          276767, -- [6]
          264105, -- [7]
          265876, -- [8]
          270464, -- [9]
          266106, -- [10]
          272180, -- [11]
          278961, -- [12]
          278755, -- [13]
          265468, -- [14]
          256405, -- [15]
          256897, -- [16]
          264101, -- [17]
          280604, -- [18]
          268702, -- [19]
          281621, -- [20]
          262515, -- [21]
          255824, -- [22]
          253583, -- [23]
          250096, -- [24]
        },
        ["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
      }, -- [7]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
        ["Time"] = 1558091648,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
        ["NpcNames"] = {
        },
        ["Enabled"] = true,
        ["Revision"] = 108,
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
        ["SpellIds"] = {
          261265, -- [1]
          261266, -- [2]
          271590, -- [3]
        },
        ["PlaterCore"] = 1,
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["Name"] = "Aura - Invalidate Unit [Plater]",
      }, -- [8]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
        ["ScriptType"] = 3,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
        ["Time"] = 1558091646,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
        ["Icon"] = 135024,
        ["Enabled"] = true,
        ["Revision"] = 67,
        ["Author"] = "Izimode-Azralon",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
        ["Name"] = "Color Change [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
        },
        ["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
        ["NpcNames"] = {
          "141851", -- [1]
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
      }, -- [9]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
        ["Time"] = 1558091653,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
        ["Enabled"] = true,
        ["Revision"] = 164,
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
        ["SpellIds"] = {
        },
        ["PlaterCore"] = 1,
        ["Name"] = "Aura - Blink by Time Left [Plater]",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
      }, -- [10]
      {
        ["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
        ["Time"] = 1558091601,
        ["Temp_ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
        ["NpcNames"] = {
        },
        ["Enabled"] = false,
        ["Revision"] = 47,
        ["Author"] = "Izimode-Azralon",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
        ["Name"] = "Aura - Border Color [Plater]",
        ["PlaterCore"] = 1,
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
        ["Icon"] = 133006,
        ["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
        ["SpellIds"] = {
        },
      }, -- [11]
      {
        ["Enabled"] = true,
        ["Revision"] = 131,
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
        ["Icon"] = 136048,
        ["Author"] = "Celian-Sylvanas",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
        ["ScriptType"] = 3,
        ["Time"] = 1539015649,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
        ["Name"] = "UnitPower [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
        },
        ["Desc"] = "Show the energy amount above the nameplate",
        ["NpcNames"] = {
          "Guardian of Yogg-Saron", -- [1]
        },
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
      }, -- [12]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
        ["ScriptType"] = 2,
        ["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
        ["Time"] = 1553749839,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
        ["Enabled"] = true,
        ["Revision"] = 174,
        ["Author"] = "Izimode-Azralon",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
        ["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
        ["Name"] = "Cast - Frontal Cone [Plater]",
        ["PlaterCore"] = 1,
        ["SpellIds"] = {
          255952, -- [1]
          257426, -- [2]
          274400, -- [3]
          272609, -- [4]
          269843, -- [5]
          269029, -- [6]
          272827, -- [7]
          269266, -- [8]
          263912, -- [9]
          264923, -- [10]
          258864, -- [11]
          256955, -- [12]
          265540, -- [13]
          260793, -- [14]
          270003, -- [15]
          270507, -- [16]
          257337, -- [17]
          268415, -- [18]
          275907, -- [19]
          268865, -- [20]
          260669, -- [21]
          260280, -- [22]
          253239, -- [23]
          265541, -- [24]
          250258, -- [25]
        },
        ["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
      }, -- [13]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
        ["Time"] = 1553105908,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
        ["Icon"] = 1029718,
        ["Enabled"] = true,
        ["Revision"] = 191,
        ["Author"] = "Celian-Sylvanas",
        ["Desc"] = "Show above the nameplate who is the player fixated",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
        ["SpellIds"] = {
          272584, -- [1]
          244653, -- [2]
        },
        ["PlaterCore"] = 1,
        ["Name"] = "Fixate [Plater]",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
        ["NpcNames"] = {
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
      }, -- [14]
      {
        ["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
        ["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["ScriptType"] = 3,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
        ["Time"] = 1553105909,
        ["Temp_ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
        ["Icon"] = 841383,
        ["Enabled"] = true,
        ["Revision"] = 195,
        ["Author"] = "Tecno-Azralon",
        ["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
        ["SpellIds"] = {
          "spawn of g'huun", -- [1]
          "smuggled crawg", -- [2]
          "sergeant bainbridge", -- [3]
          "blacktooth scrapper", -- [4]
          "irontide grenadier", -- [5]
          "feral bloodswarmer", -- [6]
          "earthrager", -- [7]
          "crawler mine", -- [8]
          "rezan", -- [9]
        },
        ["PlaterCore"] = 1,
        ["Name"] = "Fixate On You [Plater]",
        ["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["NpcNames"] = {
          "smuggled crawg", -- [1]
          "sergeant bainbridge", -- [2]
          "blacktooth scrapper", -- [3]
          "irontide grenadier", -- [4]
          "feral bloodswarmer", -- [5]
          "earthrager", -- [6]
          "crawler mine", -- [7]
          "rezan", -- [8]
          "136461", -- [9]
        },
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
      }, -- [15]
      {
        ["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.SetNameplateColor (unitFrame)\nend\n\n\n",
        ["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
        ["ScriptType"] = 1,
        ["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.SetNameplateColor (unitFrame, \"#0085ff\")\nend\n\n\n",
        ["Time"] = 1553105911,
        ["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
        ["NpcNames"] = {
        },
        ["Enabled"] = true,
        ["Revision"] = 23,
        ["Author"] = "Aldarana-Kazzak",
        ["Desc"] = "",
        ["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.SetNameplateColor (unitFrame, \"#0085ff\")\nend\n\n\n",
        ["SpellIds"] = {
          268756, -- [1]
        },
        ["PlaterCore"] = 1,
        ["Name"] = "Deadeye Spyglass",
        ["Icon"] = 134441,
        ["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.SetNameplateColor (unitFrame)\nend\n\n\n",
        ["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
      }, -- [16]
    },
    ["aura_cache_by_name"] = {
      ["bolster"] = {
        209859, -- [1]
        275337, -- [2]
        280001, -- [3]
      },
      ["barbed shot"] = {
        62318, -- [1]
        217200, -- [2]
        246152, -- [3]
        246851, -- [4]
        246852, -- [5]
        246853, -- [6]
        246854, -- [7]
        284228, -- [8]
        284253, -- [9]
        284254, -- [10]
        284255, -- [11]
        284257, -- [12]
        284258, -- [13]
      },
      ["symbiote of g'huun"] = {
        277242, -- [1]
        277261, -- [2]
        277264, -- [3]
        277566, -- [4]
      },
    },
    ["target_shady_enabled"] = false,
    ["aura2_y_offset"] = 7,
    ["aura_timer_text_anchor"] = {
      ["y"] = -5,
      ["side"] = 8,
    },
    ["buffs_on_aura2"] = true,
    ["plate_config"] = {
      ["friendlyplayer"] = {
        ["spellpercent_text_font"] = "Gilroy Bold",
        ["show_guild_name"] = true,
        ["only_thename"] = true,
        ["percent_text_show_decimals"] = false,
        ["actorname_use_class_color"] = true,
        ["actorname_text_font"] = "Gilroy Bold",
        ["actorname_use_friends_color"] = false,
        ["level_text_font"] = "Gilroy Bold",
        ["spellname_text_font"] = "Gilroy Bold",
        ["actorname_text_size"] = 8,
        ["actorname_use_guild_color"] = false,
        ["actorname_text_spacing"] = 7,
        ["only_damaged"] = false,
        ["percent_show_percent"] = false,
        ["percent_text_font"] = "Gilroy Bold",
      },
      ["friendlynpc"] = {
        ["spellpercent_text_font"] = "Gilroy Bold",
        ["level_text_font"] = "Gilroy Bold",
        ["actorname_text_font"] = "Gilroy Bold",
        ["big_actortitle_text_font"] = "Gilroy Bold",
        ["spellname_text_font"] = "Gilroy Bold",
        ["big_actorname_text_font"] = "Gilroy Bold",
        ["percent_text_font"] = "Gilroy Bold",
      },
      ["enemyplayer"] = {
        ["big_actorname_text_size"] = 10,
        ["spellpercent_text_font"] = "Gilroy Bold",
        ["level_text_size"] = 8,
        ["cast"] = {
          115, -- [1]
          9, -- [2]
        },
        ["percent_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["spellpercent_text_anchor"] = {
          ["y"] = -10,
          ["x"] = -1,
        },
        ["percent_text_show_decimals"] = false,
        ["spellname_text_outline"] = "OUTLINE",
        ["big_actorname_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["level_text_font"] = "Gilroy Bold",
        ["percent_text_color"] = {
          0.901960784313726, -- [1]
          0.901960784313726, -- [2]
          0.901960784313726, -- [3]
        },
        ["actorname_text_font"] = "Gilroy Bold",
        ["all_names"] = true,
        ["actorname_text_outline"] = "OUTLINE",
        ["actorname_text_spacing"] = 8,
        ["quest_color_enemy"] = {
          1, -- [1]
          0.369, -- [2]
          0, -- [3]
        },
        ["big_actortitle_text_font"] = "Gilroy Bold",
        ["spellpercent_text_size"] = 8,
        ["level_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["level_text_anchor"] = {
          ["y"] = 2,
          ["x"] = 2,
        },
        ["cast_incombat"] = {
          115, -- [1]
          9, -- [2]
        },
        ["actorname_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["spellname_text_anchor"] = {
          ["y"] = -10,
          ["x"] = 2,
          ["side"] = 10,
        },
        ["percent_text_anchor"] = {
          ["side"] = 11,
        },
        ["spellname_text_font"] = "Gilroy Bold",
        ["spellpercent_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["quest_color_neutral"] = {
          1, -- [1]
          0.65, -- [2]
          0, -- [3]
        },
        ["actorname_text_size"] = 9,
        ["big_actorname_text_font"] = "Gilroy Bold",
        ["health_incombat"] = {
          115, -- [1]
          13, -- [2]
        },
        ["castbar_offset"] = -1,
        ["level_text_outline"] = "OUTLINE",
        ["level_text_alpha"] = 1,
        ["big_actortitle_text_size"] = 10,
        ["percent_text_font"] = "Gilroy Bold",
        ["quest_enabled"] = false,
        ["spellname_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["spellname_text_size"] = 8,
        ["health"] = {
          115, -- [1]
          13, -- [2]
        },
        ["percent_show_health"] = false,
        ["percent_show_percent"] = false,
        ["actorname_text_anchor"] = {
          ["y"] = 13,
          ["side"] = 10,
        },
      },
      ["enemynpc"] = {
        ["spellpercent_text_font"] = "Gilroy Bold",
        ["cast"] = {
          115, -- [1]
          9, -- [2]
        },
        ["spellpercent_text_anchor"] = {
          ["y"] = -10,
          ["x"] = -1,
        },
        ["big_actorname_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["level_text_font"] = "Gilroy Bold",
        ["percent_text_color"] = {
          0.901960784313726, -- [1]
          0.901960784313726, -- [2]
          0.901960784313726, -- [3]
        },
        ["actorname_text_font"] = "Gilroy Bold",
        ["actorname_text_outline"] = "OUTLINE",
        ["actorname_text_spacing"] = 8,
        ["big_actortitle_text_font"] = "Gilroy Bold",
        ["level_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["level_text_anchor"] = {
          ["y"] = 2,
          ["x"] = 2,
        },
        ["cast_incombat"] = {
          115, -- [1]
          9, -- [2]
        },
        ["actorname_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["spellname_text_anchor"] = {
          ["y"] = -10,
          ["x"] = 2,
          ["side"] = 10,
        },
        ["percent_text_anchor"] = {
          ["side"] = 11,
        },
        ["health_incombat"] = {
          115, -- [1]
          13, -- [2]
        },
        ["spellname_text_font"] = "Gilroy Bold",
        ["castbar_offset"] = -1,
        ["big_actorname_text_font"] = "Gilroy Bold",
        ["spellpercent_text_size"] = 8,
        ["level_text_outline"] = "OUTLINE",
        ["percent_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["level_text_alpha"] = 1,
        ["percent_text_show_decimals"] = false,
        ["percent_text_font"] = "Gilroy Bold",
        ["percent_show_percent"] = false,
        ["actorname_text_size"] = 9,
        ["spellname_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
        ["spellname_text_size"] = 8,
        ["health"] = {
          115, -- [1]
          13, -- [2]
        },
        ["percent_show_health"] = false,
        ["quest_enabled"] = false,
        ["actorname_text_anchor"] = {
          ["y"] = 13,
          ["side"] = 10,
        },
        ["spellpercent_text_shadow_color"] = {
          nil, -- [1]
          nil, -- [2]
          nil, -- [3]
          0, -- [4]
        },
      },
    },
    ["health_selection_overlay"] = "REEEE",
    ["aura_y_offset"] = 7,
    ["focus_texture"] = "REEEE",
    ["indicator_elite"] = false,
    ["border_thickness"] = 0.499999970197678,
    ["npc_cache"] = {
      [69134] = {
        "Kazra'jin", -- [1]
        "Throne of Thunder", -- [2]
      },
      [69390] = {
        "Zandalari Storm-Caller", -- [1]
        "Throne of Thunder", -- [2]
      },
      [138972] = {
        "Zian-Ti Cloudbreaker", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [16468] = {
        "Spectral Patron", -- [1]
        "Karazhan", -- [2]
      },
      [135903] = {
        "Manifestation of the Deep", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [148441] = {
        "Gnomish Gyro-Engineer", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [146650] = {
        "Champion Sentinel", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [145371] = {
        "Uu'nat", -- [1]
        "Crucible of Storms", -- [2]
      },
      [139486] = {
        "Skycrack", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [148442] = {
        "Gnomish Commando", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [56717] = {
        "Hoptallus", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [145372] = {
        "Wild Mooncaller", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146140] = {
        "Quilldozer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [148443] = {
        "Defense-A-Bot", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138464] = {
        "Ashvane Deckhand", -- [1]
        "Siege of Boralus", -- [2]
      },
      [61387] = {
        "Quilen Guardian", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [147932] = {
        "Agitated Azershard", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [131812] = {
        "Heartsbane Soulcharmer", -- [1]
        "Waycrest Manor", -- [2]
      },
      [146653] = {
        "Champion Hunter", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [92933] = {
        "7th Legion Dragoon", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [147933] = {
        "Geoactive Azershard", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138466] = {
        "Obsidian Whelp", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [140769] = {
        "Goldenvein", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138978] = {
        "Gargantuan Muckfin", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [133605] = {
        "Escaped Convict", -- [1]
        "Tol Dagor", -- [2]
      },
      [138467] = {
        "Obsidian Dragonkin", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [56718] = {
        "Hopper", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [138979] = {
        "Muckfin Tidecaller", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [141282] = {
        "Kul Tiran Footman", -- [1]
        "Siege of Boralus", -- [2]
      },
      [147935] = {
        "Azergem Crawler", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138468] = {
        "Obsidian Flamecaller", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [416] = {
        "Zilkin", -- [1]
        "Crucible of Storms", -- [2]
      },
      [138980] = {
        "Muckfin Raider", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [141283] = {
        "Kul Tiran Halberd", -- [1]
        "Siege of Boralus", -- [2]
      },
      [147936] = {
        "Azergem Shardback", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [146401] = {
        "Darkscale Dig-Slave", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [146657] = {
        "Veteran Sentinel", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [138981] = {
        "Muckfin Oracle", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [141284] = {
        "Kul Tiran Wavetender", -- [1]
        "Siege of Boralus", -- [2]
      },
      [131817] = {
        "Cragmaw the Infested", -- [1]
        "The Underrot", -- [2]
      },
      [138470] = {
        "Obsidian Drake", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [62348] = {
        "Sik'thik Soldier", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [145123] = {
        "Myara Nightsong", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [141285] = {
        "Kul Tiran Marksman", -- [1]
        "Siege of Boralus", -- [2]
      },
      [123001] = {
        "Dark Water", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [147938] = {
        "Azergem Crystalback", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [148194] = {
        "Icy Barrier", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [127479] = {
        "The Sand Queen", -- [1]
        "Tol Dagor", -- [2]
      },
      [138471] = {
        "Obsidian Wyrmguard", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [148962] = {
        "Ravenous Stalker", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [131819] = {
        "Coven Diviner", -- [1]
        "Waycrest Manor", -- [2]
      },
      [67093] = {
        "Sik'thik Battle-Mender", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [69524] = {
        "Zeb'tula Alchemist", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [61453] = {
        "Mu'Shiba", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [90506] = {
        "Felfire Imp", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [127480] = {
        "Stinging Parasite", -- [1]
        "Tol Dagor", -- [2]
      },
      [138473] = {
        "Stygia", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [131821] = {
        "Faceless Maiden", -- [1]
        "Waycrest Manor", -- [2]
      },
      [93961] = {
        "Worgen Tracker", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [58319] = {
        "Lesser Sha", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [126969] = {
        "Trothak", -- [1]
        "Freehold", -- [2]
      },
      [69909] = {
        "Amani'shi Flame Chanter", -- [1]
        "Throne of Thunder", -- [2]
      },
      [138987] = {
        "Muckfin High Oracle", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [131311] = {
        "Unleashed Azerite", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [131823] = {
        "Sister Malady", -- [1]
        "Waycrest Manor", -- [2]
      },
      [93962] = {
        "Worgen Stalker", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [16406] = {
        "Phantom Attendant", -- [1]
        "Karazhan", -- [2]
      },
      [135406] = {
        "Animated Gold", -- [1]
        "Kings' Rest", -- [2]
      },
      [69910] = {
        "Drakkari Frost Warden", -- [1]
        "Throne of Thunder", -- [2]
      },
      [131824] = {
        "Sister Solena", -- [1]
        "Waycrest Manor", -- [2]
      },
      [127482] = {
        "Sewer Vicejaw", -- [1]
        "Tol Dagor", -- [2]
      },
      [145898] = {
        "Anointed Disciple", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [131825] = {
        "Sister Briar", -- [1]
        "Waycrest Manor", -- [2]
      },
      [133361] = {
        "Wasting Servant", -- [1]
        "Waycrest Manor", -- [2]
      },
      [69911] = {
        "Zandalari Warlord", -- [1]
        "Throne of Thunder", -- [2]
      },
      [129786] = {
        "Brineshell Makrura", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138991] = {
        "Grrl", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [145644] = {
        "Bwonsamdi", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [130298] = {
        "Water Elemental", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138992] = {
        "Muckfin Puddlejumper", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [147948] = {
        "Coagulated Azerite", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [137969] = {
        "Interment Construct", -- [1]
        "Kings' Rest", -- [2]
      },
      [127484] = {
        "Jes Howlis", -- [1]
        "Tol Dagor", -- [2]
      },
      [148716] = {
        "Risen Soul", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134899] = {
        "Venomfang Lurker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [137458] = {
        "Rotting Spore", -- [1]
        "The Underrot", -- [2]
      },
      [130299] = {
        "Droplet", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [69017] = {
        "Primordius", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134388] = {
        "A Knot of Snakes", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [134900] = {
        "Venomfang Spider", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [69657] = {
        "Zeb'tula Beastcaller", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [131318] = {
        "Elder Leaxa", -- [1]
        "The Underrot", -- [2]
      },
      [145903] = {
        "Darkforged Crusader", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [127485] = {
        "Bilge Rat Looter", -- [1]
        "Tol Dagor", -- [2]
      },
      [134389] = {
        "Venomous Ophidian", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [129788] = {
        "Irontide Bonesaw", -- [1]
        "Freehold", -- [2]
      },
      [137204] = {
        "Hoodoo Hexer", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [137716] = {
        "Bottom Feeder", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [135925] = {
        "Pyroblaze", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [136181] = {
        "Volcano", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [134390] = {
        "Sand-crusted Striker", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [61392] = {
        "Harthak Flameseeker", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [69658] = {
        "Zeb'tula Raptor", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [16471] = {
        "Skeletal Usher", -- [1]
        "Karazhan", -- [2]
      },
      [127486] = {
        "Ashvane Officer", -- [1]
        "Tol Dagor", -- [2]
      },
      [138997] = {
        "Grawlash the Frenzied", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [142324] = {
        "Bluefin Dolphin", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [126847] = {
        "Captain Raoul", -- [1]
        "Freehold", -- [2]
      },
      [134137] = {
        "Temple Attendant", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [138999] = {
        "Elder Ordol", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [56915] = {
        "Sun", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [126848] = {
        "Captain Eudora", -- [1]
        "Freehold", -- [2]
      },
      [69916] = {
        "Gurubashi Berserker", -- [1]
        "Throne of Thunder", -- [2]
      },
      [135930] = {
        "Lavarok", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [127488] = {
        "Ashvane Flamecaster", -- [1]
        "Tol Dagor", -- [2]
      },
      [138489] = {
        "Shadow of Zul", -- [1]
        "Kings' Rest", -- [2]
      },
      [59794] = {
        "Krik'thik Disruptor", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [139001] = {
        "Wildlands Ursa", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [146678] = {
        "Ancient Protector", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [139002] = {
        "Wildlands Totemic", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [145399] = {
        "Wild Starcaller", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [94737] = {
        "7th Legion Battlemage", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [70429] = {
        "Flesh'rok the Diseased", -- [1]
        "Throne of Thunder", -- [2]
      },
      [139003] = {
        "Wildlands Warrior", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [140795] = {
        "Dunecircler the Bleak", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [139004] = {
        "Wildlands Shaman", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [16408] = {
        "Phantom Valet", -- [1]
        "Karazhan", -- [2]
      },
      [127106] = {
        "Irontide Officer", -- [1]
        "Freehold", -- [2]
      },
      [16472] = {
        "Phantom Stagehand", -- [1]
        "Karazhan", -- [2]
      },
      [16504] = {
        "Arcane Protector", -- [1]
        "Karazhan", -- [2]
      },
      [127490] = {
        "Knight Captain Valyri", -- [1]
        "Tol Dagor", -- [2]
      },
      [142587] = {
        "Devouring Maggot", -- [1]
        "Waycrest Manor", -- [2]
      },
      [139005] = {
        "Wildlands Tracker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [145402] = {
        "Frenzied Wildheart", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [131585] = {
        "Enthralled Guard", -- [1]
        "Waycrest Manor", -- [2]
      },
      [134144] = {
        "Living Current", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [139006] = {
        "Wildlands Furbolg", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [141565] = {
        "Kul Tiran Footman", -- [1]
        "Siege of Boralus", -- [2]
      },
      [131586] = {
        "Banquet Steward", -- [1]
        "Waycrest Manor", -- [2]
      },
      [92564] = {
        "Mo'arg Painbringer", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [140798] = {
        "Cragcaw", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [125828] = {
        "Víridian", -- [1]
        "Atal'Dazar", -- [2]
      },
      [135169] = {
        "Spirit Drain Totem", -- [1]
        "The Underrot", -- [2]
      },
      [58964] = {
        "Hrogrik", -- [1]
        "Crucible of Storms", -- [2]
      },
      [131587] = {
        "Bewitched Captain", -- [1]
        "Waycrest Manor", -- [2]
      },
      [57109] = {
        "Minion of Doubt", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [144637] = {
        "Grong", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [146940] = {
        "Primordial Mindbender", -- [1]
        "Crucible of Storms", -- [2]
      },
      [139008] = {
        "Primal Mauler", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [133379] = {
        "Adderis", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [134915] = {
        "Trapdoor Ambusher", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [137474] = {
        "King Timalji", -- [1]
        "Kings' Rest", -- [2]
      },
      [130307] = {
        "Unstable Typhoon", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [130435] = {
        "Addled Thug", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [142336] = {
        "Pygmy Octopus", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [71712] = {
        "Despair Spawn", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [113036] = {
        "Fel Lord Razzar", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [138499] = {
        "Twilight Dragonkin", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [92950] = {
        "Skyfire Marine", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [139011] = {
        "Feral Protector", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [58965] = {
        "Zig-amal", -- [1]
        "Waycrest Manor", -- [2]
      },
      [147967] = {
        "7th Legion Marine", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [131847] = {
        "Waycrest Reveler", -- [1]
        "Waycrest Manor", -- [2]
      },
      [134150] = {
        "Runecarver Sorn", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [65362] = {
        "Minion of Doubt", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [139012] = {
        "Feral Guardian", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [16409] = {
        "Phantom Guest", -- [1]
        "Karazhan", -- [2]
      },
      [147968] = {
        "Agitated Azerite", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [113037] = {
        "Fel Lord Darakk", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [140292] = {
        "Snowfur Alpha", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [138501] = {
        "Twilight Whelp", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [146945] = {
        "Swarming Voidspawn", -- [1]
        "Crucible of Storms", -- [2]
      },
      [139013] = {
        "Frenzied Moonkin", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [139269] = {
        "Gloom Horror", -- [1]
        "Waycrest Manor", -- [2]
      },
      [133384] = {
        "Merektha", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [131849] = {
        "Crazed Marksman", -- [1]
        "Waycrest Manor", -- [2]
      },
      [93719] = {
        "Fel Commander Azgalor", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [58198] = {
        "Shado-Pan Disciple", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [139014] = {
        "Feral Moonseeker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [126983] = {
        "Harlan Sweete", -- [1]
        "Freehold", -- [2]
      },
      [127111] = {
        "Irontide Oarsman", -- [1]
        "Freehold", -- [2]
      },
      [113038] = {
        "Fel Lord Kurrz", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [70179] = {
        "Ritual Guard", -- [1]
        "Throne of Thunder", -- [2]
      },
      [151041] = {
        "Etruvis the Vassal", -- [1]
        "Crucible of Storms", -- [2]
      },
      [127879] = {
        "Shieldbearer of Zul", -- [1]
        "Atal'Dazar", -- [2]
      },
      [140295] = {
        "Snowfur Pup", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [69540] = {
        "Zeb'tula Raptor", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [63508] = {
        "Xuen", -- [1]
        "Crucible of Storms", -- [2]
      },
      [123146] = {
        "Torn Spirit", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [70308] = {
        "Soul-Fed Construct", -- [1]
        "Throne of Thunder", -- [2]
      },
      [139017] = {
        "Wildmane", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [149508] = {
        "Ice Blocked Nathanos", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [102293] = {
        "Dread Admiral Eliza", -- [1]
        "Azsuna", -- [2]
      },
      [133389] = {
        "Galvazzt", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [56472] = {
        "Fragrant Lotus", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [134157] = {
        "Shadow-Borne Warrior", -- [1]
        "Kings' Rest", -- [2]
      },
      [56792] = {
        "Figment of Doubt", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [137484] = {
        "King A'akul", -- [1]
        "Kings' Rest", -- [2]
      },
      [145928] = {
        "Skavis Nightstalker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [134158] = {
        "Shadow-Borne Champion", -- [1]
        "Kings' Rest", -- [2]
      },
      [128649] = {
        "Sergeant Bainbridge", -- [1]
        "Siege of Boralus", -- [2]
      },
      [61398] = {
        "Xin the Weaponmaster", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [16410] = {
        "Spectral Retainer", -- [1]
        "Karazhan", -- [2]
      },
      [137485] = {
        "Bloodsworn Agent", -- [1]
        "Kings' Rest", -- [2]
      },
      [146185] = {
        "Firesting Drone", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [148488] = {
        "Unliving Augur", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [61910] = {
        "Resin Flake", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [137486] = {
        "Queen Patlaa", -- [1]
        "Kings' Rest", -- [2]
      },
      [146186] = {
        "Firesting Warrior", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138254] = {
        "Irontide Powdershot", -- [1]
        "Siege of Boralus", -- [2]
      },
      [138510] = {
        "Twilight Doomcaller", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [62358] = {
        "Corrupt Droplet", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [137487] = {
        "Skeletal Hunting Raptor", -- [1]
        "Kings' Rest", -- [2]
      },
      [69927] = {
        "Zandalari Prelate", -- [1]
        "Throne of Thunder", -- [2]
      },
      [90525] = {
        "Eredar Chaos Guard", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [138255] = {
        "Ashvane Spotter", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134417] = {
        "Deepsea Ritualist", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [129802] = {
        "Earthrager", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [136976] = {
        "T'zala", -- [1]
        "Kings' Rest", -- [2]
      },
      [126092] = {
        "Slitherblade Gladiator", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [68904] = {
        "Suen", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134418] = {
        "Drowned Depthbringer", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [61399] = {
        "Glintrok Scout", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [137233] = {
        "Plague Toad", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [139536] = {
        "Zara'thik Drone", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [78116] = {
        "Water Elemental", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [129547] = {
        "Blacktooth Knuckleduster", -- [1]
        "Freehold", -- [2]
      },
      [140560] = {
        "Blazeseeker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [59800] = {
        "Krik'thik Rager", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [149516] = {
        "Blackpaw", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [68905] = {
        "Lu'lin", -- [1]
        "Throne of Thunder", -- [2]
      },
      [128652] = {
        "Viq'Goth", -- [1]
        "Siege of Boralus", -- [2]
      },
      [129548] = {
        "Blacktooth Brute", -- [1]
        "Freehold", -- [2]
      },
      [127757] = {
        "Reanimated Honor Guard", -- [1]
        "Atal'Dazar", -- [2]
      },
      [139539] = {
        "Tavok, Hammer of the Empress", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [131863] = {
        "Raal the Gluttonous", -- [1]
        "Waycrest Manor", -- [2]
      },
      [102298] = {
        "Dread Squallshaper", -- [1]
        "Azsuna", -- [2]
      },
      [139284] = {
        "Plague Doctor", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [59545] = {
        "The Golden Beetle", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [131864] = {
        "Gorak Tul", -- [1]
        "Waycrest Manor", -- [2]
      },
      [16539] = {
        "Homunculus", -- [1]
        "Karazhan", -- [2]
      },
      [136470] = {
        "Refreshment Vendor", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [59801] = {
        "Krik'thik Wind Shaper", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [109591] = {
        "Felguard Legionnaire", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [133912] = {
        "Bloodsworn Defiler", -- [1]
        "The Underrot", -- [2]
      },
      [62360] = {
        "Corrupt Droplet", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [147218] = {
        "Spirit of Gold", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [135192] = {
        "Honored Raptor", -- [1]
        "Kings' Rest", -- [2]
      },
      [127119] = {
        "Freehold Deckhand", -- [1]
        "Freehold", -- [2]
      },
      [129550] = {
        "Bilge Rat Padfoot", -- [1]
        "Freehold", -- [2]
      },
      [56731] = {
        "Habanero Brew", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [136984] = {
        "Reban", -- [1]
        "Kings' Rest", -- [2]
      },
      [131099] = {
        "Giggling Nettlevine", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [139799] = {
        "Ironhull Apprentice", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [148243] = {
        "Fallen Disciple", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [61337] = {
        "Glintrok Ironhide", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [102300] = {
        "Raging Current", -- [1]
        "Azsuna", -- [2]
      },
      [110616] = {
        "Dark Worshipper", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [59546] = {
        "The Talking Fish", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [70060] = {
        "Shadowed Voodoo Spirit", -- [1]
        "Throne of Thunder", -- [2]
      },
      [68397] = {
        "Lei Shen", -- [1]
        "Throne of Thunder", -- [2]
      },
      [132892] = {
        "Giddyleaf", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [130575] = {
        "Wandering Axebeak", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [140825] = {
        "Thistlebrush Trickster", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [134940] = {
        "Bristlethorn Piercer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [110617] = {
        "Shadowsworn Harbinger", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [129552] = {
        "Monzumi", -- [1]
        "Atal'Dazar", -- [2]
      },
      [70445] = {
        "Stormbringer Draz'kil", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134941] = {
        "Bristlethorn Spider", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [56924] = {
        "Inflamed Hozen Brawler", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [134174] = {
        "Shadow-Borne Witch Doctor", -- [1]
        "Kings' Rest", -- [2]
      },
      [61338] = {
        "Glintrok Skulker", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [110618] = {
        "Anchoring Crystal", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [59547] = {
        "Jiang", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [129553] = {
        "Dinomancer Kish'o", -- [1]
        "Atal'Dazar", -- [2]
      },
      [140828] = {
        "Morningdew", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [147225] = {
        "Azerite Extractor", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [139805] = {
        "Mechanical Guardhound", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [136735] = {
        "Ashvane Marine", -- [1]
        "Tol Dagor", -- [2]
      },
      [136991] = {
        "Blood-Hunter Dazal'ai", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [139806] = {
        "Venture Demolitions Expert", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [56541] = {
        "Master Snowdrift", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [139807] = {
        "Venture Surveyor", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [61339] = {
        "Glintrok Oracle", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [127124] = {
        "Freehold Barhand", -- [1]
        "Freehold", -- [2]
      },
      [139808] = {
        "Venture Oaf", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [59804] = {
        "Gripping Hatred", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [135971] = {
        "Faithless Conscript", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [136483] = {
        "Ashvane Deckhand", -- [1]
        "Siege of Boralus", -- [2]
      },
      [151068] = {
        "Tentacled Voidpriest", -- [1]
        "Crucible of Storms", -- [2]
      },
      [102305] = {
        "Dreadguard", -- [1]
        "Azsuna", -- [2]
      },
      [135204] = {
        "Spectral Hex Priest", -- [1]
        "Kings' Rest", -- [2]
      },
      [139810] = {
        "Venture Middle Manager", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [127381] = {
        "Silt Crab", -- [1]
        "Tol Dagor", -- [2]
      },
      [140834] = {
        "Laughing Blaze", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134949] = {
        "Slateskitter", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [56862] = {
        "Drunken Hozen Brawler", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [140067] = {
        "Rustpelt Alpha", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [61340] = {
        "Glintrok Hexxer", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [131112] = {
        "Cutwater Striker", -- [1]
        "Tol Dagor", -- [2]
      },
      [139812] = {
        "Venture Producer", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [123288] = {
        "Southsea Cannoneer", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [140836] = {
        "Brightfire", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [147745] = {
        "The Indomitable", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [101667] = {
        "Shielded Anchor", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [140069] = {
        "Rustpelt Wolf", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [71474] = {
        "Embodied Despair", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [137511] = {
        "Bilge Rat Cutthroat", -- [1]
        "Siege of Boralus", -- [2]
      },
      [123289] = {
        "Sparkleshell Deathclaw", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [140838] = {
        "Mischievous Flood", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [56799] = {
        "Krik'thik Bombardier", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [56863] = {
        "Sleepy Hozen Brawler", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [56927] = {
        "Hozen Party Animal", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [122266] = {
        "Spineshell Turtle", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [130582] = {
        "Despondent Scallywag", -- [1]
        "Tol Dagor", -- [2]
      },
      [150818] = {
        "Disturbed Blood Globule", -- [1]
        "Uldir Scenario", -- [2]
      },
      [71475] = {
        "Rook Stonetoe", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [71603] = {
        "Sha Puddle", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [123290] = {
        "Sparkleshell Clacker", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [129559] = {
        "Cutwater Duelist", -- [1]
        "Freehold", -- [2]
      },
      [125977] = {
        "Reanimation Totem", -- [1]
        "Atal'Dazar", -- [2]
      },
      [139817] = {
        "Chief Engineer Zazzy", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [71476] = {
        "Embodied Misery", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [78001] = {
        "Cloudburst Totem", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [139818] = {
        "Security Officer Durk", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [148262] = {
        "Tidewater Elemental", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [144680] = {
        "Frida Ironbellows", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [134701] = {
        "Blood Effigy", -- [1]
        "The Underrot", -- [2]
      },
      [147495] = {
        "Rastari Enforcer", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [137516] = {
        "Ashvane Invader", -- [1]
        "Siege of Boralus", -- [2]
      },
      [71477] = {
        "Embodied Gloom", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [16414] = {
        "Ghostly Steward", -- [1]
        "Karazhan", -- [2]
      },
      [135470] = {
        "Aka'ali the Conqueror", -- [1]
        "Kings' Rest", -- [2]
      },
      [59551] = {
        "Bopper", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [133935] = {
        "Animated Guardian", -- [1]
        "Kings' Rest", -- [2]
      },
      [71478] = {
        "Embodied Anguish", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [71734] = {
        "Sha of Pride", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [135472] = {
        "Zanazal the Wise", -- [1]
        "Kings' Rest", -- [2]
      },
      [148522] = {
        "Ice Block", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [146731] = {
        "Zombie Dust Totem", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [56865] = {
        "Aqua Dancer", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [56929] = {
        "Krik'thik Protectorate", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [140335] = {
        "Nightscale Screecher", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [71479] = {
        "He Softfoot", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [137521] = {
        "Irontide Powdershot", -- [1]
        "Siege of Boralus", -- [2]
      },
      [59552] = {
        "The Crybaby Hozen", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [113059] = {
        "Fel Lord Garzan", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [140336] = {
        "Nightscale Wind Serpent", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [144942] = {
        "Spark Bot", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [135475] = {
        "Kula the Butcher", -- [1]
        "Kings' Rest", -- [2]
      },
      [140337] = {
        "Nightscale Hatchling", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [71480] = {
        "Sun Tenderheart", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [133685] = {
        "Befouled Spirit", -- [1]
        "The Underrot", -- [2]
      },
      [144944] = {
        "Thirsting Bloodsucker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [132918] = {
        "Spitefin Raider", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [131383] = {
        "Sporecaller Zancha", -- [1]
        "The Underrot", -- [2]
      },
      [135989] = {
        "Shieldbearer of Zul", -- [1]
        "Atal'Dazar", -- [2]
      },
      [65310] = {
        "Turnip Punching Bag", -- [1]
        "Kings' Rest", -- [2]
      },
      [71481] = {
        "Embodied Sorrow", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [132919] = {
        "Spitefin Behemoth", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [16415] = {
        "Skeletal Waiter", -- [1]
        "Karazhan", -- [2]
      },
      [59553] = {
        "The Songbird Queen", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [133943] = {
        "Minion of Zul", -- [1]
        "Kings' Rest", -- [2]
      },
      [70202] = {
        "Manchu", -- [1]
        "Throne of Thunder", -- [2]
      },
      [144690] = {
        "Mestrah", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [59873] = {
        "Corrupt Living Water", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [133432] = {
        "Venture Co. Alchemist", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [130333] = {
        "Gritplate Basilisk", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [133944] = {
        "Aspix", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [140341] = {
        "Cloudscraper", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [71482] = {
        "Embodied Desperation", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [135736] = {
        "Gore", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [144948] = {
        "Leatherwing Hunter", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [70587] = {
        "Shale Stalker", -- [1]
        "Throne of Thunder", -- [2]
      },
      [56867] = {
        "Fiery Trickster", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [130334] = {
        "Gritplate Gazer", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [91569] = {
        "Volatile Bear", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [136249] = {
        "Guardian Elemental", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [144693] = {
        "Manceroy Flamefist", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [144949] = {
        "Canopy Stalker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [59426] = {
        "Bopper", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [146485] = {
        "Nevara Nightshade", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [149556] = {
        "Eternal Enforcer", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [133436] = {
        "Venture Co. Skyscorcher", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [130335] = {
        "Gritplate Crystaleye", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [140345] = {
        "Stormscreech", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [69821] = {
        "Thunder Lord", -- [1]
        "Throne of Thunder", -- [2]
      },
      [145975] = {
        "Stonehide Buck", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [70205] = {
        "Weisheng", -- [1]
        "Throne of Thunder", -- [2]
      },
      [149558] = {
        "Jaina's Tide Elemental", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [145976] = {
        "Stonehide Bull", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [138556] = {
        "Tainted Ooze", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [59555] = {
        "Haunting Sha", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [70206] = {
        "Untrained Quilen", -- [1]
        "Throne of Thunder", -- [2]
      },
      [135231] = {
        "Spectral Brute", -- [1]
        "Kings' Rest", -- [2]
      },
      [135999] = {
        "Heliodor", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138558] = {
        "Faceless One", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [102191] = {
        "Dreadhound", -- [1]
        "Azsuna", -- [2]
      },
      [33776] = {
        "Kissemurran", -- [1]
        "Crucible of Storms", -- [2]
      },
      [146491] = {
        "Phantom of Retribution", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [129826] = {
        "Brineshell Snapclaw", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [140095] = {
        "Mudsnout Gorer", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [146492] = {
        "Phantom of Rage", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [124581] = {
        "Spineshell Snapper", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [151098] = {
        "Shadowy Appendage", -- [1]
        "Crucible of Storms", -- [2]
      },
      [135234] = {
        "Diseased Mastiff", -- [1]
        "Waycrest Manor", -- [2]
      },
      [140096] = {
        "Mudsnout Boar", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [59684] = {
        "Hozen Party Animal", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [129699] = {
        "Ludwig Von Tortollan", -- [1]
        "Freehold", -- [2]
      },
      [135235] = {
        "Spectral Beastmaster", -- [1]
        "Kings' Rest", -- [2]
      },
      [140353] = {
        "Brightscale Coilfang", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [140609] = {
        "Ravenous Mako", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [138818] = {
        "Bloodwake Warbringer", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [70209] = {
        "Untrained Quilen", -- [1]
        "Throne of Thunder", -- [2]
      },
      [56678] = {
        "Jade Staff", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [136005] = {
        "Rowdy Reveler", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [140355] = {
        "Brightscale Screecher", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [124583] = {
        "Garnetback Worm", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138820] = {
        "Bloodwake Vrykul", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [137029] = {
        "Ordnance Specialist", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [102706] = {
        "Grinning Shadowstalker", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [136006] = {
        "Rowdy Reveler", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [134215] = {
        "Duskrunner Lorinas", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [146753] = {
        "Kul Tiran Marine", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [70594] = {
        "Mist Lurker", -- [1]
        "Throne of Thunder", -- [2]
      },
      [135239] = {
        "Spectral Witch Doctor", -- [1]
        "Kings' Rest", -- [2]
      },
      [140357] = {
        "Venomreaver", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138822] = {
        "Bloodwake Harpooner", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [149569] = {
        "Dazari Worshipper", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [131402] = {
        "Underrot Tick", -- [1]
        "The Underrot", -- [2]
      },
      [68036] = {
        "Durumu the Forgotten", -- [1]
        "Throne of Thunder", -- [2]
      },
      [136264] = {
        "Half-Finished Mummy", -- [1]
        "Kings' Rest", -- [2]
      },
      [138823] = {
        "Bloodwake Wayfinder", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [135241] = {
        "Bilge Rat Pillager", -- [1]
        "Siege of Boralus", -- [2]
      },
      [61029] = {
        "Primal Fire Elemental", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [128551] = {
        "Irontide Mastiff", -- [1]
        "Freehold", -- [2]
      },
      [146756] = {
        "Energized Storm", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [59494] = {
        "Yeasty Brew Alemental", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [133963] = {
        "Test Subject", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [70212] = {
        "Flaming Head", -- [1]
        "Throne of Thunder", -- [2]
      },
      [138569] = {
        "Harbinger Vor'zzyx", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [119724] = {
        "Tidal Surger", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [130087] = {
        "Irontide Raider", -- [1]
        "Tol Dagor", -- [2]
      },
      [19872] = {
        "Lady Catriona Von'Indi", -- [1]
        "Karazhan", -- [2]
      },
      [138826] = {
        "Leikneir the Brave", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [69701] = {
        "Anima Golem", -- [1]
        "Throne of Thunder", -- [2]
      },
      [70341] = {
        "Tormented Spirit", -- [1]
        "Throne of Thunder", -- [2]
      },
      [135245] = {
        "Bilge Rat Demolisher", -- [1]
        "Siege of Boralus", -- [2]
      },
      [131407] = {
        "Venture Goon", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [138828] = {
        "Berhild the Fierce", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [134990] = {
        "Charged Dust Devil", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [69702] = {
        "Ritualist Xeron", -- [1]
        "Throne of Thunder", -- [2]
      },
      [16482] = {
        "Trapped Soul", -- [1]
        "Karazhan", -- [2]
      },
      [138061] = {
        "Venture Co. Longshoreman", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [140620] = {
        "South Sea Stinger", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [144970] = {
        "Kaldorei Archer", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [134991] = {
        "Sandfury Stonefist", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [135247] = {
        "Varigg", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [135759] = {
        "Earthwall Totem", -- [1]
        "Kings' Rest", -- [2]
      },
      [144971] = {
        "Druid of the Branch", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [135248] = {
        "Briona the Bloodthirsty", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [131666] = {
        "Coven Thornshaper", -- [1]
        "Waycrest Manor", -- [2]
      },
      [146251] = {
        "Sister Katherine", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [144972] = {
        "Kaldorei Huntress", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [134993] = {
        "Mchimba the Embalmer", -- [1]
        "Kings' Rest", -- [2]
      },
      [147787] = {
        "7th Legion Battlemage", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [131667] = {
        "Soulbound Goliath", -- [1]
        "Waycrest Manor", -- [2]
      },
      [65317] = {
        "Xiang", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [138576] = {
        "Faceless Tendril", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [144973] = {
        "Kaldorei Sentinel", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [134994] = {
        "Spectral Headhunter", -- [1]
        "Kings' Rest", -- [2]
      },
      [146253] = {
        "Brother Joseph", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [90686] = {
        "Felstalker Dreadhound", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [134739] = {
        "Purification Construct", -- [1]
        "Kings' Rest", -- [2]
      },
      [135763] = {
        "Voidling", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [133972] = {
        "Heavy Cannon", -- [1]
        "Tol Dagor", -- [2]
      },
      [19873] = {
        "Lord Crispin Ference", -- [1]
        "Karazhan", -- [2]
      },
      [146766] = {
        "Greater Serpent Totem", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [135764] = {
        "Explosive Totem", -- [1]
        "Kings' Rest", -- [2]
      },
      [138579] = {
        "Giant Claw Tentacle", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [135765] = {
        "Torrent Totem", -- [1]
        "Kings' Rest", -- [2]
      },
      [146256] = {
        "Laminaria", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [151630] = {
        "Void Ichor", -- [1]
        "Crucible of Storms", -- [2]
      },
      [133463] = {
        "Venture Co. War Machine", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [146769] = {
        "Druid of the Claw", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [138837] = {
        "Zara'thik Ambershaper", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [61928] = {
        "Sik'thik Guardian", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [134232] = {
        "Hired Assassin", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [146770] = {
        "Druid of the Claw", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [138838] = {
        "Zara'thik Mantid", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [94271] = {
        "Skyfire Engineer", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [62632] = {
        "Sik'thik Engineer", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [70219] = {
        "Putrid Waste", -- [1]
        "Throne of Thunder", -- [2]
      },
      [140630] = {
        "Ornate Puffer", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [56875] = {
        "Krik'thik Demolisher", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [140631] = {
        "South Sea Ray", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138840] = {
        "Zara'thik Impaler", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [149331] = {
        "Luminous Azerite", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [135258] = {
        "Irontide Marauder", -- [1]
        "Siege of Boralus", -- [2]
      },
      [140632] = {
        "Scaleback Snapper", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138841] = {
        "Zara'thik Battlesinger", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [139097] = {
        "Sandswept Marksman", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [131677] = {
        "Heartsbane Runeweaver", -- [1]
        "Waycrest Manor", -- [2]
      },
      [69069] = {
        "Living Fluid", -- [1]
        "Throne of Thunder", -- [2]
      },
      [19874] = {
        "Baron Rafe Dreuger", -- [1]
        "Karazhan", -- [2]
      },
      [91970] = {
        "Felguard Invader", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [62633] = {
        "Sik'thik Builder", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [138843] = {
        "Wingleader Srak'ik", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [56876] = {
        "Krik'thik Sapper", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [93506] = {
        "Skyfire Gryphon Rider", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [69070] = {
        "Viscous Horror", -- [1]
        "Throne of Thunder", -- [2]
      },
      [136541] = {
        "Bile Oozeling", -- [1]
        "Waycrest Manor", -- [2]
      },
      [149591] = {
        "Rastari Marksman", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [59819] = {
        "Artillery", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [135007] = {
        "Orb Guardian", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [135263] = {
        "Ashvane Spotter", -- [1]
        "Siege of Boralus", -- [2]
      },
      [128434] = {
        "Feasting Skyscreamer", -- [1]
        "Atal'Dazar", -- [2]
      },
      [148569] = {
        "Breakwater Elemental", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138846] = {
        "Amberwinged Mindsinger", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [94275] = {
        "Skyfire Powder Monkey", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [56877] = {
        "Raigonn", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [128435] = {
        "Toxic Saurid", -- [1]
        "Atal'Dazar", -- [2]
      },
      [69712] = {
        "Ji-Kun", -- [1]
        "Throne of Thunder", -- [2]
      },
      [70224] = {
        "Rotting Scavenger", -- [1]
        "Throne of Thunder", -- [2]
      },
      [59820] = {
        "Pandaren Cannoneer", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [72655] = {
        "Fragment of Pride", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [131685] = {
        "Runic Disciple", -- [1]
        "Waycrest Manor", -- [2]
      },
      [138338] = {
        "Reanimated Guardian", -- [1]
        "The Underrot", -- [2]
      },
      [131431] = {
        "Safety Inspection Bot", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [136549] = {
        "Ashvane Cannoneer", -- [1]
        "Siege of Boralus", -- [2]
      },
      [144993] = {
        "Crazed Thistlebear", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [16485] = {
        "Arcane Watchman", -- [1]
        "Karazhan", -- [2]
      },
      [137830] = {
        "Pallid Gorger", -- [1]
        "Waycrest Manor", -- [2]
      },
      [130485] = {
        "Mechanized Peacekeeper", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [136295] = {
        "Sunken Denizen", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [132713] = {
        "Mogul Razdunk", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [139110] = {
        "Spark Channeler", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [70227] = {
        "Skittering Spiderling", -- [1]
        "Throne of Thunder", -- [2]
      },
      [144996] = {
        "Visage from Beyond", -- [1]
        "Crucible of Storms", -- [2]
      },
      [149346] = {
        "Suffused Azerite", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [133482] = {
        "Crawler Mine", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [136297] = {
        "Forgotten Denizen", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [61485] = {
        "General Pa'valak", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [131436] = {
        "Chosen Blood Matron", -- [1]
        "The Underrot", -- [2]
      },
      [134251] = {
        "Seneschal M'bara", -- [1]
        "Kings' Rest", -- [2]
      },
      [144231] = {
        "Rowdy Reveler", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [19876] = {
        "Lord Robin Daris", -- [1]
        "Karazhan", -- [2]
      },
      [3527] = {
        "Healing Stream Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [139626] = {
        "Dredged Sailor", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [144232] = {
        "Rowdy Reveler", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [148582] = {
        "Stormbound Guardian", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [130488] = {
        "Mech Jockey", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [70230] = {
        "Zandalari Blade Initiate", -- [1]
        "Throne of Thunder", -- [2]
      },
      [72661] = {
        "Zeal", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [130489] = {
        "Dazarian Stalker", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [144747] = {
        "Pa'ku's Aspect", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [134768] = {
        "Sandskitter the Relentless", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [149098] = {
        "Maiev Shadowsong", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [72662] = {
        "Vanity", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [134514] = {
        "Abyssal Cultist", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [145261] = {
        "Opulence", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [149611] = {
        "Apetagonizer 3000", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [70232] = {
        "Muckbat", -- [1]
        "Throne of Thunder", -- [2]
      },
      [68313] = {
        "Roaming Fog", -- [1]
        "Throne of Thunder", -- [2]
      },
      [72791] = {
        "Lingering Corruption", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [131445] = {
        "Block Warden", -- [1]
        "Tol Dagor", -- [2]
      },
      [60208] = {
        "Hopling", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [69465] = {
        "Jin'rokh the Breaker", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134005] = {
        "Shalebiter", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [141938] = {
        "Ashvane Sniper", -- [1]
        "Siege of Boralus", -- [2]
      },
      [130620] = {
        "Frostfencer Seraphi", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [141939] = {
        "Ashvane Spotter", -- [1]
        "Siege of Boralus", -- [2]
      },
      [144754] = {
        "Fa'thuul the Feared", -- [1]
        "Crucible of Storms", -- [2]
      },
      [66652] = {
        "Lesser Volatile Energy", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [147825] = {
        "7th Legion Medic", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [130621] = {
        "Squallshaper Bryson", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [144755] = {
        "Zaxasj the Speaker", -- [1]
        "Crucible of Storms", -- [2]
      },
      [137591] = {
        "Healing Tide Totem", -- [1]
        "Kings' Rest", -- [2]
      },
      [129470] = {
        "Deepsea Crab", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [70235] = {
        "Frozen Head", -- [1]
        "Throne of Thunder", -- [2]
      },
      [147827] = {
        "7th Legion Marine", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [130622] = {
        "Squallshaper Auran", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [147828] = {
        "7th Legion Cavalier", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [129471] = {
        "Deepsea Sandcrawler", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [70236] = {
        "Zandalari Storm-Caller", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134012] = {
        "Taskmaster Askari", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [144759] = {
        "Keeper Dagda", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [140154] = {
        "Rotclaw Patriarch", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [129600] = {
        "Bilge Rat Brinescale", -- [1]
        "Freehold", -- [2]
      },
      [58803] = {
        "Residual Hatred", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [56884] = {
        "Corrupted Taran Zhu", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [146552] = {
        "Kul Tiran Tideweaver", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [136829] = {
        "Witherbranch Axe Thrower", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [145273] = {
        "The Hand of In'zashi", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [16424] = {
        "Spectral Sentry", -- [1]
        "Karazhan", -- [2]
      },
      [16488] = {
        "Arcane Anomaly", -- [1]
        "Karazhan", -- [2]
      },
      [100943] = {
        "Earthen Wall Totem", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [145274] = {
        "Yalat's Bulwark", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [150136] = {
        "Faceless Render", -- [1]
        "Uldir Scenario", -- [2]
      },
      [140669] = {
        "Rockmane Howler", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [106317] = {
        "Storm Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [131009] = {
        "Spirit of Gold", -- [1]
        "Atal'Dazar", -- [2]
      },
      [135552] = {
        "Deathtouched Slaver", -- [1]
        "Waycrest Manor", -- [2]
      },
      [150137] = {
        "Faceless Subduer", -- [1]
        "Uldir Scenario", -- [2]
      },
      [129602] = {
        "Irontide Enforcer", -- [1]
        "Freehold", -- [2]
      },
      [138623] = {
        "Amathet Archer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [144765] = {
        "Asithra Diresong", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [134786] = {
        "Spineclaw Sandsnapper", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [150139] = {
        "K'thxx the Void Hunter", -- [1]
        "Uldir Scenario", -- [2]
      },
      [70240] = {
        "Shan'ze Celestial Shaper", -- [1]
        "Throne of Thunder", -- [2]
      },
      [146813] = {
        "Gunther the Gray", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [132740] = {
        "Venomscale Hydra", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [144767] = {
        "Gonk's Aspect", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69473] = {
        "Ra-den", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134789] = {
        "Monstrous Spineclaw", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [148607] = {
        "Kal'ia Pa'kuaya", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [146816] = {
        "Sir Barton Brigham", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [69474] = {
        "Kresh the Ripper", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [135046] = {
        "Crawmog", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [16425] = {
        "Phantom Guardsman", -- [1]
        "Karazhan", -- [2]
      },
      [16489] = {
        "Chaotic Sentience", -- [1]
        "Karazhan", -- [2]
      },
      [138629] = {
        "Vicar Djosa", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [132744] = {
        "Frostscale Hydra", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [134024] = {
        "Devouring Maggot", -- [1]
        "Waycrest Manor", -- [2]
      },
      [134280] = {
        "Vindicator Baatul", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138630] = {
        "Cleric Izzad", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [102227] = {
        "Dread Harpooner", -- [1]
        "Azsuna", -- [2]
      },
      [135048] = {
        "Gorestained Piglet", -- [1]
        "Waycrest Manor", -- [2]
      },
      [56439] = {
        "Sha of Doubt", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [56631] = {
        "Hopling", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [144772] = {
        "Lady Tamakeen", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138887] = {
        "Bloodwake Mystic", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [135049] = {
        "Dreadwing Raven", -- [1]
        "Waycrest Manor", -- [2]
      },
      [128455] = {
        "T'lonja", -- [1]
        "Atal'Dazar", -- [2]
      },
      [148611] = {
        "Yoru'cha", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [132491] = {
        "Kul Tiran Marksman", -- [1]
        "Siege of Boralus", -- [2]
      },
      [136841] = {
        "Thu'zun the Vile", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [128967] = {
        "Ashvane Sniper", -- [1]
        "Siege of Boralus", -- [2]
      },
      [149635] = {
        "Blooming Protector", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [135562] = {
        "Venomous Ophidian", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [135818] = {
        "Gust Soldier", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [136330] = {
        "Soul Thorns", -- [1]
        "Waycrest Manor", -- [2]
      },
      [134795] = {
        "Veiled Hermit", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [134284] = {
        "Fallen Deathspeaker", -- [1]
        "The Underrot", -- [2]
      },
      [134796] = {
        "King Spineclaw", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [135052] = {
        "Blight Toad", -- [1]
        "Waycrest Manor", -- [2]
      },
      [131726] = {
        "Gunnolf the Ferocious", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [136076] = {
        "Agitated Nimbus", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [94809] = {
        "Knight-Captain Brimley", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [144776] = {
        "Airyn Swiftfeet", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [58807] = {
        "Vestige of Hatred", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [139659] = {
        "Dampscale Oracle", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [131727] = {
        "Fenrae the Cunning", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [57080] = {
        "Corrupted Scroll", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [148615] = {
        "Div'yane", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [133007] = {
        "Unbound Abomination", -- [1]
        "The Underrot", -- [2]
      },
      [139660] = {
        "Dampscale Murloc", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [131728] = {
        "Raul the Tenacious", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [70246] = {
        "Spirit Flayer", -- [1]
        "Throne of Thunder", -- [2]
      },
      [137614] = {
        "Demolishing Terror", -- [1]
        "Siege of Boralus", -- [2]
      },
      [131729] = {
        "Lyco", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [140429] = {
        "Drifthopper the Swift", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [69351] = {
        "Greater Cave Bat", -- [1]
        "Throne of Thunder", -- [2]
      },
      [137103] = {
        "Blood Visage", -- [1]
        "The Underrot", -- [2]
      },
      [139662] = {
        "Dampscale Raincaller", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [70247] = {
        "Venomous Head", -- [1]
        "Throne of Thunder", -- [2]
      },
      [146827] = {
        "Feral Dog", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [95451] = {
        "Genn Greymane", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [61239] = {
        "Glintrok Oracle", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [69352] = {
        "Vampiric Cave Bat", -- [1]
        "Throne of Thunder", -- [2]
      },
      [132755] = {
        "Breakbeak Scavenger", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [139664] = {
        "Dampscale Terrorfin", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [61623] = {
        "Sap Globule", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [94812] = {
        "7th Legion Paratrooper", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [138641] = {
        "Kvaldir Dreadbringer", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [137473] = {
        "Guard Captain Atu", -- [1]
        "Kings' Rest", -- [2]
      },
      [53006] = {
        "Spirit Link Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [97285] = {
        "Wind Rush Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [143985] = {
        "Absorb-o-Tron", -- [1]
        "Crucible of Storms", -- [2]
      },
      [69792] = {
        "Kokayy", -- [1]
        "Crucible of Storms", -- [2]
      },
      [103896] = {
        "Felfire Imp", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [148621] = {
        "Jek'kwa", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138642] = {
        "Kvaldir Reaver", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [69791] = {
        "Kokayy", -- [1]
        "Crucible of Storms", -- [2]
      },
      [69013] = {
        "Diffused Lightning", -- [1]
        "Throne of Thunder", -- [2]
      },
      [5913] = {
        "Tremor Totem", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [129601] = {
        "Cutwater Harpooner", -- [1]
        "Freehold", -- [2]
      },
      [129599] = {
        "Cutwater Knife Juggler", -- [1]
        "Freehold", -- [2]
      },
      [126845] = {
        "Captain Jolly", -- [1]
        "Freehold", -- [2]
      },
      [70249] = {
        "Focused Eye", -- [1]
        "Throne of Thunder", -- [2]
      },
      [146831] = {
        "Kul Tiran Stormbringer", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [56762] = {
        "Yu'lon", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [127799] = {
        "Dazar'ai Honor Guard", -- [1]
        "Atal'Dazar", -- [2]
      },
      [56890] = {
        "Krik'thik Infiltrator", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [134794] = {
        "Darklurker", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138970] = {
        "Vengeful Spirit", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [146320] = {
        "Prelate Za'lan", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [61240] = {
        "Glintrok Skulker", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [146832] = {
        "Necromancer Disciple", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [134806] = {
        "Bloodsnapper", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [17533] = {
        "Romulo", -- [1]
        "Karazhan", -- [2]
      },
      [17534] = {
        "Julianne", -- [1]
        "Karazhan", -- [2]
      },
      [16459] = {
        "Wanton Hostess", -- [1]
        "Karazhan", -- [2]
      },
      [16491] = {
        "Mana Feeder", -- [1]
        "Karazhan", -- [2]
      },
      [69475] = {
        "Arcanital Tula'chek", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [148624] = {
        "Echo of Pa'ku", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138645] = {
        "Kvaldir Soulflayer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [59764] = {
        "Healing Tide Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [145298] = {
        "Feral Hungerer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [129015] = {
        "Southsea Third Mate", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [136688] = {
        "Fanatical Driller", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [134898] = {
        "Venomfang Recluse", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [103898] = {
        "Sickly Imp", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [148625] = {
        "Echo of Krag'wa", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [146834] = {
        "Necromancer Master", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [129016] = {
        "Southsea Musketeer", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [72658] = {
        "Amalgamated Hubris", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [130436] = {
        "Off-Duty Laborer", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [140841] = {
        "Snickering Ripple", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138465] = {
        "Ashvane Cannoneer", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134041] = {
        "Infected Peasant", -- [1]
        "Waycrest Manor", -- [2]
      },
      [146835] = {
        "Ghoul", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138647] = {
        "Hjana Fogbringer", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [66413] = {
        "Yeasty Brew Alemental", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [137713] = {
        "Big Money Crab", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [142454] = {
        "Ashtail Bandicoon", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [139671] = {
        "Sharkslayer Mugluk", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [126832] = {
        "Skycap'n Kragg", -- [1]
        "Freehold", -- [2]
      },
      [103899] = {
        "Shadowflame Imp", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [130638] = {
        "Vicejaw Crocolisk", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [136665] = {
        "Ashvane Spotter", -- [1]
        "Tol Dagor", -- [2]
      },
      [134629] = {
        "Scaled Krolusk Rider", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [126928] = {
        "Irontide Corsair", -- [1]
        "Freehold", -- [2]
      },
      [135322] = {
        "The Golden Serpent", -- [1]
        "Kings' Rest", -- [2]
      },
      [129231] = {
        "Rixxa Fluxflame", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [69132] = {
        "High Priestess Mar'li", -- [1]
        "Throne of Thunder", -- [2]
      },
      [16540] = {
        "Shadow Pillager", -- [1]
        "Karazhan", -- [2]
      },
      [135761] = {
        "Thundering Totem", -- [1]
        "Kings' Rest", -- [2]
      },
      [140293] = {
        "Snowfur Snarler", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134686] = {
        "Mature Krolusk", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [61945] = {
        "Gurthan Iron Maw", -- [1]
        "Azsuna", -- [2]
      },
      [70248] = {
        "Arcane Head", -- [1]
        "Throne of Thunder", -- [2]
      },
      [137626] = {
        "Demolishing Terror", -- [1]
        "Siege of Boralus", -- [2]
      },
      [129529] = {
        "Blacktooth Scrapper", -- [1]
        "Freehold", -- [2]
      },
      [146326] = {
        "Headhunter Gal'wana", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [136347] = {
        "Tidesage Initiate", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [138650] = {
        "Tide-Lost Champion", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134788] = {
        "Spineclaw Rockshell", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [145303] = {
        "Kaldorei Glaive Thrower", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [122963] = {
        "Rezan", -- [1]
        "Atal'Dazar", -- [2]
      },
      [129232] = {
        "Mogul Razdunk", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [139009] = {
        "Feral Hunter", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [68078] = {
        "Iron Qon", -- [1]
        "Throne of Thunder", -- [2]
      },
      [56636] = {
        "Commander Ri'mok", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [135961] = {
        "Deepstone Crusher", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [56764] = {
        "Consuming Sha", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [145304] = {
        "Feral Strangler", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [133593] = {
        "Expert Technician", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [149535] = {
        "Icebound Image", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [109604] = {
        "Felguard Legionnaire", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [16470] = {
        "Ghostly Philanthropist", -- [1]
        "Karazhan", -- [2]
      },
      [61242] = {
        "Glintrok Ironhide", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [146840] = {
        "Skeleton Guardian", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [130896] = {
        "Blackout Barrel", -- [1]
        "Freehold", -- [2]
      },
      [61434] = {
        "Sik'thik Vanguard", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [72276] = {
        "Amalgam of Corruption", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [146493] = {
        "Phantom of Slaughter", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [148120] = {
        "Kul Tiran Marine", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [68079] = {
        "Ro'shak", -- [1]
        "Throne of Thunder", -- [2]
      },
      [140444] = {
        "Muskflank Bull", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [129214] = {
        "Coin-Operated Crowd Pummeler", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [59835] = {
        "Krik'thik Swarmer", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [61946] = {
        "Harthak Stormcaller", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [138968] = {
        "Zian-Ti Ironmaw", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [140354] = {
        "Brightscale Wind Serpent", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [139654] = {
        "Dampscale Mudskipper", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [73197] = {
        "Lesser Sha Puddle", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [148254] = {
        "Frost Shard", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138654] = {
        "Vestar of the Tattered Sail", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [147098] = {
        "Spirit of Xuen", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [58810] = {
        "Fragment of Hatred", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [139422] = {
        "Scaled Krolusk Tamer", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [16524] = {
        "Shade of Aran", -- [1]
        "Karazhan", -- [2]
      },
      [127315] = {
        "Reanimation Totem", -- [1]
        "Atal'Dazar", -- [2]
      },
      [56765] = {
        "Destroying Sha", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [56637] = {
        "Ook-Ook", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [146843] = {
        "Spiked Ghoul", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [58812] = {
        "Hateful Essence", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [129517] = {
        "Reanimated Raptor", -- [1]
        "Atal'Dazar", -- [2]
      },
      [135329] = {
        "Matron Bryndle", -- [1]
        "Waycrest Manor", -- [2]
      },
      [135240] = {
        "Soul Essence", -- [1]
        "Waycrest Manor", -- [2]
      },
      [80583] = {
        "Pale Gloomstalker", -- [1]
        "FW Horde Garrison Level 1", -- [2]
      },
      [61243] = {
        "Gekkan", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [136353] = {
        "Colossal Tentacle", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [145927] = {
        "Starcaller Ellana", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [145053] = {
        "Eldritch Abomination", -- [1]
        "Crucible of Storms", -- [2]
      },
      [129526] = {
        "Bilge Rat Swabby", -- [1]
        "Freehold", -- [2]
      },
      [144849] = {
        "Darkscale Scout", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [131492] = {
        "Devout Blood Priest", -- [1]
        "The Underrot", -- [2]
      },
      [146553] = {
        "Kul Tiran Strongarm", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [144286] = {
        "Asset Manager", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [94820] = {
        "Worgen Stalker", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [146845] = {
        "Jared the Jagged", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [130640] = {
        "Vicejaw Sawtooth", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [61947] = {
        "Kargesh Ribcrusher", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [139425] = {
        "Crazed Incubator", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [137940] = {
        "Safety Shark", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [134139] = {
        "Shrine Templar", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [139475] = {
        "Jade-Formed Bonesnapper", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [132126] = {
        "Gilded Priestess", -- [1]
        "Atal'Dazar", -- [2]
      },
      [148893] = {
        "Tormented Soul", -- [1]
        "Siege of Boralus", -- [2]
      },
      [16407] = {
        "Spectral Servant", -- [1]
        "Karazhan", -- [2]
      },
      [56658] = {
        "Corrupt Droplet", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [122967] = {
        "Priestess Alun'za", -- [1]
        "Atal'Dazar", -- [2]
      },
      [127497] = {
        "Ashvane Warden", -- [1]
        "Tol Dagor", -- [2]
      },
      [16481] = {
        "Ghastly Haunt", -- [1]
        "Karazhan", -- [2]
      },
      [136100] = {
        "Sunken Denizen", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [148894] = {
        "Lost Soul", -- [1]
        "Siege of Boralus", -- [2]
      },
      [138659] = {
        "Risen Hound", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [56766] = {
        "Volatile Energy", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [32517] = {
        "Spirit Beast", -- [1]
        "Crucible of Storms", -- [2]
      },
      [56732] = {
        "Liu Flameheart", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [140443] = {
        "Muskflank Charger", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [128651] = {
        "Hadal Darkfathom", -- [1]
        "Siege of Boralus", -- [2]
      },
      [126422] = {
        "Coralback Scuttler", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [130644] = {
        "Daggertooth", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [65402] = {
        "Gurthan Swiftblade", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [136934] = {
        "Weapons Tester", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [61436] = {
        "Sik'thik Bladedancer", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [122968] = {
        "Yazma", -- [1]
        "Atal'Dazar", -- [2]
      },
      [16461] = {
        "Concubine", -- [1]
        "Karazhan", -- [2]
      },
      [135846] = {
        "Sand-Crusted Striker", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [16525] = {
        "Spell Shade", -- [1]
        "Karazhan", -- [2]
      },
      [94822] = {
        "Abigail the Huntress", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [16492] = {
        "Syphoner", -- [1]
        "Karazhan", -- [2]
      },
      [145058] = {
        "Shadefeather Raven", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138628] = {
        "Amathet Priest", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [139429] = {
        "Stonebound Warrior", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [129598] = {
        "Freehold Pack Mule", -- [1]
        "Freehold", -- [2]
      },
      [132868] = {
        "Congealed Azerite", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134056] = {
        "Aqu'sirr", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [139021] = {
        "Bloodtracker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [146850] = {
        "Grand Master Ulrich", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [145059] = {
        "Cunning Nightwing", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [135246] = {
        "\"Stabby\" Lottie", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [122969] = {
        "Zanchuli Witch-Doctor", -- [1]
        "Atal'Dazar", -- [2]
      },
      [56511] = {
        "Corrupt Living Water", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [129366] = {
        "Bilge Rat Buccaneer", -- [1]
        "Siege of Boralus", -- [2]
      },
      [15687] = {
        "Moroes", -- [1]
        "Karazhan", -- [2]
      },
      [135706] = {
        "Bilge Rat Looter", -- [1]
        "Tol Dagor", -- [2]
      },
      [129527] = {
        "Bilge Rat Buccaneer", -- [1]
        "Freehold", -- [2]
      },
      [124582] = {
        "Chasm-Hunter", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [146596] = {
        "Darkscale Myrmidon", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [56895] = {
        "Weak Spot", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [97510] = {
        "Soulbound Destructor", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [69236] = {
        "Shan'ze Soulripper", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [126424] = {
        "Coralback Surfcrawler", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [61245] = {
        "Capacitor Totem", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [134173] = {
        "Animated Droplet", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [138996] = {
        "Earth-Speaker Juwa", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [61929] = {
        "Sik'thik Amber-Weaver", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [122970] = {
        "Shadowblade Stalker", -- [1]
        "Atal'Dazar", -- [2]
      },
      [59518] = {
        "Bloated Brew Alemental", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [129367] = {
        "Bilge Rat Tempest", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134939] = {
        "Bristlethorn Maneater", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [145977] = {
        "Mammoth Stonehide", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146853] = {
        "Kefolkis the Unburied", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [140968] = {
        "Garnetback Striker", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [59544] = {
        "The Nodding Tiger", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [147621] = {
        "Dark Iron Vanguard", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [130639] = {
        "Vicejaw Chomper", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [90544] = {
        "Krosus", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [62205] = {
        "Wing Leader Ner'onok", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [140430] = {
        "Craghoof Bounder", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146854] = {
        "Stella Darkpaw", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [134828] = {
        "Aqualing", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [140564] = {
        "Brimstone Lavamaw", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [122971] = {
        "Dazar'ai Juggernaut", -- [1]
        "Atal'Dazar", -- [2]
      },
      [56448] = {
        "Wise Mari", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [139946] = {
        "Heart Guardian", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [131670] = {
        "Heartsbane Vinetwister", -- [1]
        "Waycrest Manor", -- [2]
      },
      [140855] = {
        "Trickle", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [148617] = {
        "Akunda the Devout", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [145064] = {
        "Blaze", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [144782] = {
        "Brother Bruen", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [130325] = {
        "Deepsea Viseclaw", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [139691] = {
        "Brineshell Squallshaper", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [146829] = {
        "Undying Guardian", -- [1]
        "Crucible of Storms", -- [2]
      },
      [136214] = {
        "Windspeaker Heldis", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [146828] = {
        "Feral Pup", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [136083] = {
        "Forgotten Denizen", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [145065] = {
        "Fledgling Nightwing", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [70586] = {
        "Eternal Guardian", -- [1]
        "Throne of Thunder", -- [2]
      },
      [122972] = {
        "Dazar'ai Augur", -- [1]
        "Atal'Dazar", -- [2]
      },
      [16526] = {
        "Sorcerous Shade", -- [1]
        "Karazhan", -- [2]
      },
      [129369] = {
        "Irontide Raider", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134063] = {
        "Brother Ironhull", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [59605] = {
        "Sodden Hozen Brawler", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [102696] = {
        "Felslag Imp", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [126642] = {
        "Sandyback Crab", -- [1]
        "Siege of Boralus", -- [2]
      },
      [130635] = {
        "Stonefury", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [134893] = {
        "Ironweb Spider", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [131850] = {
        "Maddened Survivalist", -- [1]
        "Waycrest Manor", -- [2]
      },
      [139949] = {
        "Plague Doctor", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [130521] = {
        "Freehold Deckhand", -- [1]
        "Freehold", -- [2]
      },
      [139690] = {
        "Brineshell Seacaller", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [144842] = {
        "Tide Crawler", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [145067] = {
        "Shadefeather Hatchling", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [147370] = {
        "Bladeguard Kaja", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [122973] = {
        "Dazar'ai Confessor", -- [1]
        "Atal'Dazar", -- [2]
      },
      [148483] = {
        "Ancestral Avenger", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [129370] = {
        "Irontide Waveshaper", -- [1]
        "Siege of Boralus", -- [2]
      },
      [140425] = {
        "Surefoot", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146838] = {
        "Brittle Skeleton", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [132530] = {
        "Kul Tiran Vanguard", -- [1]
        "Siege of Boralus", -- [2]
      },
      [140974] = {
        "Eldercraw", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [134286] = {
        "Archmage Tamuura", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [56719] = {
        "Sha of Violence", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [133345] = {
        "Feckless Assistant", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [71543] = {
        "Immerseus", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [130522] = {
        "Freehold Shipmate", -- [1]
        "Freehold", -- [2]
      },
      [61247] = {
        "Glintrok Greenhorn", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [146860] = {
        "Mistscorn Marauder", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [102248] = {
        "Ravenous Hunter", -- [1]
        "Azsuna", -- [2]
      },
      [86000] = {
        "Gentle Clefthoof", -- [1]
        "FW Horde Garrison Level 1", -- [2]
      },
      [122264] = {
        "Elder Spineshell", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [61567] = {
        "Vizier Jin'bak", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [129371] = {
        "Riptide Shredder", -- [1]
        "Siege of Boralus", -- [2]
      },
      [132745] = {
        "Frostscale Wanderer", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [136160] = {
        "King Dazar", -- [1]
        "Kings' Rest", -- [2]
      },
      [132532] = {
        "Kul Tiran Marksman", -- [1]
        "Siege of Boralus", -- [2]
      },
      [147202] = {
        "Animated Azershard", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [130011] = {
        "Irontide Buccaneer", -- [1]
        "Freehold", -- [2]
      },
      [149144] = {
        "Jaina's Tide Elemental", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69906] = {
        "Zandalari High Priest", -- [1]
        "Throne of Thunder", -- [2]
      },
      [106321] = {
        "Tailwind Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [126429] = {
        "Encrusted Coralback", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [140294] = {
        "Snowfur Wolf", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146862] = {
        "Mistscorn Subjugator", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [101110] = {
        "Nether Ray", -- [1]
        "Crucible of Storms", -- [2]
      },
      [94189] = {
        "Living Felblaze", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [139015] = {
        "Feral Moonkin", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [139698] = {
        "Clattercraw the Oracle", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [129372] = {
        "Blacktar Bomber", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134069] = {
        "Vol'zith the Whisperer", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [138644] = {
        "Kvaldir Cursewalker", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146863] = {
        "Mistscorn Ravager", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [148584] = {
        "Archmage Mordent Evenshade", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [130012] = {
        "Irontide Ravager", -- [1]
        "Freehold", -- [2]
      },
      [137478] = {
        "Queen Wasi", -- [1]
        "Kings' Rest", -- [2]
      },
      [61056] = {
        "Primal Earth Elemental", -- [1]
        "Crucible of Storms", -- [2]
      },
      [138643] = {
        "Kvaldir Berserker", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [26125] = {
        "Earthrumbler", -- [1]
        "Crucible of Storms", -- [2]
      },
      [61670] = {
        "Sik'thik Demolisher", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [146864] = {
        "Mistscorn Earthbinder", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [94190] = {
        "Burning Sentry", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [139188] = {
        "Ironfur", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [102192] = {
        "Dread Sharpshooter", -- [1]
        "Azsuna", -- [2]
      },
      [139700] = {
        "Brineshell Sea Shaman", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [129373] = {
        "Dockhound Packmaster", -- [1]
        "Siege of Boralus", -- [2]
      },
      [134060] = {
        "Lord Stormsong", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [146118] = {
        "Territorial Needleback", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [147376] = {
        "Barrier", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69834] = {
        "Lightning Guardian", -- [1]
        "Throne of Thunder", -- [2]
      },
      [138626] = {
        "Amathet Zealot", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [138625] = {
        "Amathet Enforcer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134787] = {
        "Spineclaw Crab", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [109592] = {
        "Felguard Legionnaire", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [140973] = {
        "Bore Tunneler", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [130653] = {
        "Wanton Sapper", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [146866] = {
        "Enslaved Frost Elemental", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [130909] = {
        "Fetid Maggot", -- [1]
        "The Underrot", -- [2]
      },
      [94191] = {
        "Burning Terrorhound", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [133835] = {
        "Feral Bloodswarmer", -- [1]
        "The Underrot", -- [2]
      },
      [56763] = {
        "Regenerating Sha", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [17007] = {
        "Lady Keira Berrybuck", -- [1]
        "Karazhan", -- [2]
      },
      [129758] = {
        "Irontide Grenadier", -- [1]
        "Freehold", -- [2]
      },
      [68220] = {
        "Gastropod", -- [1]
        "Throne of Thunder", -- [2]
      },
      [146867] = {
        "Mistscorn Sharphorn", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [68476] = {
        "Horridon", -- [1]
        "Throne of Thunder", -- [2]
      },
      [139191] = {
        "Underbrush", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [135353] = {
        "Veteran Man O' War", -- [1]
        "Freehold", -- [2]
      },
      [102701] = {
        "Mo'arg Painbringer", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [102194] = {
        "Dread Crewman", -- [1]
        "Azsuna", -- [2]
      },
      [144837] = {
        "Darkshore Stag", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [62795] = {
        "Sik'thik Warden", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [126918] = {
        "Irontide Crackshot", -- [1]
        "Freehold", -- [2]
      },
      [102252] = {
        "Dread Lookout", -- [1]
        "Azsuna", -- [2]
      },
      [141495] = {
        "Kul Tiran Footman", -- [1]
        "Siege of Boralus", -- [2]
      },
      [59458] = {
        "Hopling", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [59522] = {
        "Sudsy Brew Alemental", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [94576] = {
        "Skyfire Gryphon", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [140334] = {
        "Nightscale Coilfang", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134331] = {
        "King Rahu'ai", -- [1]
        "Kings' Rest", -- [2]
      },
      [59778] = {
        "Krik'thik Striker", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [126094] = {
        "Slitherblade Wavecaller", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [147614] = {
        "Dark Iron Primalist", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [134423] = {
        "Abyss Dweller", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [135962] = {
        "Crag Rager", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [146102] = {
        "Living Bomb", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [126423] = {
        "Coralback Crab", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [130655] = {
        "Bobby Howlis", -- [1]
        "Tol Dagor", -- [2]
      },
      [15689] = {
        "Netherspite", -- [1]
        "Karazhan", -- [2]
      },
      [69944] = {
        "Sand Elemental", -- [1]
        "Throne of Thunder", -- [2]
      },
      [139800] = {
        "Galecaller Apprentice", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [135934] = {
        "Lord Incindivar", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [146103] = {
        "Living Bomb", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [67966] = {
        "Whirl Turtle", -- [1]
        "Throne of Thunder", -- [2]
      },
      [151059] = {
        "Eternal Guardian", -- [1]
        "Crucible of Storms", -- [2]
      },
      [68222] = {
        "Bow Fly Swarm", -- [1]
        "Throne of Thunder", -- [2]
      },
      [146871] = {
        "Matriarch Nas'naya", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [140356] = {
        "Brightscale Hatchling", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [148673] = {
        "Vessel of Bwonsamdi", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [145305] = {
        "Feral Hulk", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [130400] = {
        "Irontide Crusher", -- [1]
        "Freehold", -- [2]
      },
      [146104] = {
        "Living Bomb", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [147440] = {
        "Blazing Fireguard", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69374] = {
        "War-God Jalak", -- [1]
        "Throne of Thunder", -- [2]
      },
      [146872] = {
        "Kachota the Exiled", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [147439] = {
        "Molten Hound", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [61442] = {
        "Kuai the Brute", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [137405] = {
        "Gripping Terror", -- [1]
        "Siege of Boralus", -- [2]
      },
      [61634] = {
        "Commander Vo'jak", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [123236] = {
        "Scuttlestep Crab", -- [1]
        "Freehold", -- [2]
      },
      [148623] = {
        "Echo of Gonk", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138429] = {
        "Spitefin Tidebinder", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [71993] = {
        "Desperation Spawn", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [151144] = {
        "Hati", -- [1]
        "Crucible of Storms", -- [2]
      },
      [140431] = {
        "Craghoof Goat", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [148610] = {
        "Druid of the Branch", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [145850] = {
        "Gilnean Defuser", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [122984] = {
        "Dazar'ai Colossus", -- [1]
        "Atal'Dazar", -- [2]
      },
      [148921] = {
        "Kaldorei Glaive Thrower", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [148665] = {
        "Rastari Royal Guard", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69375] = {
        "Hidden Fog", -- [1]
        "Throne of Thunder", -- [2]
      },
      [139661] = {
        "Dampscale Forager", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [69459] = {
        "Bound Water Elemental", -- [1]
        "Throne of Thunder", -- [2]
      },
      [136391] = {
        "Heart Guardian", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [145851] = {
        "Kaldorei Hippogryph Rider", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [146874] = {
        "Windcaller Mariah", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [113130] = {
        "Burning Sentry", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [139460] = {
        "Stonebound Earthweaver", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [130437] = {
        "Mine Rat", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [135365] = {
        "Matron Alma", -- [1]
        "Waycrest Manor", -- [2]
      },
      [133430] = {
        "Venture Co. Mastermind", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [63106] = {
        "Sik'thik Swarmer", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [122086] = {
        "Slitherblade Ironscale", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [69455] = {
        "Zandalari Water-Binder", -- [1]
        "Throne of Thunder", -- [2]
      },
      [91704] = {
        "Anchoring Crystal", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [148667] = {
        "Rastari Punisher", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [113132] = {
        "Burning Terrorhound", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [90677] = {
        "Wrathguard Dreadblade", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [138646] = {
        "Kvaldir Mistcaller", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [59460] = {
        "Hopling", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [133836] = {
        "Reanimated Guardian", -- [1]
        "The Underrot", -- [2]
      },
      [61699] = {
        "Sik'thik Amberwing", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [113131] = {
        "Living Felblaze", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [135366] = {
        "Blacktooth Arsonist", -- [1]
        "Tol Dagor", -- [2]
      },
      [98035] = {
        "Dreadstalker", -- [1]
        "Crucible of Storms", -- [2]
      },
      [69078] = {
        "Sul the Sandcrawler", -- [1]
        "Throne of Thunder", -- [2]
      },
      [133663] = {
        "Fanatical Headhunter", -- [1]
        "The Underrot", -- [2]
      },
      [139457] = {
        "Stonebound Quilen", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [126181] = {
        "Ramut the Black", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [145934] = {
        "Ivan the Mad", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146366] = {
        "Molten Hound", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138434] = {
        "Spitefin Tempest Witch", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [136643] = {
        "Azerite Extractor", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [140993] = {
        "Darktunnel Ambusher", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [146365] = {
        "Blazing Fireguard", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [133870] = {
        "Diseased Lasher", -- [1]
        "The Underrot", -- [2]
      },
      [138247] = {
        "Irontide Marauder", -- [1]
        "Siege of Boralus", -- [2]
      },
      [137625] = {
        "Demolishing Terror", -- [1]
        "Siege of Boralus", -- [2]
      },
      [146367] = {
        "Char'golm", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [73342] = {
        "Fallen Pool Tender", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [134338] = {
        "Tidesage Enforcer", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [144941] = {
        "Akunda's Aspect", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [102239] = {
        "Lord Brinebeard", -- [1]
        "Azsuna", -- [2]
      },
      [139459] = {
        "Stonebound Soldier", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [131527] = {
        "Lord Waycrest", -- [1]
        "Waycrest Manor", -- [2]
      },
      [130404] = {
        "Vermin Trapper", -- [1]
        "Freehold", -- [2]
      },
      [146322] = {
        "Siegebreaker Roka", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [134216] = {
        "Shadeweaver Zarra", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [144796] = {
        "High Tinker Mekkatorque", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [132807] = {
        "Zian-Ti Quilen", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [61444] = {
        "Ming the Cunning", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [59461] = {
        "Hopling", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [69427] = {
        "Dark Animus", -- [1]
        "Throne of Thunder", -- [2]
      },
      [148618] = {
        "Archdruid Andrenius", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [16529] = {
        "Magical Horror", -- [1]
        "Karazhan", -- [2]
      },
      [130661] = {
        "Venture Co. Earthshaper", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [134599] = {
        "Imbued Stormcaller", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [140996] = {
        "Deepbore", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [59459] = {
        "Hopling", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [139461] = {
        "Stonebound Rockmaw", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [122089] = {
        "Slitherblade Oracle", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [131785] = {
        "Buzzing Drone", -- [1]
        "Tol Dagor", -- [2]
      },
      [146370] = {
        "Dark Iron Vanguard", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [31146] = {
        "Raider's Training Dummy", -- [1]
        "The Underrot", -- [2]
      },
      [134600] = {
        "Sandswept Marksman", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [69507] = {
        "Zeb'tula Beastcaller", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [149441] = {
        "Frozen Ballista", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [139462] = {
        "Stonebound Shale-Speaker", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [58856] = {
        "Haunting Sha", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [134058] = {
        "Galecaller Faye", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [146371] = {
        "Dark Iron Primalist", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69756] = {
        "Anima Orb", -- [1]
        "Throne of Thunder", -- [2]
      },
      [137989] = {
        "Embalming Fluid", -- [1]
        "Kings' Rest", -- [2]
      },
      [120651] = {
        "Explosives", -- [1]
        "Waycrest Manor", -- [2]
      },
      [142455] = {
        "Riverland Bronco", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [139463] = {
        "Stonebound Annihilator", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [63808] = {
        "Faintly Glowing Gem", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [146116] = {
        "Needleback Forager", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [126919] = {
        "Irontide Stormcaller", -- [1]
        "Freehold", -- [2]
      },
      [70245] = {
        "Training Dummy", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134602] = {
        "Shrouded Fang", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [138493] = {
        "Minion of Zul", -- [1]
        "Kings' Rest", -- [2]
      },
      [61445] = {
        "Haiyan the Unstoppable", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [139464] = {
        "Zian-Ti Howler", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [56906] = {
        "Saboteur Kip'tilak", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [17521] = {
        "The Big Bad Wolf", -- [1]
        "Karazhan", -- [2]
      },
      [61701] = {
        "Sik'thik Warrior", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [138481] = {
        "Chromitus", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [105203] = {
        "Felguard Invader", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [146409] = {
        "Lady Jaina Proudmoore", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [138369] = {
        "Footbomb Hooligan", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [141566] = {
        "Scrimshaw Gutter", -- [1]
        "Siege of Boralus", -- [2]
      },
      [129208] = {
        "Dread Captain Lockwood", -- [1]
        "Siege of Boralus", -- [2]
      },
      [144071] = {
        "Irontide Waveshaper", -- [1]
        "Siege of Boralus", -- [2]
      },
      [136139] = {
        "Mechanized Peacekeeper", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [135975] = {
        "Off-Duty Laborer", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [144839] = {
        "Whitetail Doe", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [124580] = {
        "Grotto Terrapin", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [129000] = {
        "Southsea Brawler", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [151058] = {
        "Bubbling Blood", -- [1]
        "Crucible of Storms", -- [2]
      },
      [56473] = {
        "Flying Snow", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [138500] = {
        "Twilight Scalesister", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138187] = {
        "Grotesque Horror", -- [1]
        "The Underrot", -- [2]
      },
      [129640] = {
        "Snarling Dockhound", -- [1]
        "Siege of Boralus", -- [2]
      },
      [144840] = {
        "Mottled Fawn", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [128969] = {
        "Ashvane Commander", -- [1]
        "Siege of Boralus", -- [2]
      },
      [130024] = {
        "Soggy Shiprat", -- [1]
        "Freehold", -- [2]
      },
      [102185] = {
        "First Mate DeGauza", -- [1]
        "Azsuna", -- [2]
      },
      [134283] = {
        "Anchorite Lanna", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [126205] = {
        "Profit-O-Matic", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [140038] = {
        "Abyssal Eel", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [138444] = {
        "General Vesparak", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [69382] = {
        "Malignant Ooze", -- [1]
        "Throne of Thunder", -- [2]
      },
      [153285] = {
        "Training Dummy", -- [1]
        "The Underrot", -- [2]
      },
      [148907] = {
        "Prismatic Image", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [139468] = {
        "Spineripper Ku-Kon", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [145865] = {
        "Gilnean Musketeer", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [146859] = {
        "Enslaved Rock Elemental", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [16530] = {
        "Mana Warp", -- [1]
        "Karazhan", -- [2]
      },
      [137517] = {
        "Ashvane Destroyer", -- [1]
        "Siege of Boralus", -- [2]
      },
      [94970] = {
        "Skyfire Gryphon Rider", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [131858] = {
        "Thornguard", -- [1]
        "Waycrest Manor", -- [2]
      },
      [130025] = {
        "Irontide Thug", -- [1]
        "Tol Dagor", -- [2]
      },
      [139673] = {
        "Many-Teeth", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [113053] = {
        "Mother Sepestra", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [127503] = {
        "Overseer Korgus", -- [1]
        "Tol Dagor", -- [2]
      },
      [148614] = {
        "Kul Tiran Cannoneer", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [73349] = {
        "Tormented Initiate", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [69383] = {
        "Quivering Blob", -- [1]
        "Throne of Thunder", -- [2]
      },
      [148622] = {
        "Echo of Kimbul", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [69639] = {
        "Humming Crystal", -- [1]
        "Throne of Thunder", -- [2]
      },
      [139007] = {
        "Feral Stalker", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [135699] = {
        "Ashvane Jailer", -- [1]
        "Tol Dagor", -- [2]
      },
      [140432] = {
        "Craghoof Leaper", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [146187] = {
        "Firesting Dominator", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [131818] = {
        "Marked Sister", -- [1]
        "Waycrest Manor", -- [2]
      },
      [56713] = {
        "Master Snowdrift", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [56912] = {
        "Krik'thik Engulfer", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [130026] = {
        "Bilge Rat Seaspeaker", -- [1]
        "Tol Dagor", -- [2]
      },
      [139471] = {
        "Bugan the Flesh-Crusher", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [144807] = {
        "Ravenous Stalker", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [140434] = {
        "Craghoof Rockhorn", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [132051] = {
        "Blood Tick", -- [1]
        "The Underrot", -- [2]
      },
      [122263] = {
        "Spineshell Snapjaw", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [19875] = {
        "Baroness Dorothea Millstipe", -- [1]
        "Karazhan", -- [2]
      },
      [132819] = {
        "Rustpelt Pup", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [102392] = {
        "Resonance Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [59464] = {
        "Hopper", -- [1]
        "Stormstout Brewery", -- [2]
      },
      [148619] = {
        "Echo of Akunda", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [67977] = {
        "Tortos", -- [1]
        "Throne of Thunder", -- [2]
      },
      [59598] = {
        "Lesser Sha", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [148613] = {
        "Commander Broadside", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [148940] = {
        "Kaldorei Chimaera", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [132820] = {
        "Mudsnout Piglet", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [130027] = {
        "Ashvane Marine", -- [1]
        "Tol Dagor", -- [2]
      },
      [136831] = {
        "Witherbranch Witch Doctor", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [146436] = {
        "Tempting Siren", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [58108] = {
        "Krik'thik Infiltrator", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [146833] = {
        "Necromancer Conjurer", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [136186] = {
        "Tidesage Spiritualist", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [134612] = {
        "Grasping Tentacles", -- [1]
        "Shrine of the Storm", -- [2]
      },
      [151056] = {
        "Varanq'ul the Mighty", -- [1]
        "Crucible of Storms", -- [2]
      },
      [58959] = {
        "Pip'tok", -- [1]
        "Crucible of Storms", -- [2]
      },
      [16545] = {
        "Ethereal Spellfilcher", -- [1]
        "Karazhan", -- [2]
      },
      [147965] = {
        "Volatile Azerite", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [135892] = {
        "Unleashed Inferno", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [70153] = {
        "Fungal Growth", -- [1]
        "Throne of Thunder", -- [2]
      },
      [61389] = {
        "Kargesh Highguard", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [148631] = {
        "Unexploded Ordnance", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [140827] = {
        "Giggling Thistlebrush", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [130028] = {
        "Ashvane Priest", -- [1]
        "Tol Dagor", -- [2]
      },
      [145616] = {
        "King Rastakhan", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [126190] = {
        "Zian-Ti Brutalizer", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [135893] = {
        "Burning Emberguard", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [129227] = {
        "Azerokk", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [144876] = {
        "Apetagonizer 3000", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [65414] = {
        "Ethereal Sha", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [119000] = {
        "Dreadbeard", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [61448] = {
        "Sik'thik Soldier", -- [1]
        "Siege of Niuzao Temple", -- [2]
      },
      [140447] = {
        "Demolishing Terror", -- [1]
        "Siege of Boralus", -- [2]
      },
      [138019] = {
        "Kul Tiran Vanguard", -- [1]
        "Siege of Boralus", -- [2]
      },
      [135894] = {
        "Fire Elemental", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [132056] = {
        "Venture Co. Skyscorcher", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [131669] = {
        "Jagged Hound", -- [1]
        "Waycrest Manor", -- [2]
      },
      [144850] = {
        "Darkscale Siren", -- [1]
        "Warfronts Darkshore - Horde", -- [2]
      },
      [122965] = {
        "Vol'kaal", -- [1]
        "Atal'Dazar", -- [2]
      },
      [140068] = {
        "Rustpelt Snarler", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [135167] = {
        "Spectral Berserker", -- [1]
        "Kings' Rest", -- [2]
      },
      [131545] = {
        "Lady Waycrest", -- [1]
        "Waycrest Manor", -- [2]
      },
      [135895] = {
        "Blazing Spark", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [69131] = {
        "Frost King Malakk", -- [1]
        "Throne of Thunder", -- [2]
      },
      [16171] = {
        "Coldmist Widow", -- [1]
        "Karazhan", -- [2]
      },
      [134616] = {
        "Krolusk Pup", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [69515] = {
        "Zandalari Barricade", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [102702] = {
        "Wrathguard Dreadblade", -- [1]
        "Broken Shore Scenario", -- [2]
      },
      [56395] = {
        "Shado-Pan Novice", -- [1]
        "Shado-Pan Monastery", -- [2]
      },
      [69899] = {
        "Farraki Sand Conjurer", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134214] = {
        "Riftblade Kelain", -- [1]
        "Jorundall (Islands 7)", -- [2]
      },
      [138281] = {
        "Faceless Corruptor", -- [1]
        "The Underrot", -- [2]
      },
      [134905] = {
        "Shadeweb Huntress", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [134617] = {
        "Krolusk Hatchling", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [58826] = {
        "Zao Sunseeker", -- [1]
        "Temple of the Jade Serpent", -- [2]
      },
      [69905] = {
        "Gurubashi Berserker", -- [1]
        "Throne of Thunder", -- [2]
      },
      [15691] = {
        "The Curator", -- [1]
        "Karazhan", -- [2]
      },
      [127019] = {
        "Training Dummy", -- [1]
        "Freehold", -- [2]
      },
      [131411] = {
        "Venomscale Monitor", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [73226] = {
        "Lesser Sha Puddle", -- [1]
        "Siege of Orgrimmar", -- [2]
      },
      [135474] = {
        "Thistle Acolyte", -- [1]
        "Waycrest Manor", -- [2]
      },
      [69388] = {
        "Zandalari Spear-Shaper", -- [1]
        "Throne of Thunder", -- [2]
      },
      [69516] = {
        "Zandalari Barricade", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [16544] = {
        "Ethereal Thief", -- [1]
        "Karazhan", -- [2]
      },
      [139480] = {
        "Stonebound Protector", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [132481] = {
        "Kul Tiran Vanguard", -- [1]
        "Siege of Boralus", -- [2]
      },
      [70557] = {
        "Zandalari Prophet", -- [1]
        "Throne of Thunder", -- [2]
      },
      [136250] = {
        "Hoodoo Hexer", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [55659] = {
        "Wild Imp", -- [1]
        "Waycrest Manor", -- [2]
      },
      [140760] = {
        "Earthliving Giant", -- [1]
        "Whispering Reef (Islands 10)", -- [2]
      },
      [138969] = {
        "Zian-Ti Spirit", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [139804] = {
        "Venture Inspector", -- [1]
        "The Dread Chain (Islands 4)", -- [2]
      },
      [70238] = {
        "Unblinking Eye", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134691] = {
        "Static-charged Dervish", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [133852] = {
        "Living Rot", -- [1]
        "The Underrot", -- [2]
      },
      [69133] = {
        "Unharnessed Power", -- [1]
        "Throne of Thunder", -- [2]
      },
      [134364] = {
        "Faithless Tender", -- [1]
        "Temple of Sethraliss", -- [2]
      },
      [16473] = {
        "Spectral Performer", -- [1]
        "Karazhan", -- [2]
      },
      [69517] = {
        "Zeb'tula Stoneshield", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [106319] = {
        "Ember Totem", -- [1]
        "Crucible of Storms", -- [2]
      },
      [69518] = {
        "Zeb'tula Spearanger", -- [1]
        "Mogu Island Progression Events", -- [2]
      },
      [16170] = {
        "Coldmist Stalker", -- [1]
        "Karazhan", -- [2]
      },
      [110846] = {
        "Cove Raven", -- [1]
        "The Maw of Nashal", -- [2]
      },
      [144963] = {
        "Kimbul's Aspect", -- [1]
        "Battle of Dazar'alor", -- [2]
      },
      [135254] = {
        "Irontide Raider", -- [1]
        "Tol Dagor", -- [2]
      },
      [138998] = {
        "Thick-Hide", -- [1]
        "Verdant Wilds (Islands 8)", -- [2]
      },
      [138971] = {
        "Zian-Ti Serpent", -- [1]
        "Havenswood (Islands 2)", -- [2]
      },
      [60447] = {
        "Krik'thik Saboteur", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [61216] = {
        "Glintrok Hexxer", -- [1]
        "Mogu'shan Palace", -- [2]
      },
      [140902] = {
        "Vog'rish, the Ascended", -- [1]
        "The MOTHERLODE!!", -- [2]
      },
      [56589] = {
        "Striker Ga'dok", -- [1]
        "Gate of the Setting Sun", -- [2]
      },
      [135002] = {
        "Demonic Tyrant", -- [1]
        "Crucible of Storms", -- [2]
      },
    },
    ["border_color"] = {
      nil, -- [1]
      nil, -- [2]
      nil, -- [3]
      1, -- [4]
    },
    ["health_selection_overlay_alpha"] = 0,
    ["aura_stack_shadow_color"] = {
      nil, -- [1]
      nil, -- [2]
      nil, -- [3]
      0, -- [4]
    },
    ["hook_data"] = {
      {
        ["Enabled"] = false,
        ["Revision"] = 55,
        ["HooksTemp"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
        },
        ["Author"] = "Kastfall-Azralon",
        ["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
        ["Hooks"] = {
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
        },
        ["Time"] = 1558096987,
        ["PlaterCore"] = 1,
        ["Name"] = "Color Automation [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["race"] = {
          },
        },
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
        ["LastHookEdited"] = "Constructor",
      }, -- [1]
      {
        ["Enabled"] = false,
        ["Revision"] = 45,
        ["HooksTemp"] = {
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
        ["Hooks"] = {
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
        },
        ["Time"] = 1549937733,
        ["PlaterCore"] = 1,
        ["Name"] = "Don't Have Aura [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["role"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
          },
        },
        ["Icon"] = 136207,
        ["LastHookEdited"] = "",
      }, -- [2]
      {
        ["Enabled"] = false,
        ["Revision"] = 180,
        ["HooksTemp"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
          ["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
        },
        ["Author"] = "Tecno-Azralon",
        ["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
        ["Hooks"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
          ["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
        },
        ["Time"] = 1558091544,
        ["PlaterCore"] = 1,
        ["Name"] = "Extra Border [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["race"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
          },
        },
        ["Icon"] = 133689,
        ["LastHookEdited"] = "Constructor",
      }, -- [3]
      {
        ["Enabled"] = true,
        ["Revision"] = 56,
        ["HooksTemp"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
        },
        ["Author"] = "Kastfall-Azralon",
        ["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
        ["Hooks"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
        },
        ["Time"] = 1558030400,
        ["PlaterCore"] = 1,
        ["Name"] = "Stormwall Encounter [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["role"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
            2280, -- [1]
            ["Enabled"] = true,
          },
          ["spec"] = {
          },
        },
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
        ["LastHookEdited"] = "Constructor",
      }, -- [4]
      {
        ["Enabled"] = false,
        ["Revision"] = 73,
        ["HooksTemp"] = {
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
        ["Hooks"] = {
          ["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
          ["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
        },
        ["Time"] = 1541606242,
        ["PlaterCore"] = 1,
        ["Name"] = "Hide Neutral Units [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["role"] = {
          },
        },
        ["Icon"] = 1990989,
        ["LastHookEdited"] = "",
      }, -- [5]
      {
        ["Enabled"] = true,
        ["Revision"] = 473,
        ["HooksTemp"] = {
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\n    if(envTable.HowlingWindsCast and envTable._SpellID == envTable.HowlingWindsSpellID) then\n        unitFrame.healthBar.unitName:SetPoint(\"BOTTOM\", unitFrame.healthBar, \"TOP\", 0 , 18)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
          ["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\n    if(envTable.HowlingWindsCast and envTable._SpellID == envTable.HowlingWindsSpellID) then\n        unitFrame.healthBar.unitName:SetPoint(\"TOP\", unitFrame.healthBar, \"BOTTOM\", 0 , -36)\n    end\nend\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --move Jaina's name out from under her castbar durring winds\n    envTable.HowlingWindsCast = false\n    envTable.HowlingWindsSpellID = 288199 --12058-- (debug)\n    envTable.HowlingWindsNameYOffset = 10\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
        },
        ["Author"] = "Kastfall-Azralon",
        ["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
        ["Hooks"] = {
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\n    if(envTable.HowlingWindsCast and envTable._SpellID == envTable.HowlingWindsSpellID) then\n        unitFrame.healthBar.unitName:SetPoint(\"BOTTOM\", unitFrame.healthBar, \"TOP\", 0 , 18)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --move Jaina's name out from under her castbar durring winds\n    envTable.HowlingWindsCast = false\n    envTable.HowlingWindsSpellID = 288199 --12058-- (debug)\n    envTable.HowlingWindsNameYOffset = 10\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
          ["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\n    if(envTable.HowlingWindsCast and envTable._SpellID == envTable.HowlingWindsSpellID) then\n        unitFrame.healthBar.unitName:SetPoint(\"TOP\", unitFrame.healthBar, \"BOTTOM\", 0 , -36)\n    end\nend\n\n\n\n\n",
        },
        ["Time"] = 1562433222,
        ["PlaterCore"] = 1,
        ["Name"] = "Jaina Encounter [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["race"] = {
          },
        },
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
        ["LastHookEdited"] = "Constructor",
      }, -- [6]
      {
        ["Enabled"] = false,
        ["Revision"] = 87,
        ["HooksTemp"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
        },
        ["Author"] = "Ahwa-Azralon",
        ["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
        ["Hooks"] = {
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
        },
        ["Time"] = 1558091741,
        ["PlaterCore"] = 1,
        ["Name"] = "Execute Range [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["role"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
          },
        },
        ["Icon"] = 135358,
        ["LastHookEdited"] = "Constructor",
      }, -- [7]
      {
        ["Enabled"] = false,
        ["Revision"] = 223,
        ["HooksTemp"] = {
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
        },
        ["Author"] = "Kastfall-Azralon",
        ["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
        ["Hooks"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
        },
        ["Time"] = 1553102867,
        ["PlaterCore"] = 1,
        ["Name"] = "Attacking Specific Unit [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["race"] = {
          },
        },
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
        ["LastHookEdited"] = "Constructor",
      }, -- [8]
      {
        ["Enabled"] = true,
        ["Revision"] = 176,
        ["HooksTemp"] = {
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.5 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\n    \n    \n    function updateNameplateAlpha(unitFrame)\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            unitFrame.castBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n                unitFrame.castBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n                unitFrame.castBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n",
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
        ["Hooks"] = {
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    updateNameplateAlpha(unitFrame)\nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.5 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\n    \n    \n    function updateNameplateAlpha(unitFrame)\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            unitFrame.castBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n                unitFrame.castBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n                unitFrame.castBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n",
        },
        ["Time"] = 1558097257,
        ["PlaterCore"] = 1,
        ["Name"] = "No Target Alpha [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["race"] = {
          },
        },
        ["Icon"] = 132177,
        ["LastHookEdited"] = "Constructor",
      }, -- [9]
      {
        ["Enabled"] = false,
        ["Revision"] = 88,
        ["HooksTemp"] = {
        },
        ["Author"] = "Kastfall-Azralon",
        ["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
        ["Hooks"] = {
          ["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
        },
        ["Time"] = 1548077443,
        ["PlaterCore"] = 1,
        ["Name"] = "Reorder Nameplate [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["role"] = {
          },
        },
        ["Icon"] = 574574,
        ["LastHookEdited"] = "",
      }, -- [10]
      {
        ["Enabled"] = true,
        ["Revision"] = 38,
        ["HooksTemp"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
        ["Hooks"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
        },
        ["Time"] = 1558030389,
        ["PlaterCore"] = 1,
        ["Name"] = "M+ Bwonsamdi Reaping",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
            ["Enabled"] = true,
            ["party"] = true,
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
            [117] = true,
            ["Enabled"] = true,
          },
          ["encounter_ids"] = {
          },
          ["role"] = {
          },
        },
        ["Icon"] = 2446016,
        ["LastHookEdited"] = "Constructor",
      }, -- [11]
      {
        ["Enabled"] = false,
        ["Revision"] = 190,
        ["HooksTemp"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
          ["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
          ["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
        ["Hooks"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
          ["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
          ["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
        },
        ["Time"] = 1558030424,
        ["PlaterCore"] = 1,
        ["Name"] = "Combo Points [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
            ["Enabled"] = true,
            ["DRUID"] = true,
            ["ROGUE"] = true,
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["race"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
            [103] = true,
            ["Enabled"] = true,
          },
        },
        ["Icon"] = 135426,
        ["LastHookEdited"] = "Constructor",
      }, -- [12]
      {
        ["Enabled"] = false,
        ["Revision"] = 182,
        ["HooksTemp"] = {
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Show how many raid members are targeting the unit",
        ["Hooks"] = {
          ["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
          ["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
          ["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
          ["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
        },
        ["Time"] = 1548278227,
        ["PlaterCore"] = 1,
        ["Name"] = "Players Targeting a Target [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["race"] = {
          },
        },
        ["Icon"] = 1966587,
        ["LastHookEdited"] = "",
      }, -- [13]
      {
        ["Enabled"] = false,
        ["Revision"] = 101,
        ["HooksTemp"] = {
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)--rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Changes the target color to the color set in the constructor script.",
        ["Hooks"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
          ["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)--rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
        },
        ["Time"] = 1558097070,
        ["PlaterCore"] = 1,
        ["Name"] = "Current Target Color [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["role"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
          },
        },
        ["Icon"] = 878211,
        ["LastHookEdited"] = "Constructor",
      }, -- [14]
      {
        ["Enabled"] = false,
        ["Revision"] = 241,
        ["HooksTemp"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
        },
        ["Author"] = "Ditador-Azralon",
        ["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
        ["Hooks"] = {
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
        },
        ["Time"] = 1558096838,
        ["PlaterCore"] = 1,
        ["Name"] = "Aura Reorder [Plater]",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["role"] = {
          },
        },
        ["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
        ["LastHookEdited"] = "Constructor",
      }, -- [15]
      {
        ["Enabled"] = true,
        ["Revision"] = 161,
        ["HooksTemp"] = {
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
          ["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
          ["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = .5\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        --castBar:SetPoint(unitFrame.healthBar, \"TOP\", 0, -10)\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \n    --create thee border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end\n    \nend\n\n\n\n\n\n\n",
        },
        ["Author"] = "Izimode-Azralon",
        ["Desc"] = "Adds a pixels perfect border around the cast bar.",
        ["Hooks"] = {
          ["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
          ["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder:Hide()\n    end    \nend",
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateBorder (unitFrame)\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    \n    --hide the icon of the spell, may require /reload after changing\n    envTable.HideIcon = false\n    \n    --border settings\n    envTable.BorderThickness = .5\n    envTable.BorderColor = \"black\"\n    \n    --private\n    --update the border\n    function envTable.UpdateBorder (unitFrame)\n        local castBar = unitFrame.castBar\n        --castBar:SetPoint(unitFrame.healthBar, \"TOP\", 0, -10)\n        \n        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\n        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\n        \n        local size = envTable.BorderThickness\n        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\n        castBar.CastBarBorder:UpdateSizes()        \n        \n        if (envTable.HideIcon) then\n            castBar.Icon:Hide()\n        end\n        \n        castBar.CastBarBorder:Show()\n    end\n    \n    --create thee border\n    if (not unitFrame.castBar.CastBarBorder) then\n        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\n    end\n    \nend\n\n\n\n\n\n\n",
        },
        ["Time"] = 1558382516,
        ["PlaterCore"] = 1,
        ["LastHookEdited"] = "Constructor",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["race"] = {
          },
        },
        ["Icon"] = 133004,
        ["Name"] = "Cast Bar Border",
      }, -- [16]
      {
        ["Enabled"] = false,
        ["Revision"] = 106,
        ["HooksTemp"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.BuffFrame:SetPoint(\"CENTER\",buffNoComat,0);\n    unitFrame.BuffFrame2:SetPoint(\"CENTER\",buff2NoComat,0);\nend",
          ["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.BuffFrame:SetPoint(\"CENTER\",buffNoComat,0);\n    unitFrame.BuffFrame2:SetPoint(\"CENTER\",buff2NoComat,0);\nend\n\n\n",
          ["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.BuffFrame:SetPoint(\"CENTER\",buffComat,0);\n    unitFrame.BuffFrame2:SetPoint(\"CENTER\",buff2Comat,0);\nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --X offsets for aura frames\n    buffNoCombat = 0;\n    buffCombat = 0;\n    \n    buff2NoCombat = 0;\n    buff2Combat = 0;\nend",
        },
        ["Author"] = "Aldarana-Kazzak",
        ["Desc"] = "",
        ["Hooks"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.BuffFrame:SetPoint(\"CENTER\",buffNoComat,0);\n    unitFrame.BuffFrame2:SetPoint(\"CENTER\",buff2NoComat,0);\nend",
          ["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.BuffFrame:SetPoint(\"CENTER\",buffNoComat,0);\n    unitFrame.BuffFrame2:SetPoint(\"CENTER\",buff2NoComat,0);\nend\n\n\n",
          ["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    unitFrame.BuffFrame:SetPoint(\"CENTER\",buffComat,0);\n    unitFrame.BuffFrame2:SetPoint(\"CENTER\",buff2Comat,0);\nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --X offsets for aura frames\n    buffNoCombat = 0;\n    buffCombat = 0;\n    \n    buff2NoCombat = 0;\n    buff2Combat = 0;\nend",
        },
        ["Name"] = "Aura Positioning",
        ["PlaterCore"] = 1,
        ["Time"] = 1558030403,
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["role"] = {
          },
        },
        ["LastHookEdited"] = "Constructor",
      }, -- [17]
      {
        ["Enabled"] = true,
        ["Revision"] = 92,
        ["HooksTemp"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, 11)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
        },
        ["Author"] = "?????-Illidan",
        ["Desc"] = "Format Buff Special icons like the regular aura icons.",
        ["Hooks"] = {
          ["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --    if false then return end\n    \n    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n        \n        unitFrame.ExtraIconFrame.options.show_text = true\n        \n        local profile = Plater.db.profile\n        \n        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\n        Plater:SetFontSize (iconFrame.CountdownText, 11)\n        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\n        \n        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\n        \n        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\n        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\n        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \n        \n    end\n    \nend",
        },
        ["Time"] = 1558097255,
        ["PlaterCore"] = 1,
        ["Name"] = "Buff Special Mod",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["role"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
          },
        },
        ["Icon"] = 136139,
        ["LastHookEdited"] = "Nameplate Updated",
      }, -- [18]
      {
        ["Enabled"] = true,
        ["Revision"] = 154,
        ["HooksTemp"] = {
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"right\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset-.5)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, -1)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
        },
        ["Author"] = "Ditador-Azralon",
        ["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
        ["Hooks"] = {
          ["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
          ["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"right\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = false\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset-.5)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, -1)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
        },
        ["Time"] = 1558382341,
        ["PlaterCore"] = 1,
        ["LastHookEdited"] = "Constructor",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["role"] = {
          },
          ["pvptalent"] = {
          },
          ["race"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["spec"] = {
          },
        },
        ["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
        ["Name"] = "Cast Icon Anchor",
      }, -- [19]
      {
        ["Enabled"] = true,
        ["Revision"] = 29,
        ["HooksTemp"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    levelTextColor(unitFrame)\nend",
          ["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    levelTextColor(unitFrame)\nend\n\n\n",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    envTable.levelColor = {255,245,105} --rgb\n    \n    function levelTextColor(unitFrame)\n        local r,g,b = unpack(envTable.levelColor)\n        unitFrame.healthBar.actorLevel:SetTextColor(r/255, g/255, b/255)\n    end\nend",
        },
        ["Author"] = "Aldarana-Kazzak",
        ["Desc"] = "Because for some reason there's no setting for this.",
        ["Hooks"] = {
          ["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    levelTextColor(unitFrame)\nend",
          ["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    envTable.levelColor = {255,245,105} --rgb\n    \n    function levelTextColor(unitFrame)\n        local r,g,b = unpack(envTable.levelColor)\n        unitFrame.healthBar.actorLevel:SetTextColor(r/255, g/255, b/255)\n    end\nend",
        },
        ["Name"] = "Level Text Color",
        ["PlaterCore"] = 1,
        ["Time"] = 1558097572,
        ["LastHookEdited"] = "Constructor",
        ["LoadConditions"] = {
          ["talent"] = {
          },
          ["group"] = {
          },
          ["class"] = {
          },
          ["map_ids"] = {
          },
          ["race"] = {
          },
          ["pvptalent"] = {
          },
          ["spec"] = {
          },
          ["affix"] = {
          },
          ["encounter_ids"] = {
          },
          ["role"] = {
          },
        },
      }, -- [20]
    },
    ["aura_stack_size"] = 9,
    ["disable_omnicc_on_auras"] = true,
    ["aura_width"] = 20,
    ["health_statusbar_bgcolor"] = {
      0.0431372549019608, -- [1]
      0.0431372549019608, -- [2]
      0.0431372549019608, -- [3]
    },
    ["castbar_target_shadow_color"] = {
      nil, -- [1]
      nil, -- [2]
      nil, -- [3]
      0, -- [4]
    },
    ["range_check_enabled"] = false,
    ["script_auto_imported"] = {
      ["Cast - Small Alert"] = 4,
      ["Unit - Important"] = 5,
      ["Aura - Buff Alert"] = 4,
      ["Aura - Invalidate Unit"] = 1,
      ["Explosion Affix M+"] = 3,
      ["Cast - Very Important"] = 2,
      ["Aura Border Color"] = 1,
      ["Color Change"] = 1,
      ["Unit Power"] = 1,
      ["Cast - Frontal Cone"] = 2,
      ["Fixate"] = 3,
      ["Aura - Blink Time Left"] = 1,
      ["Aura - Debuff Alert"] = 3,
      ["Cast - Big Alert"] = 5,
      ["Fixate On You"] = 2,
    },
    ["target_highlight_color"] = {
      1, -- [1]
      1, -- [2]
    },
    ["extra_icon_anchor"] = {
      ["y"] = 0,
      ["x"] = -10,
    },
    ["range_check_alpha"] = 0.799999952316284,
    ["extra_icon_auras"] = {
      277242, -- [1]
    },
    ["aura2_grow_direction"] = 3,
    ["aura_alpha"] = 1,
    ["cast_statusbar_spark_texture"] = "Interface\\AddOns\\Plater\\images\\spark8",
    ["auto_toggle_friendly"] = {
      ["cities"] = false,
      ["world"] = false,
    },
    ["aura_cooldown_edge_texture"] = "Interface\\GLUES\\loadingOld",
    ["cast_statusbar_bgtexture"] = "REEEE",
    ["aura_x_offset"] = 43.7200012207031,
    ["first_run3"] = true,
    ["cast_statusbar_bgcolor"] = {
      nil, -- [1]
      nil, -- [2]
      nil, -- [3]
      1, -- [4]
    },
    ["debuff_show_cc_border"] = {
      0, -- [1]
      0, -- [2]
      0, -- [3]
    },
    ["aura_stack_color"] = {
      [3] = 0.36078431372549,
    },
    ["aura_consolidate"] = true,
    ["health_statusbar_texture"] = "REEEE",
    ["health_statusbar_bgtexture"] = "REEEE",
    ["target_highlight"] = false,
    ["indicator_raidmark_anchor"] = {
      ["x"] = 11,
    },
    ["tank"] = {
      ["colors"] = {
        ["anothertank"] = {
          0.294117647058824, -- [1]
          0.686274509803922, -- [2]
          0.298039215686275, -- [3]
          1, -- [4]
        },
        ["aggro"] = {
          0.294117647058824, -- [1]
          0.686274509803922, -- [2]
          0.298039215686275, -- [3]
          1, -- [4]
        },
        ["noaggro"] = {
          0.780392156862745, -- [1]
          0.250980392156863, -- [2]
          0.250980392156863, -- [3]
          1, -- [4]
        },
        ["nocombat"] = {
          0.780392156862745, -- [1]
          0.250980392156863, -- [2]
          0.250980392156863, -- [3]
          1, -- [4]
        },
        ["pulling"] = {
          nil, -- [1]
          0.458823529411765, -- [2]
          0.101960784313725, -- [3]
          1, -- [4]
        },
      },
    },
    ["aura_tracker"] = {
      ["buff_tracked"] = {
        [209859] = true,
      },
    },
    ["hook_auto_imported"] = {
      ["Targetting Alpha"] = 3,
      ["Dont Have Aura"] = 1,
      ["Players Targetting Amount"] = 4,
      ["Color Automation"] = 1,
      ["Bwonsamdi Reaping"] = 1,
      ["Jaina Encounter"] = 6,
      ["Blockade Encounter"] = 1,
      ["Execute Range"] = 1,
      ["Attacking Specific Unit"] = 1,
      ["Extra Border"] = 2,
      ["Combo Points"] = 3,
      ["Hide Neutral Units"] = 1,
      ["Target Color"] = 3,
      ["Aura Reorder"] = 1,
      ["Reorder Nameplate"] = 3,
    },
    ["cast_statusbar_color"] = {
      nil, -- [1]
      0.701960784313726, -- [2]
      nil, -- [3]
      1, -- [4]
    },
    ["update_throttle"] = 0.247594997286797,
    ["focus_indicator_enabled"] = false,
    ["captured_spells"] = {
      [164815] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [259489] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [8222] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yungpottuh",
        ["npcID"] = 0,
      },
      [1543] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [115192] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [214968] = {
        ["source"] = "Deatthbringe-Sylvanas",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [268607] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rashaa-Trollbane",
        ["npcID"] = 0,
      },
      [193475] = {
        ["source"] = "Sábër",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [259491] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [29166] = {
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2143,
      },
      [255909] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [281403] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Honoikazuchi-Ravencrest",
        ["npcID"] = 0,
      },
      [270657] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kittytronic-Sylvanas",
        ["npcID"] = 0,
      },
      [281404] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bennyhoe-Ragnaros",
        ["npcID"] = 0,
      },
      [298292] = {
        ["source"] = "Iqp-Sylvanas",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [299316] = {
        ["source"] = "Velharia-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [85256] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [285500] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [153561] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [123254] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [270661] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [259750] = {
        ["source"] = "Stormbound Conqueror",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136555,
      },
      [288573] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [115834] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [279362] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Scaleclaw Broodmother",
        ["npcID"] = 127776,
      },
      [274245] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frothing Tideblood",
        ["npcID"] = 130116,
      },
      [299321] = {
        ["source"] = "Evölet",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [408] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [261798] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bilefang Skitterer",
        ["npcID"] = 132318,
      },
      [116858] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [6552] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [200389] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [20243] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [162264] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nihilum",
        ["npcID"] = 0,
      },
      [221883] = {
        ["source"] = "Karmaka-Deathwing",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [259241] = {
        ["source"] = "Torcalin Cleric",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 122883,
      },
      [259753] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [190411] = {
        ["source"] = "Comp",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [421] = {
        ["source"] = "Maldasham",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [57934] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [221885] = {
        ["source"] = "Warsovac-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [158940] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Coastal Trapfang",
        ["npcID"] = 140604,
      },
      [118779] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [3409] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [205766] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [203975] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Quepsi-Draenor",
        ["npcID"] = 0,
      },
      [273232] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [298820] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kil'karrok Seer",
        ["npcID"] = 152411,
      },
      [270674] = {
        ["source"] = "Kesanliali-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [1719] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [221887] = {
        ["source"] = "Tamelya-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280398] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Flinsx-Outland",
        ["npcID"] = 0,
      },
      [1725] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [288075] = {
        ["source"] = "Brutalclaw",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [194509] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [258222] = {
        ["source"] = "Sandstinger Collector",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 137053,
      },
      [302917] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [278865] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [235450] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [188625] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Invading Grunt",
        ["npcID"] = 135860,
      },
      [23922] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [304966] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [273238] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kaltrae-Silvermoon",
        ["npcID"] = 0,
      },
      [259759] = {
        ["source"] = "Hand of Fate",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 131613,
      },
      [245686] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nihilum",
        ["npcID"] = 0,
      },
      [50259] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [265051] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280404] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [278869] = {
        ["source"] = "Greekpsycho",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [232893] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Svikari-Draenor",
        ["npcID"] = 0,
      },
      [267611] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [290640] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mørfer-Stormscale",
        ["npcID"] = 0,
      },
      [271194] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [116095] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [36890] = {
        ["source"] = "Zaxier-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [305483] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Krawg-Stormscale",
        ["npcID"] = 0,
      },
      [30831] = {
        ["source"] = "Unknown",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 129500,
      },
      [278873] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Swolee-Ragnaros",
        ["npcID"] = 0,
      },
      [293714] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Svikari-Draenor",
        ["npcID"] = 0,
      },
      [280409] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [305485] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [5217] = {
        ["source"] = "Crów",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [5225] = {
        ["source"] = "Bigjovs-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [303439] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mind-Shackled Kelfin",
        ["npcID"] = 153963,
      },
      [198097] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [271711] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [1833] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["encounterID"] = 2139,
      },
      [280412] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [298836] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wessél",
        ["npcID"] = 0,
      },
      [278878] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krisztal-Ragnaros",
        ["npcID"] = 0,
      },
      [7384] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ryathan",
        ["npcID"] = 0,
      },
      [279902] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [298837] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Drudara-Aggramar",
        ["npcID"] = 0,
      },
      [61391] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [302932] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [207311] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [213708] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [298839] = {
        ["source"] = "Brutalclaw",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [185562] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sárá",
        ["npcID"] = 0,
      },
      [233411] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krymming-Stormscale",
        ["npcID"] = 0,
      },
      [201427] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [298841] = {
        ["source"] = "Nirvashka-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [204242] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Nkechi",
        ["npcID"] = 0,
      },
      [102793] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [266091] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luàna-Outland",
        ["npcID"] = 0,
      },
      [214222] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Strrex-Stormscale",
        ["npcID"] = 0,
      },
      [24275] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lightbringér-TheMaelstrom",
        ["npcID"] = 0,
      },
      [251836] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [305497] = {
        ["source"] = "Chery-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [185565] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Torpizon-Stormscale",
        ["npcID"] = 0,
      },
      [259769] = {
        ["source"] = "Hand of Fate",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131613,
      },
      [251837] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [207059] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harpoon Launcher",
        ["npcID"] = 145299,
      },
      [127230] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Crowen-Sylvanas",
        ["npcID"] = 0,
      },
      [61648] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Angelycus-TheMaelstrom",
        ["npcID"] = 0,
      },
      [278377] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [5697] = {
        ["source"] = "Nulo-Aggra(Português)",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [288613] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [101643] = {
        ["source"] = "Opprèssive-Nemesis",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [302943] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Zanj'ir Trapper",
        ["npcID"] = 152884,
      },
      [263027] = {
        ["source"] = "Zanchuli Sentinel",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 124730,
      },
      [1953] = {
        ["source"] = "Magesag-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [251839] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [207317] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Thaunnan-TheMaelstrom",
        ["npcID"] = 0,
      },
      [52437] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [295269] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sápnfáp-TwistingNether",
        ["npcID"] = 0,
      },
      [273264] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [265077] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [195292] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [274289] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Выжегалка-Гордунни",
        ["npcID"] = 0,
      },
      [208086] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [192222] = {
        ["source"] = "Nurke-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [82326] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [278897] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rainsoil-TwistingNether",
        ["npcID"] = 0,
      },
      [267639] = {
        ["npcID"] = 134993,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mchimba the Embalmer",
        ["encounterID"] = 2142,
      },
      [280433] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Neerya-Blackhand",
        ["npcID"] = 0,
      },
      [207064] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harpoon Launcher",
        ["npcID"] = 145299,
      },
      [212182] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [210391] = {
        ["source"] = "Primoaid",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [265594] = {
        ["source"] = "Umbra'rix",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 134717,
      },
      [302952] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [277365] = {
        ["source"] = "Kao-Tien Subjugator",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136551,
      },
      [298347] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tidespring Surger",
        ["npcID"] = 153998,
      },
      [272248] = {
        ["source"] = "Unstable Soul",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 138380,
      },
      [277366] = {
        ["source"] = "Ku'shif the Cruel",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 137773,
      },
      [30449] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["encounterID"] = 2140,
      },
      [295278] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ashiyo",
        ["npcID"] = 0,
      },
      [272250] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ghost of the Deep",
        ["npcID"] = 138288,
      },
      [198111] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Skonheden-Dragonblight",
        ["npcID"] = 0,
      },
      [192226] = {
        ["source"] = "Liquid Magma Totem",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 97369,
      },
      [286581] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [6201] = {
        ["source"] = "Helldest-GrimBatol",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [147193] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [296817] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rusty Mechanocrawler",
        ["npcID"] = 152892,
      },
      [2094] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [2098] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [201695] = {
        ["source"] = "Wergum-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [528] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [202719] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Syanide-TheMaelstrom",
        ["npcID"] = 0,
      },
      [278908] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [256453] = {
        ["source"] = "Winkli-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [12654] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [270210] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Commander Naj'ezen",
        ["npcID"] = 148605,
      },
      [298357] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [286587] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Staggore-Deathwing",
        ["npcID"] = 0,
      },
      [278911] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [273794] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Angelycus-TheMaelstrom",
        ["npcID"] = 0,
      },
      [53271] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [256455] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rektlmao",
        ["npcID"] = 0,
      },
      [272260] = {
        ["source"] = "Chery-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [257223] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wildwood Slaverer",
        ["npcID"] = 137362,
      },
      [300407] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Vyz'olgo the Mind-Taker",
        ["npcID"] = 153313,
      },
      [300919] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [205025] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [256456] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cyreks-Stormscale",
        ["npcID"] = 0,
      },
      [235219] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["encounterID"] = 2139,
      },
      [102417] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Shiftbob-Stormscale",
        ["npcID"] = 0,
      },
      [278917] = {
        ["source"] = "Uniòó-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [145152] = {
        ["source"] = "Crów",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [265613] = {
        ["source"] = "Umbra'rix",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 134717,
      },
      [200166] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [212704] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [118922] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [256459] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nevëksla",
        ["npcID"] = 0,
      },
      [11327] = {
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [171253] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grunkh-Ragnaros",
        ["npcID"] = 0,
      },
      [585] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [586] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [256460] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Noyouheal",
        ["npcID"] = 0,
      },
      [589] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [236502] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [204262] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zeia-Boulderfist",
        ["npcID"] = 0,
      },
      [300417] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Vyz'olgo the Mind-Taker",
        ["npcID"] = 153313,
      },
      [16953] = {
        ["source"] = "Møøsé-Stormscale",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [596] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ninyeve-Stormscale",
        ["npcID"] = 0,
      },
      [194284] = {
        ["source"] = "Dark Iron Grenadier",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 144455,
      },
      [190446] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [111759] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blacklodge",
        ["npcID"] = 0,
      },
      [50842] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [605] = {
        ["source"] = "Prcdoom",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [276880] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Stone Golem",
        ["npcID"] = 137708,
      },
      [277904] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Radheroman-Ragnaros",
        ["npcID"] = 0,
      },
      [34914] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [272276] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [256464] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Faithless Trapper",
        ["npcID"] = 129874,
      },
      [272790] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [33763] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [270232] = {
        ["source"] = "Serenada-Frostmane",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [274838] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Meowpower-Silvermoon",
        ["npcID"] = 0,
      },
      [279956] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Sougoubank-Hyjal",
        ["npcID"] = 0,
      },
      [210152] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [265116] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["encounterID"] = 2142,
      },
      [30451] = {
        ["source"] = "Nitradamus",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [231390] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Crowen-Sylvanas",
        ["npcID"] = 0,
      },
      [143625] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Killme-Balnazzar",
        ["npcID"] = 0,
      },
      [288146] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [232670] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [642] = {
        ["source"] = "Naxs-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [163073] = {
        ["source"] = "Warency-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [269214] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [287638] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [25046] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [303504] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mind-Shackled Kelfin",
        ["npcID"] = 153963,
      },
      [217832] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Klitzemon-Ravencrest",
        ["npcID"] = 0,
      },
      [131347] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Pranks-Chromaggus",
        ["npcID"] = 0,
      },
      [213995] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Snäre-Ragnaros",
        ["npcID"] = 0,
      },
      [259285] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [301972] = {
        ["source"] = "Vezna-Draenor",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [267685] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [19577] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [53595] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [259798] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Flowing Honey",
        ["npcID"] = 131663,
      },
      [190456] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [79140] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [288158] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [296858] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rusty Mechanocrawler",
        ["npcID"] = 152892,
      },
      [87840] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Konminator-Silvermoon",
        ["npcID"] = 0,
      },
      [135700] = {
        ["source"] = "Crów",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [289184] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mluxarz",
        ["npcID"] = 0,
      },
      [80676] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Horde Scout",
        ["npcID"] = 139570,
      },
      [703] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [61336] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [20473] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [260057] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Priest of Gonk",
        ["npcID"] = 131809,
      },
      [272811] = {
        ["source"] = "Zorgarth-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [271788] = {
        ["source"] = "Leonithiel-Outland",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [193530] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [281000] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [273836] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Jhiun-Ragnaros",
        ["npcID"] = 0,
      },
      [247776] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [184575] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [295842] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Diziria-Stormscale",
        ["npcID"] = 0,
      },
      [16827] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "YEET",
        ["npcID"] = 50051,
      },
      [269232] = {
        ["type"] = "BUFF",
        ["source"] = "Reban",
        ["npcID"] = 136984,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2143,
      },
      [208628] = {
        ["source"] = "Drelion",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [247777] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [274351] = {
        ["source"] = "Old K'zlotec",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 135916,
      },
      [292263] = {
        ["source"] = "Armored Claw",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 150644,
      },
      [202744] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Thaunnan-TheMaelstrom",
        ["npcID"] = 0,
      },
      [272817] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sarsiee-Silvermoon",
        ["npcID"] = 0,
      },
      [281517] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zatharoth-Magtheridon",
        ["npcID"] = 0,
      },
      [195580] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Drowned Harpooner",
        ["npcID"] = 130088,
      },
      [185857] = {
        ["source"] = "7th Legion Rifleman",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 139495,
      },
      [273842] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Thorli-Ravencrest",
        ["npcID"] = 0,
      },
      [275378] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [267702] = {
        ["npcID"] = 134993,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mchimba the Embalmer",
        ["encounterID"] = 2142,
      },
      [297384] = {
        ["source"] = "Sindodh-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [57755] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["encounterID"] = 2139,
      },
      [260062] = {
        ["source"] = "Subjugator Zheng",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 128472,
      },
      [299432] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Malfunctioning Scraphound",
        ["npcID"] = 151301,
      },
      [269239] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [187650] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [139546] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [274360] = {
        ["source"] = "Jumbo Sandsnapper",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 129283,
      },
      [260320] = {
        ["source"] = "Wild Direhorn",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131626,
      },
      [195072] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Swolee-Ragnaros",
        ["npcID"] = 0,
      },
      [277943] = {
        ["source"] = "Maldasham",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [768] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [49184] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [256739] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gravefish",
        ["npcID"] = 0,
      },
      [774] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [257251] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Soulgorged Gravestalker",
        ["npcID"] = 126263,
      },
      [198144] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Spotlolz-Draenor",
        ["npcID"] = 0,
      },
      [288693] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tormented Soul",
        ["npcID"] = 148893,
      },
      [260322] = {
        ["source"] = "Direhorn Bull",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131628,
      },
      [781] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [281240] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Swolee-Ragnaros",
        ["npcID"] = 0,
      },
      [783] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [155158] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [298418] = {
        ["source"] = "Iqp-Sylvanas",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [256716] = {
        ["source"] = "Unknown",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 129434,
      },
      [204019] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Eulusqt",
        ["npcID"] = 0,
      },
      [133994] = {
        ["source"] = "Aldarana",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [23161] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Plock-Ghostlands",
        ["npcID"] = 0,
      },
      [273843] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Thorli-Ravencrest",
        ["npcID"] = 0,
      },
      [113656] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [196099] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Réníc-TwistingNether",
        ["npcID"] = 0,
      },
      [266083] = {
        ["source"] = "Krolusk Sandhunter",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135582,
      },
      [262115] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Royjoness-Ragnaros",
        ["npcID"] = 0,
      },
      [273377] = {
        ["source"] = "Leonithiel-Outland",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [85288] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [259232] = {
        ["source"] = "Vilescale Warrior",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 123588,
      },
      [150485] = {
        ["source"] = "Umbra'rix",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 134717,
      },
      [257284] = {
        ["source"] = "Leonithiel-Outland",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [8690] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [279943] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Reyzo",
        ["npcID"] = 0,
      },
      [260069] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Priest of Gonk",
        ["npcID"] = 131809,
      },
      [21562] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nepheria",
        ["npcID"] = 0,
      },
      [302912] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Zanj'ir Trapper",
        ["npcID"] = 152884,
      },
      [115098] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [292653] = {
        ["source"] = "Nirvashka-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275765] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270670] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [194310] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [260070] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Pa'kura Priest",
        ["npcID"] = 131834,
      },
      [304611] = {
        ["source"] = "Gìngèr",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [190984] = {
        ["source"] = "Thorús-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [205644] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Treant",
        ["npcID"] = 103822,
      },
      [274373] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [255209] = {
        ["source"] = "Seaspray Hatchling",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 128647,
      },
      [100130] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [108446] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unknown",
        ["npcID"] = 17252,
      },
      [49821] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Pagane-Ravencrest",
        ["npcID"] = 0,
      },
      [116014] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [1706] = {
        ["source"] = "Voidel-TheMaelstrom",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [15487] = {
        ["source"] = "Prcdoom",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [193786] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luss-Nemesis",
        ["npcID"] = 0,
      },
      [267618] = {
        ["npcID"] = 134993,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mchimba the Embalmer",
        ["encounterID"] = 2142,
      },
      [49376] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["encounterID"] = 2140,
      },
      [292287] = {
        ["source"] = "Aldarana",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [260072] = {
        ["source"] = "Pa'kura Priest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 131834,
      },
      [164812] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [83243] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Nélia-Ravencrest",
        ["npcID"] = 0,
      },
      [288091] = {
        ["source"] = "Quando-Nemesis",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [191034] = {
        ["source"] = "Aminä-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [228600] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [299302] = {
        ["source"] = "Narendy-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [277960] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [270284] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Purification Construct",
        ["npcID"] = 134739,
      },
      [304931] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Fallen Priestess",
        ["npcID"] = 153947,
      },
      [15407] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [298431] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [266191] = {
        ["npcID"] = 0,
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2140,
      },
      [53600] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [202425] = {
        ["source"] = "Boombastiz-Talnivarr",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [290244] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [275915] = {
        ["source"] = "Axerontas-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [22842] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [225787] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [269882] = {
        ["source"] = "7th Legion Marine",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 139317,
      },
      [298945] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kil'karrok Hammerclaw",
        ["npcID"] = 152413,
      },
      [299457] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Clockwork Giant",
        ["npcID"] = 153991,
      },
      [212799] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [290792] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [294852] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Voice in the Deeps",
        ["npcID"] = 151719,
      },
      [243955] = {
        ["source"] = "Unbearabull-GrimBatol",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [106785] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [34026] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [270289] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [278989] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [15727] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Unknown",
        ["npcID"] = 137088,
      },
      [265684] = {
        ["source"] = "Atal'zul Zealot",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135921,
      },
      [267060] = {
        ["npcID"] = 135472,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Zanazal the Wise",
        ["encounterID"] = 2140,
      },
      [160029] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [686] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Морридин-Ревущийфьорд",
        ["npcID"] = 0,
      },
      [104318] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wild Imp",
        ["npcID"] = 55659,
      },
      [256499] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cursed Game-hawk",
        ["npcID"] = 122961,
      },
      [27576] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [279503] = {
        ["source"] = "Nirvashka-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [285482] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270292] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [295368] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [21169] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [277969] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [274387] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [871] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [285646] = {
        ["source"] = "Tjara-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [264774] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [176151] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ykiz-TwistingNether",
        ["npcID"] = 0,
      },
      [245131] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Commander Naj'ezen",
        ["npcID"] = 148605,
      },
      [188838] = {
        ["source"] = "Maldasham",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [259387] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [54049] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Traadhon",
        ["npcID"] = 417,
      },
      [77489] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ninyeve-Stormscale",
        ["npcID"] = 0,
      },
      [4987] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [280654] = {
        ["source"] = "Ghazzgul-Nemesis",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [272343] = {
        ["source"] = "Azerite-Infused Elemental",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136615,
      },
      [883] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [5019] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Myrìth-Nemesis",
        ["npcID"] = 0,
      },
      [224001] = {
        ["source"] = "Burstofgods",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [265522] = {
        ["source"] = "Mor'fani the Exile",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 134694,
      },
      [26297] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [77575] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [30455] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [271877] = {
        ["source"] = "Zadenrogal-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [300832] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [256498] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cursed Game-hawk",
        ["npcID"] = 122961,
      },
      [272349] = {
        ["source"] = "Infused Crag",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136613,
      },
      [303438] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [272685] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [265742] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [273728] = {
        ["source"] = "Aldarana",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [266206] = {
        ["npcID"] = 135475,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kula the Butcher",
        ["encounterID"] = 2140,
      },
      [233496] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [203277] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gezimet-Frostmane",
        ["npcID"] = 0,
      },
      [299524] = {
        ["source"] = "Tamelya-Pozzodell'Eternità",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [274395] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nkechi",
        ["npcID"] = 0,
      },
      [255220] = {
        ["source"] = "Hex Priest Haraka",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 141959,
      },
      [204301] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Eulusqt",
        ["npcID"] = 0,
      },
      [275931] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [24858] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wázúpp",
        ["npcID"] = 0,
      },
      [295378] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [269279] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [355] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [228354] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [216328] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [274443] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [212423] = {
        ["source"] = "Risen Skulker",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 99541,
      },
      [116768] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [268769] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [53209] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sahrot-TarrenMill",
        ["npcID"] = 0,
      },
      [266030] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [274399] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Asdwor",
        ["npcID"] = 0,
      },
      [180749] = {
        ["source"] = "Zerks-Hellscream",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [291853] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Scrappy",
        ["npcID"] = 150497,
      },
      [290264] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [279135] = {
        ["source"] = "John J. Keeshan",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 140288,
      },
      [6360] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Domna",
        ["npcID"] = 120526,
      },
      [297941] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Crazyarms-TwistingNether",
        ["npcID"] = 0,
      },
      [286171] = {
        ["source"] = "Satnaia-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [266779] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [132403] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [72968] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Radheroman-Ragnaros",
        ["npcID"] = 0,
      },
      [271843] = {
        ["source"] = "Emerica-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [195901] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [295384] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Decento-Silvermoon",
        ["npcID"] = 0,
      },
      [35395] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [147367] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tysunfury-Silvermoon",
        ["npcID"] = 0,
      },
      [280544] = {
        ["source"] = "Panzerhenk-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [132404] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [202164] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Polishedhead",
        ["npcID"] = 0,
      },
      [273892] = {
        ["source"] = "Dazarian Stalker",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 130774,
      },
      [157736] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [101545] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Zhoulong-Nemesis",
        ["npcID"] = 0,
      },
      [268586] = {
        ["type"] = "BUFF",
        ["source"] = "King Dazar",
        ["npcID"] = 136160,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2143,
      },
      [203538] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Holyshyte-Ragnaros",
        ["npcID"] = 0,
      },
      [228358] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [268776] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Amani Battle Bear",
        ["npcID"] = 130257,
      },
      [275429] = {
        ["source"] = "Axerontas-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [269800] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cursed Game-hawk",
        ["npcID"] = 122961,
      },
      [270312] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Arvon the Betrayed",
        ["npcID"] = 137529,
      },
      [264683] = {
        ["source"] = "Umbra'jin",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 122004,
      },
      [227847] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Royjoness-Ragnaros",
        ["npcID"] = 0,
      },
      [203539] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Holyshyte-Ragnaros",
        ["npcID"] = 0,
      },
      [1943] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [274919] = {
        ["source"] = "Rinth-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [162908] = {
        ["source"] = "Gahz'ralka",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 129954,
      },
      [278954] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Duracels-Nagrand",
        ["npcID"] = 0,
      },
      [188443] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [198837] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Risen Skulker",
        ["npcID"] = 99541,
      },
      [34477] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [248597] = {
        ["source"] = "Bound Tide Elemental",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 123877,
      },
      [270315] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Arvon the Betrayed",
        ["npcID"] = 137529,
      },
      [108199] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Thorli-Ravencrest",
        ["npcID"] = 0,
      },
      [3714] = {
        ["source"] = "Deatthbringe-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [304603] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Êlrâîlîndâ-TwistingNether",
        ["npcID"] = 0,
      },
      [198069] = {
        ["source"] = "Tuuttie-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [262577] = {
        ["source"] = "Diremaw",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 128620,
      },
      [203285] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [275059] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [250878] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [279397] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [157228] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kittytronic-Sylvanas",
        ["npcID"] = 0,
      },
      [304605] = {
        ["source"] = "Unknown",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [22812] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [264689] = {
        ["source"] = "Pridel-Draenor",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [203286] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [304606] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [974] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Troske",
        ["npcID"] = 0,
      },
      [295395] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275779] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [255741] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Faithless Ravager",
        ["npcID"] = 134320,
      },
      [280170] = {
        ["source"] = "Aldarana",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [157997] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Crúeger",
        ["npcID"] = 0,
      },
      [980] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [100780] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [982] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [146739] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [44457] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [279204] = {
        ["source"] = "Naxs-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270322] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bloodbough Spore",
        ["npcID"] = 135905,
      },
      [194844] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [41425] = {
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [267764] = {
        ["npcID"] = 136256,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Coffin",
        ["encounterID"] = 2142,
      },
      [270323] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [270889] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "King Rahu'ai",
        ["npcID"] = 134331,
      },
      [210643] = {
        ["source"] = "Sweetside-Stormscale",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [145205] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [115191] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [267558] = {
        ["source"] = "Adernain",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [256407] = {
        ["source"] = "Bloodwing Bonepicker",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136393,
      },
      [304612] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [201754] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "YEET",
        ["npcID"] = 50051,
      },
      [290512] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Franga",
        ["npcID"] = 0,
      },
      [111400] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sinisterfire-TwistingNether",
        ["npcID"] = 0,
      },
      [287504] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Franga",
        ["npcID"] = 0,
      },
      [260291] = {
        ["source"] = "Zanchuli Oathbreaker",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135922,
      },
      [295402] = {
        ["source"] = "Dronah",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [105771] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [207640] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yungpottuh",
        ["npcID"] = 0,
      },
      [132157] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [62305] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [32216] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [198067] = {
        ["source"] = "Shamong-Wildhammer",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [633] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lightbringér-TheMaelstrom",
        ["npcID"] = 0,
      },
      [279028] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Plutonx-Stormscale",
        ["npcID"] = 0,
      },
      [277471] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stormsong Loyalist",
        ["npcID"] = 137155,
      },
      [236299] = {
        ["source"] = "Nitradamus",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [285979] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Prednizon-Thunderhorn",
        ["npcID"] = 0,
      },
      [303593] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shirakess Subjugator",
        ["npcID"] = 152724,
      },
      [257537] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [118000] = {
        ["source"] = "Greekpsycho",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [298988] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Infinitywar-Silvermoon",
        ["npcID"] = 0,
      },
      [183752] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Qln",
        ["npcID"] = 0,
      },
      [207386] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [6770] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wessél",
        ["npcID"] = 0,
      },
      [266237] = {
        ["npcID"] = 135470,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aka'ali the Conqueror",
        ["encounterID"] = 2140,
      },
      [259329] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Sorceress",
        ["npcID"] = 144769,
      },
      [287731] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lightbringér-TheMaelstrom",
        ["npcID"] = 0,
      },
      [188196] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [270332] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [28730] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [1329] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [196840] = {
        ["source"] = "Nurke-Ragnaros",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [288756] = {
        ["source"] = "Emerica-Outland",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [279033] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Plutonx-Stormscale",
        ["npcID"] = 0,
      },
      [49576] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [210714] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krawg-Stormscale",
        ["npcID"] = 0,
      },
      [1044] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [272893] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [297969] = {
        ["source"] = "Nightshiv-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [193315] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [270335] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [66] = {
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2140,
      },
      [297970] = {
        ["source"] = "Kinka-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [2649] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Unknown",
        ["npcID"] = 151147,
      },
      [206803] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Klitzemon-Ravencrest",
        ["npcID"] = 0,
      },
      [299506] = {
        ["source"] = "Pwnance-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [288024] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [193316] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [295962] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [2139] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [198149] = {
        ["source"] = "Serenada-Frostmane",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [260366] = {
        ["source"] = "Child of Gonk",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136023,
      },
      [93622] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [275909] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [254471] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shackals",
        ["npcID"] = 0,
      },
      [279614] = {
        ["source"] = "Dark Iron Grenadier",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131814,
      },
      [55078] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [8676] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [299507] = {
        ["source"] = "Iqp-Sylvanas",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [304627] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [184362] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [303604] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shirakess Subjugator",
        ["npcID"] = 152724,
      },
      [254472] = {
        ["source"] = "Rhaegoris-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [108366] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cùrse-TwistingNether",
        ["npcID"] = 0,
      },
      [43308] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Radheroman-Ragnaros",
        ["npcID"] = 0,
      },
      [102560] = {
        ["source"] = "Thorús-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [295186] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [261893] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krazzlefrazz Officer",
        ["npcID"] = 135549,
      },
      [264173] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Морридин-Ревущийфьорд",
        ["npcID"] = 0,
      },
      [289277] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tamir-Stormscale",
        ["npcID"] = 0,
      },
      [274346] = {
        ["source"] = "Watchmetko-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [203554] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yungpottuh",
        ["npcID"] = 0,
      },
      [270343] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [16804] = {
        ["source"] = "Dark Iron Earthbreaker",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 132188,
      },
      [279555] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [1122] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luàna-Outland",
        ["npcID"] = 0,
      },
      [184364] = {
        ["source"] = "Greekpsycho",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [272903] = {
        ["source"] = "Naxs-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [254474] = {
        ["source"] = "Arbalest-Hellscream",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [87204] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Prcdoom",
        ["npcID"] = 0,
      },
      [267330] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [299515] = {
        ["source"] = "Arbalest-Hellscream",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [256659] = {
        ["source"] = "Flippey-Stormscale",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [255754] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Faithless Bonepicker",
        ["npcID"] = 128683,
      },
      [256403] = {
        ["source"] = "Bonebeak Vulture",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136664,
      },
      [280855] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [116011] = {
        ["source"] = "Nitradamus",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [81340] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [203812] = {
        ["source"] = "Pvpdkdk-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [2565] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [51690] = {
        ["source"] = "Slaycur-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [77758] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [299789] = {
        ["source"] = "Adrick-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [289283] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ambra-Thunderhorn",
        ["npcID"] = 0,
      },
      [1160] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [53480] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [132168] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [199854] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [291843] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gogodancer-Ravencrest",
        ["npcID"] = 0,
      },
      [233499] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [184367] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [233582] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [271374] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Avëngër",
        ["npcID"] = 0,
      },
      [264106] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [203814] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ykiz-TwistingNether",
        ["npcID"] = 0,
      },
      [233490] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [263187] = {
        ["source"] = "Blood Crawg",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 128005,
      },
      [48107] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [219167] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Brinefang Tidestalker",
        ["npcID"] = 139161,
      },
      [57724] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mørfer-Stormscale",
        ["npcID"] = 0,
      },
      [2383] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zorog-Drak'thul",
        ["npcID"] = 0,
      },
      [277373] = {
        ["source"] = "Stormbound Conqueror",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136555,
      },
      [199721] = {
        ["source"] = "Unholycrixus-Runetotem",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270865] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "King A'akul",
        ["npcID"] = 137484,
      },
      [257549] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ruin Sentinel",
        ["npcID"] = 129873,
      },
      [292359] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Quepsi-Draenor",
        ["npcID"] = 0,
      },
      [233497] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [260364] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [205351] = {
        ["source"] = "Valusia-DunModr",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [292360] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zorog-Drak'thul",
        ["npcID"] = 0,
      },
      [278543] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [295431] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ørnn-Silvermoon",
        ["npcID"] = 0,
      },
      [259597] = {
        ["source"] = "Child of Gonk",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136023,
      },
      [288267] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [233498] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [260365] = {
        ["source"] = "Child of Gonk",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136023,
      },
      [299169] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kil'karrok Hammerclaw",
        ["npcID"] = 152413,
      },
      [292362] = {
        ["source"] = "Yanjin-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [6660] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stormsong Hunter",
        ["npcID"] = 140595,
      },
      [235313] = {
        ["source"] = "Mayni-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [273428] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bàlrog-TwistingNether",
        ["npcID"] = 0,
      },
      [292363] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cyreks-Stormscale",
        ["npcID"] = 0,
      },
      [107570] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [33395] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Water Elemental",
        ["npcID"] = 78116,
      },
      [267288] = {
        ["source"] = "Earthen Ring Shaman",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135671,
      },
      [292364] = {
        ["source"] = "Redknuckles",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [195630] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nazedo",
        ["npcID"] = 0,
      },
      [270871] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Stone Golem",
        ["npcID"] = 137708,
      },
      [257552] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ruin Sentinel",
        ["npcID"] = 129873,
      },
      [245526] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Enthralled Sailor",
        ["npcID"] = 141177,
      },
      [133197] = {
        ["source"] = "High-Explosive Bomb",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 139514,
      },
      [33907] = {
        ["source"] = "Broll Bearmantle",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 142294,
      },
      [119085] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bablo-TwistingNether",
        ["npcID"] = 0,
      },
      [271896] = {
        ["source"] = "Zadenrogal-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [279828] = {
        ["source"] = "Priestess Lylliana",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 143582,
      },
      [134477] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unknown",
        ["npcID"] = 17252,
      },
      [257553] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ruin Sentinel",
        ["npcID"] = 129873,
      },
      [256401] = {
        ["source"] = "Sandspinner Weaver",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 129496,
      },
      [259500] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grimestone Chef",
        ["npcID"] = 127150,
      },
      [274968] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grimscowl the Harebrained",
        ["npcID"] = 141059,
      },
      [236060] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Caelly-TwistingNether",
        ["npcID"] = 0,
      },
      [277308] = {
        ["source"] = "Hex Priest Haraka",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 141959,
      },
      [286739] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Casseiopurr-Sylvanas",
        ["npcID"] = 0,
      },
      [108211] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mullett",
        ["npcID"] = 0,
      },
      [5116] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [77762] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [279827] = {
        ["source"] = "Father Timothy",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 143581,
      },
      [264735] = {
        ["type"] = "BUFF",
        ["source"] = "YEET",
        ["npcID"] = 50051,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [257424] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [260881] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [114108] = {
        ["source"] = "Loumi",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [295373] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [212800] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [208683] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [256434] = {
        ["source"] = "Serenada-Frostmane",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [135503] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tidesage Defector",
        ["npcID"] = 152301,
      },
      [274282] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Asdwor",
        ["npcID"] = 0,
      },
      [268955] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [257044] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [197937] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [285720] = {
        ["source"] = "Najtälfen-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299584] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Emorneth",
        ["npcID"] = 153025,
      },
      [125439] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [304667] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Tidal Guard",
        ["npcID"] = 156092,
      },
      [285721] = {
        ["source"] = "Genuss-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [2643] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [183888] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Invading Grunt",
        ["npcID"] = 135860,
      },
      [295367] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [5308] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [1330] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [79175] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Scuttlestep Crab",
        ["npcID"] = 123236,
      },
      [58984] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [292151] = {
        ["source"] = "Aldarana",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [96312] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Redlauk",
        ["npcID"] = 0,
      },
      [294935] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kolloss-Stormscale",
        ["npcID"] = 0,
      },
      [303800] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "HK-8 Aerial Oppression Unit",
        ["npcID"] = 154442,
      },
      [204336] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [257422] = {
        ["source"] = "Ahnoll-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [53390] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rashaa-Trollbane",
        ["npcID"] = 0,
      },
      [250769] = {
        ["source"] = "Thieving Snapper",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 126331,
      },
      [279584] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nihilum",
        ["npcID"] = 0,
      },
      [304660] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rainsoil-TwistingNether",
        ["npcID"] = 0,
      },
      [272420] = {
        ["source"] = "Crawg Rider",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 128267,
      },
      [289308] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [267303] = {
        ["source"] = "Old K'zlotec",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135916,
      },
      [5672] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unknown",
        ["npcID"] = 3527,
      },
      [107574] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [68054] = {
        ["source"] = "Jeeves",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 35642,
      },
      [269351] = {
        ["npcID"] = 136976,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "T'zala",
        ["encounterID"] = 2143,
      },
      [280615] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rashaa-Trollbane",
        ["npcID"] = 0,
      },
      [30108] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [271563] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Embalming Fluid",
        ["npcID"] = 137989,
      },
      [265258] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [300291] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [155722] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [203059] = {
        ["source"] = "Crów",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [216251] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rashaa-Trollbane",
        ["npcID"] = 0,
      },
      [32379] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Superjonas-Ragnaros",
        ["npcID"] = 0,
      },
      [207400] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rashaa-Trollbane",
        ["npcID"] = 0,
      },
      [259352] = {
        ["source"] = "Vilescale Hydromancer",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 125240,
      },
      [268895] = {
        ["source"] = "Horvican-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [304665] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Psychodream",
        ["npcID"] = 0,
      },
      [234084] = {
        ["source"] = "Zlorba-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [90361] = {
        ["npcID"] = 50051,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "YEET",
        ["encounterID"] = 2139,
      },
      [267308] = {
        ["npcID"] = 135472,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Zanazal the Wise",
        ["encounterID"] = 2140,
      },
      [265773] = {
        ["npcID"] = 135322,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "The Golden Serpent",
        ["encounterID"] = 2139,
      },
      [264681] = {
        ["source"] = "Umbra'jin",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 122004,
      },
      [210126] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ulthair",
        ["npcID"] = 0,
      },
      [192058] = {
        ["source"] = "Shamong-Wildhammer",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [132951] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [2823] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Missvenom-TwistingNether",
        ["npcID"] = 0,
      },
      [69179] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [252216] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yungpottuh",
        ["npcID"] = 0,
      },
      [18562] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [268756] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [272940] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [255516] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sandclaw Stoneshell",
        ["npcID"] = 152795,
      },
      [266940] = {
        ["npcID"] = 135470,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aka'ali the Conqueror",
        ["encounterID"] = 2140,
      },
      [203808] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Niazri-Stormscale",
        ["npcID"] = 0,
      },
      [185311] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [273453] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [269871] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bloodbough Funggarian",
        ["npcID"] = 135901,
      },
      [5740] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gernot-Ravencrest",
        ["npcID"] = 0,
      },
      [256735] = {
        ["source"] = "Dralro-Hellscream",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [259388] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [269872] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bloodbough Funggarian",
        ["npcID"] = 135901,
      },
      [165961] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yungpottuh",
        ["npcID"] = 0,
      },
      [303301] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Azsh'ari Invoker",
        ["npcID"] = 145326,
      },
      [291587] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Inert Voodoo Mask",
        ["npcID"] = 150412,
      },
      [282887] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harpoon Launcher",
        ["npcID"] = 145299,
      },
      [287660] = {
        ["source"] = "Axerontas-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [36213] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Primal Earth Elemental",
        ["npcID"] = 61056,
      },
      [185123] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [214975] = {
        ["source"] = "Olpa",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [278574] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Duracels-Nagrand",
        ["npcID"] = 0,
      },
      [287379] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [1464] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Warriön-Nemesis",
        ["npcID"] = 0,
      },
      [265781] = {
        ["npcID"] = 135322,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "The Golden Serpent",
        ["encounterID"] = 2139,
      },
      [289423] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Hobilik-TwistingNether",
        ["npcID"] = 0,
      },
      [2818] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [257418] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Plock-Ghostlands",
        ["npcID"] = 0,
      },
      [290793] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blacklodge",
        ["npcID"] = 0,
      },
      [298700] = {
        ["source"] = "Hylía-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [44614] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [48778] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [199483] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [222256] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ninforim-Nemesis",
        ["npcID"] = 0,
      },
      [289324] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Roffxd-TwistingNether",
        ["npcID"] = 0,
      },
      [275507] = {
        ["source"] = "Infused Bedrock",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136614,
      },
      [269878] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bloodbough Fungalmancer",
        ["npcID"] = 135902,
      },
      [2983] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [190784] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [287790] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Xarthás",
        ["npcID"] = 0,
      },
      [269879] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bloodbough Funggarian",
        ["npcID"] = 135901,
      },
      [201787] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [268856] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Talaexx-Ragnaros",
        ["npcID"] = 0,
      },
      [276743] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [269880] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bloodbough Funggarian",
        ["npcID"] = 135901,
      },
      [275672] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Battlerager-Hellscream",
        ["npcID"] = 0,
      },
      [287280] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [20066] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ashgriel-Silvermoon",
        ["npcID"] = 0,
      },
      [269881] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bloodbough Fungalmancer",
        ["npcID"] = 135902,
      },
      [109304] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [264764] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [285496] = {
        ["source"] = "Nurke-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [288305] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [115767] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [260384] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [273465] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luss-Nemesis",
        ["npcID"] = 0,
      },
      [273977] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [244776] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Maison the Portable",
        ["npcID"] = 139290,
      },
      [199845] = {
        ["source"] = "Psyfiend",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 101398,
      },
      [267325] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [259873] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fattened Buzzard",
        ["npcID"] = 126502,
      },
      [288819] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Mrrgl-gurk",
        ["npcID"] = 145495,
      },
      [18499] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [267326] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [276026] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Meowpower-Silvermoon",
        ["npcID"] = 0,
      },
      [268956] = {
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [205708] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [267327] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [270363] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Krazzlefrazz Guard",
        ["npcID"] = 135554,
      },
      [202770] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ohnej-TarrenMill",
        ["npcID"] = 0,
      },
      [186258] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [255625] = {
        ["source"] = "Jao-Ti the Thunderous",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 128474,
      },
      [269887] = {
        ["source"] = "Leonithiel-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280634] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rolis-Dragonblight",
        ["npcID"] = 0,
      },
      [118455] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [267329] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [205032] = {
        ["source"] = "Nitradamus",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [280635] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Risingmist",
        ["npcID"] = 0,
      },
      [272646] = {
        ["source"] = "Crawg Rider",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 128267,
      },
      [260643] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ryathan",
        ["npcID"] = 0,
      },
      [54149] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [279810] = {
        ["source"] = "Aldarana",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [257317] = {
        ["source"] = "Enslaved Remains",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 127902,
      },
      [267331] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [299768] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151300,
      },
      [51714] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [101568] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [59052] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [271938] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Nest",
        ["npcID"] = 138172,
      },
      [158806] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Croaker",
        ["npcID"] = 140938,
      },
      [100] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [279615] = {
        ["source"] = "Dark Iron Grenadier",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131814,
      },
      [278080] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stormflash",
        ["npcID"] = 139932,
      },
      [1604] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Horde Grunt",
        ["npcID"] = 154045,
      },
      [246852] = {
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [29722] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [59628] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [232698] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nepheria",
        ["npcID"] = 0,
      },
      [264776] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Masakralp",
        ["npcID"] = 0,
      },
      [275523] = {
        ["source"] = "Infused Bedrock",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136614,
      },
      [273988] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Goshon-Draenor",
        ["npcID"] = 0,
      },
      [264265] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "YEET",
        ["npcID"] = 50051,
      },
      [280177] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [280286] = {
        ["source"] = "Bengé-Ragnaros",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [126389] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [279153] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [280400] = {
        ["source"] = "Shamong-Wildhammer",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [116841] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Störmfist",
        ["npcID"] = 0,
      },
      [225080] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [270084] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Guard Captain Atu",
        ["npcID"] = 137473,
      },
      [270920] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Queen Wasi",
        ["npcID"] = 137478,
      },
      [261764] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Hèllheart",
        ["npcID"] = 0,
      },
      [284275] = {
        ["source"] = "Zlorba-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [6572] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [291065] = {
        ["source"] = "Energized Scraphound",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 150976,
      },
      [127797] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [273992] = {
        ["source"] = "Vituläski-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [193538] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [275712] = {
        ["source"] = "Lucille",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 134296,
      },
      [256390] = {
        ["source"] = "Sandspinner Weaver",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 129496,
      },
      [248622] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ryathan",
        ["npcID"] = 0,
      },
      [275773] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Strrex-Stormscale",
        ["npcID"] = 0,
      },
      [272970] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [197051] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Neilea-Mal'Ganis",
        ["npcID"] = 0,
      },
      [269900] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bloodbough Funggarian",
        ["npcID"] = 135901,
      },
      [292463] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Khradok-Ragnaros",
        ["npcID"] = 0,
      },
      [268877] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [271105] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Warriön-Nemesis",
        ["npcID"] = 0,
      },
      [205636] = {
        ["source"] = "Aminä-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [51505] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [5246] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [20707] = {
        ["source"] = "Nulo-Aggra(Português)",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [290372] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [208963] = {
        ["source"] = "Skyfury Totem",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 105427,
      },
      [289349] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [211522] = {
        ["source"] = "Valusia-DunModr",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [31707] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Water Elemental",
        ["npcID"] = 78116,
      },
      [202748] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nélia-Ravencrest",
        ["npcID"] = 0,
      },
      [270927] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "King Timalji",
        ["npcID"] = 137474,
      },
      [271439] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bombarding Zeppelin",
        ["npcID"] = 136957,
      },
      [6788] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Nepheria",
        ["npcID"] = 0,
      },
      [288839] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [129250] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [293491] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [193356] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [199753] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [281721] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [270058] = {
        ["source"] = "Yurinetez-GrimBatol",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [269906] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bloodbough Funggarian",
        ["npcID"] = 135901,
      },
      [288841] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [270930] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Queen Patlaa",
        ["npcID"] = 137486,
      },
      [17253] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [288330] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [199754] = {
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [270931] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [306242] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [271103] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [262232] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Klösis-Ravencrest",
        ["npcID"] = 0,
      },
      [272979] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [203337] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [193358] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [203849] = {
        ["source"] = "Westel-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [295413] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [47540] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [288333] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [276840] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Faost-Silvermoon",
        ["npcID"] = 0,
      },
      [196941] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [275540] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [193359] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [203850] = {
        ["source"] = "Snakeyz",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [269169] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Veteran Commando",
        ["npcID"] = 140493,
      },
      [204330] = {
        ["source"] = "Nurke-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [295408] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [297035] = {
        ["source"] = "Nirvashka-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [1766] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [40120] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bnudd-Ragnaros",
        ["npcID"] = 0,
      },
      [280148] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Goblin Diplomat",
        ["npcID"] = 137087,
      },
      [244808] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sandclaw Crab",
        ["npcID"] = 145337,
      },
      [295501] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [192081] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [280149] = {
        ["source"] = "Kappadeath-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280661] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Absorb-o-Tron",
        ["npcID"] = 143985,
      },
      [275032] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [1784] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [163505] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [203852] = {
        ["source"] = "Thorús-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [289524] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [212552] = {
        ["source"] = "Malmendk-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [102342] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [297039] = {
        ["source"] = "Iwasadwarf",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [184662] = {
        ["source"] = "Naxs-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [115008] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bablo-TwistingNether",
        ["npcID"] = 0,
      },
      [240443] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Minion of Zul",
        ["npcID"] = 133943,
      },
      [94794] = {
        ["source"] = "Nulo-Aggra(Português)",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [147833] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [78674] = {
        ["source"] = "Thorús-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [188031] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Psilozz-Stormscale",
        ["npcID"] = 0,
      },
      [36554] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [225603] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Valgoth-Dragonblight",
        ["npcID"] = 0,
      },
      [246152] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [5221] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [270588] = {
        ["source"] = "Frenzied Thresher",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 125082,
      },
      [1822] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [16870] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [288343] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [48181] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [252215] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Crimson Cultist",
        ["npcID"] = 138274,
      },
      [267362] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wavespeaker Reid",
        ["npcID"] = 135985,
      },
      [267874] = {
        ["npcID"] = 0,
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2142,
      },
      [263853] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [268898] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [78675] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Braslong-Hyjal",
        ["npcID"] = 0,
      },
      [216411] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [55173] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Drudara-Aggramar",
        ["npcID"] = 0,
      },
      [113858] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Myrìth-Nemesis",
        ["npcID"] = 0,
      },
      [268899] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [1850] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [55090] = {
        ["source"] = "Tombpwn-Stormscale",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [61295] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rashaa-Trollbane",
        ["npcID"] = 0,
      },
      [1856] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["encounterID"] = 2139,
      },
      [272122] = {
        ["source"] = "Alreadydead-Dragonblight",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [186265] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [268901] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Vanilline-Kilrogg",
        ["npcID"] = 0,
      },
      [264957] = {
        ["source"] = "Unknown",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [302677] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Executedrod-TwistingNether",
        ["npcID"] = 0,
      },
      [304959] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [31935] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Nkechi",
        ["npcID"] = 0,
      },
      [273415] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ryathan",
        ["npcID"] = 0,
      },
      [152108] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [194384] = {
        ["source"] = "Norskfaen-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [32615] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151310,
      },
      [271462] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Seekers-Silvermoon",
        ["npcID"] = 0,
      },
      [31224] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [272486] = {
        ["source"] = "Crimson Gnarlvine",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 137046,
      },
      [262763] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rolis-Dragonblight",
        ["npcID"] = 0,
      },
      [260369] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [269928] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shadow-Borne Champion",
        ["npcID"] = 134158,
      },
      [267626] = {
        ["npcID"] = 0,
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2142,
      },
      [33917] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [1066] = {
        ["source"] = "Céna-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [286305] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Varok Saurfang",
        ["npcID"] = 146011,
      },
      [48438] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [121536] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ninyeve-Stormscale",
        ["npcID"] = 0,
      },
      [271465] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Seekers-Silvermoon",
        ["npcID"] = 0,
      },
      [280165] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [223306] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [12042] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [221771] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [269931] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Shadow-Borne Warrior",
        ["npcID"] = 134157,
      },
      [156779] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [120] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["encounterID"] = 2139,
      },
      [192090] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Windeytank-Daggerspine",
        ["npcID"] = 0,
      },
      [269932] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270872] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bloodsworn Agent",
        ["npcID"] = 137485,
      },
      [257408] = {
        ["source"] = "Soryegeton-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [223819] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [209746] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Konsuelo-Wildhammer",
        ["npcID"] = 0,
      },
      [272247] = {
        ["source"] = "Servant of Bwonsamdi",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136028,
      },
      [270957] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stormrider Telmin",
        ["npcID"] = 139930,
      },
      [47528] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [13445] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Champion",
        ["npcID"] = 144778,
      },
      [197277] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [288388] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Risen Soul",
        ["npcID"] = 148716,
      },
      [152175] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Franga",
        ["npcID"] = 0,
      },
      [269935] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Minion of Zul",
        ["npcID"] = 133943,
      },
      [275544] = {
        ["source"] = "Supersonic-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [122] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["encounterID"] = 2139,
      },
      [185710] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [269936] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Minion of Zul",
        ["npcID"] = 133943,
      },
      [279793] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [275863] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mozunu-ChamberofAspects",
        ["npcID"] = 0,
      },
      [280713] = {
        ["source"] = "Leonithiel-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [274031] = {
        ["source"] = "7th Legion Engineer",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 139505,
      },
      [109128] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [1966] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [274837] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Meowpower-Silvermoon",
        ["npcID"] = 0,
      },
      [261947] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Franga",
        ["npcID"] = 0,
      },
      [117828] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [300893] = {
        ["source"] = "Pridel-Draenor",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [136] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [272388] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Shadow of Zul",
        ["npcID"] = 138489,
      },
      [246851] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [279151] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [199203] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [49143] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [290121] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mullett",
        ["npcID"] = 0,
      },
      [53365] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [13877] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [259818] = {
        ["source"] = "Hand of Fate",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131613,
      },
      [305252] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Syanide-TheMaelstrom",
        ["npcID"] = 0,
      },
      [123586] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [299237] = {
        ["source"] = "Ngeru-Ravencrest",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [8004] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [19750] = {
        ["source"] = "Tamelya-Pozzodell'Eternità",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [17735] = {
        ["source"] = "Juk'zazt",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 1860,
      },
      [273525] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [298601] = {
        ["source"] = "Jozzixz-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [264314] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [185763] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [268893] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [270485] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Berserker",
        ["npcID"] = 135167,
      },
      [131894] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [292361] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Radheroman-Ragnaros",
        ["npcID"] = 0,
      },
      [8092] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [298603] = {
        ["source"] = "Chungo-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [150486] = {
        ["source"] = "Aldarana",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [257345] = {
        ["source"] = "Captain Mu'kala",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 125232,
      },
      [44425] = {
        ["source"] = "Nitradamus",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [278134] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Avëngër",
        ["npcID"] = 0,
      },
      [288074] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ljusbritt-TwistingNether",
        ["npcID"] = 0,
      },
      [298951] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rainsoil-TwistingNether",
        ["npcID"] = 0,
      },
      [277623] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Azerite Nibbler",
        ["npcID"] = 142070,
      },
      [267612] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ryathan",
        ["npcID"] = 0,
      },
      [303211] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Crazyarms-TwistingNether",
        ["npcID"] = 0,
      },
      [227723] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sinisterfire-TwistingNether",
        ["npcID"] = 0,
      },
      [210660] = {
        ["source"] = "Sweetside-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [284277] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sibannac-Nemesis",
        ["npcID"] = 0,
      },
      [303212] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Subutex-Nemesis",
        ["npcID"] = 0,
      },
      [198222] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Neilea-Mal'Ganis",
        ["npcID"] = 0,
      },
      [45242] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [298607] = {
        ["source"] = "Vanishosa-Pozzodell'Eternità",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [191587] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [130] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Illds",
        ["npcID"] = 0,
      },
      [279673] = {
        ["source"] = "Axerontas-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [47541] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [260425] = {
        ["source"] = "Muddy Riverbeast",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 130757,
      },
      [281209] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Pupani",
        ["npcID"] = 0,
      },
      [271486] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unknown",
        ["npcID"] = 136995,
      },
      [258883] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [95826] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ankoan Sentry",
        ["npcID"] = 154907,
      },
      [270339] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [296539] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [102351] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [196608] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [133] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [267305] = {
        ["source"] = "Old K'zlotec",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135916,
      },
      [288548] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Magus of the Dead",
        ["npcID"] = 148797,
      },
      [109132] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Roffxd-TwistingNether",
        ["npcID"] = 0,
      },
      [49020] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [74589] = {
        ["type"] = "BUFF",
        ["source"] = "Veriparoni-Auchindoun",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [16591] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ohnej-TarrenMill",
        ["npcID"] = 0,
      },
      [76892] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Champion",
        ["npcID"] = 144778,
      },
      [295137] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [304851] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [286331] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mullett",
        ["npcID"] = 0,
      },
      [114250] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [268932] = {
        ["npcID"] = 136160,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "King Dazar",
        ["encounterID"] = 2143,
      },
      [299790] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sárá",
        ["npcID"] = 0,
      },
      [102352] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [263901] = {
        ["source"] = "Bramblewing",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131718,
      },
      [281215] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Dórfy-TheMaelstrom",
        ["npcID"] = 0,
      },
      [106830] = {
        ["source"] = "Crów",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [278145] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Strrex-Stormscale",
        ["npcID"] = 0,
      },
      [268422] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [281216] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ranursa-Stormscale",
        ["npcID"] = 0,
      },
      [206432] = {
        ["source"] = "Serenada-Frostmane",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [282240] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rikko-Thunderhorn",
        ["npcID"] = 0,
      },
      [135299] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [289523] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [299764] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Waveblade Shaman",
        ["npcID"] = 154304,
      },
      [278147] = {
        ["source"] = "Tamelya-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [118345] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Primal Earth Elemental",
        ["npcID"] = 61056,
      },
      [268936] = {
        ["npcID"] = 136160,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "King Dazar",
        ["encounterID"] = 2143,
      },
      [296059] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [233397] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [275857] = {
        ["source"] = "Crów",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [1490] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [279684] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Spotlolz-Draenor",
        ["npcID"] = 0,
      },
      [273947] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [270473] = {
        ["source"] = "Gunner Sumanko",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136680,
      },
      [216413] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [257410] = {
        ["source"] = "Leperchasm-TheMaelstrom",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [278826] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Royjoness-Ragnaros",
        ["npcID"] = 0,
      },
      [280709] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shockshock-Outland",
        ["npcID"] = 0,
      },
      [303322] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Theurgist Nitara",
        ["npcID"] = 155836,
      },
      [260843] = {
        ["source"] = "Jahden Fla",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 122704,
      },
      [258889] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Warbringer Hozzik",
        ["npcID"] = 129180,
      },
      [193641] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [185709] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [192106] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zeia-Boulderfist",
        ["npcID"] = 0,
      },
      [279572] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [255937] = {
        ["source"] = "Naxs-Ravencrest",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [90328] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unknown",
        ["npcID"] = 32517,
      },
      [217694] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [61684] = {
        ["type"] = "BUFF",
        ["source"] = "YEET",
        ["npcID"] = 50051,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [274426] = {
        ["source"] = "Crów",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [283271] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Brute",
        ["npcID"] = 144780,
      },
      [209914] = {
        ["source"] = "Dark Iron Earthbreaker",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 132188,
      },
      [266231] = {
        ["npcID"] = 135475,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kula the Butcher",
        ["encounterID"] = 2140,
      },
      [182384] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Sorceress",
        ["npcID"] = 144769,
      },
      [231895] = {
        ["source"] = "Naxs-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [297108] = {
        ["source"] = "Watchmetko-Outland",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [274061] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Risen Cultist",
        ["npcID"] = 130098,
      },
      [300761] = {
        ["source"] = "Thorús-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [247121] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Klitzemon-Ravencrest",
        ["npcID"] = 0,
      },
      [12975] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [44544] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [256077] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mudbrush Boar",
        ["npcID"] = 125347,
      },
      [5487] = {
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [267410] = {
        ["source"] = "Macerafej-Ragnaros",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280204] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [295045] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270993] = {
        ["source"] = "Soul-Trapped Guardian",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 129436,
      },
      [97463] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [280205] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [270482] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Berserker",
        ["npcID"] = 135167,
      },
      [277731] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [13750] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [276112] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [199786] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [126664] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [298985] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackfin Seer",
        ["npcID"] = 148475,
      },
      [268519] = {
        ["source"] = "Rinth-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [182387] = {
        ["source"] = "Nurke-Ragnaros",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [190831] = {
        ["source"] = "Lazerkorsa-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [195181] = {
        ["source"] = "Nirvashka-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [269973] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Shadow-Borne Witch Doctor",
        ["npcID"] = 134174,
      },
      [51514] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [270923] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Queen Wasi",
        ["npcID"] = 137478,
      },
      [277650] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [202602] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [270486] = {
        ["source"] = "Unknown",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136446,
      },
      [48265] = {
        ["source"] = "Kappadeath-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [294027] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [2484] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kiflex-TheMaelstrom",
        ["npcID"] = 0,
      },
      [270487] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Berserker",
        ["npcID"] = 135167,
      },
      [236645] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mluxarz",
        ["npcID"] = 0,
      },
      [48108] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [269976] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shadow-Borne Champion",
        ["npcID"] = 134158,
      },
      [196718] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [268953] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [290468] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Koldekevin",
        ["npcID"] = 0,
      },
      [51124] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [195627] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [268954] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [281413] = {
        ["source"] = "Deatthbringe-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [298710] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nakya-Daggerspine",
        ["npcID"] = 0,
      },
      [32182] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [93402] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [297230] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fathom Ray",
        ["npcID"] = 145967,
      },
      [302731] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [248918] = {
        ["source"] = "Ridge Skycaller",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 129927,
      },
      [299661] = {
        ["source"] = "Sayndk-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [261712] = {
        ["source"] = "Saltspine Krolusk",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 124016,
      },
      [280385] = {
        ["source"] = "Bubblegodx-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270492] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Hex Priest",
        ["npcID"] = 135204,
      },
      [299662] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [206930] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [2580] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kolloss-Stormscale",
        ["npcID"] = 0,
      },
      [264352] = {
        ["source"] = "Beezeedee",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299663] = {
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [298197] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcugo",
        ["npcID"] = 0,
      },
      [265888] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [264353] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299664] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [285475] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [51490] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [270495] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [287062] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Roffxd-TwistingNether",
        ["npcID"] = 0,
      },
      [257620] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [102359] = {
        ["source"] = "Aminä-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [260188] = {
        ["source"] = "Jambani Crusher",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 134156,
      },
      [131474] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Biblosa-Blackmoore",
        ["npcID"] = 0,
      },
      [270493] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Hex Priest",
        ["npcID"] = 135204,
      },
      [80354] = {
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [270497] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Witch Doctor",
        ["npcID"] = 135239,
      },
      [5302] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [279709] = {
        ["source"] = "Céna-Pozzodell'Eternità",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [300691] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [113746] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [56641] = {
        ["source"] = "Leonithiel-Outland",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [296086] = {
        ["source"] = "Devotyon-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [287827] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [270499] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Witch Doctor",
        ["npcID"] = 135239,
      },
      [273058] = {
        ["source"] = "Flippey-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [257622] = {
        ["source"] = "Leonithiel-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [300693] = {
        ["source"] = "Thorús-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270500] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Skeletal Hunting Raptor",
        ["npcID"] = 137487,
      },
      [259519] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grimestone Handler",
        ["npcID"] = 127203,
      },
      [304619] = {
        ["source"] = "Adrick-TwistingNether",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [57723] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Hobilik-TwistingNether",
        ["npcID"] = 0,
      },
      [53563] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [298152] = {
        ["source"] = "Valusia-DunModr",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [279526] = {
        ["source"] = "Møøsé-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299785] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151309,
      },
      [270502] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Skeletal Hunting Raptor",
        ["npcID"] = 137487,
      },
      [285424] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bnudd-Ragnaros",
        ["npcID"] = 0,
      },
      [281854] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kaltrae-Silvermoon",
        ["npcID"] = 0,
      },
      [138130] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Earth Spirit",
        ["npcID"] = 69792,
      },
      [8921] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [172] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [279715] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Deatheus",
        ["npcID"] = 0,
      },
      [299773] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151309,
      },
      [274598] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [275110] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gulliver",
        ["npcID"] = 139233,
      },
      [106839] = {
        ["source"] = "Tjara-Pozzodell'Eternità",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [274087] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stormrider Telmin",
        ["npcID"] = 139930,
      },
      [270505] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Queen Patlaa",
        ["npcID"] = 137486,
      },
      [265914] = {
        ["npcID"] = 0,
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [288981] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [269994] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Irontide Brigand",
        ["npcID"] = 135771,
      },
      [270506] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Beastmaster",
        ["npcID"] = 135235,
      },
      [162794] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [296094] = {
        ["source"] = "Asdtmem",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [276136] = {
        ["source"] = "Aminä-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270507] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Beastmaster",
        ["npcID"] = 135235,
      },
      [264878] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unknown",
        ["npcID"] = 0,
      },
      [268854] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yahtzee",
        ["npcID"] = 0,
      },
      [269996] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Irontide Brigand",
        ["npcID"] = 135771,
      },
      [22568] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [198819] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Warriön-Nemesis",
        ["npcID"] = 0,
      },
      [264892] = {
        ["source"] = "Atal'zul Zealot",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135921,
      },
      [43265] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [201846] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luss-Nemesis",
        ["npcID"] = 0,
      },
      [271045] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [3600] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Earthbind Totem",
        ["npcID"] = 2630,
      },
      [84963] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Hiilton-Silvermoon",
        ["npcID"] = 0,
      },
      [75532] = {
        ["source"] = "Blakelively-Dragonblight",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [3716] = {
        ["source"] = "Juk'zazt",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 1860,
      },
      [263346] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Pagane-Ravencrest",
        ["npcID"] = 0,
      },
      [269999] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Irontide Bruiser",
        ["npcID"] = 135777,
      },
      [280746] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ailionora",
        ["npcID"] = 0,
      },
      [205179] = {
        ["source"] = "Kubalock-ChamberofAspects",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [298146] = {
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [32612] = {
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2140,
      },
      [217200] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [228287] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [124430] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grivi-Deathwing",
        ["npcID"] = 0,
      },
      [199545] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Êlrâîlîndâ-TwistingNether",
        ["npcID"] = 0,
      },
      [270513] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bound Lightning Elemental",
        ["npcID"] = 137158,
      },
      [2908] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [296101] = {
        ["source"] = "Asdtmem",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [12294] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [206966] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Klitzemon-Ravencrest",
        ["npcID"] = 0,
      },
      [256350] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rottail",
        ["npcID"] = 141832,
      },
      [271538] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [270003] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Animated Guardian",
        ["npcID"] = 133935,
      },
      [297126] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mereoleona-Ravencrest",
        ["npcID"] = 0,
      },
      [296142] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lost Soul",
        ["npcID"] = 148894,
      },
      [19434] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [2948] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Caelly-TwistingNether",
        ["npcID"] = 0,
      },
      [297034] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mullett",
        ["npcID"] = 0,
      },
      [303780] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [287916] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [195457] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [278705] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Croaker",
        ["npcID"] = 140938,
      },
      [210294] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kless-TwistingNether",
        ["npcID"] = 0,
      },
      [287917] = {
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [202636] = {
        ["source"] = "Ngeru-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [123986] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Franga",
        ["npcID"] = 0,
      },
      [23881] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [12472] = {
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [6673] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [199804] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [198013] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [283167] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gødmødé-GrimBatol",
        ["npcID"] = 0,
      },
      [30213] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Виказул",
        ["npcID"] = 17252,
      },
      [302281] = {
        ["source"] = "Rumblerocks",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 150575,
      },
      [182661] = {
        ["source"] = "7th Legion Marine",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 139317,
      },
      [298189] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Jenkerbell-TwistingNether",
        ["npcID"] = 0,
      },
      [297037] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [119381] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [266939] = {
        ["npcID"] = 135470,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aka'ali the Conqueror",
        ["encounterID"] = 2140,
      },
      [118905] = {
        ["source"] = "Capacitor Totem",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 61245,
      },
      [179057] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [295727] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Melphala",
        ["npcID"] = 0,
      },
      [85222] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [81256] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [209785] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ashgriel-Silvermoon",
        ["npcID"] = 0,
      },
      [297162] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [213858] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [299778] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151310,
      },
      [282294] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Faost-Silvermoon",
        ["npcID"] = 0,
      },
      [256099] = {
        ["source"] = "Loa-Gutter Summoner",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 138816,
      },
      [256355] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rottail",
        ["npcID"] = 141832,
      },
      [8042] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [276154] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kittytronic-Sylvanas",
        ["npcID"] = 0,
      },
      [232559] = {
        ["source"] = "Chery-Ragnaros",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [121557] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ninyeve-Stormscale",
        ["npcID"] = 0,
      },
      [61882] = {
        ["source"] = "Nurke-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [165776] = {
        ["source"] = "Lucille",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 134296,
      },
      [285514] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [200587] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [271550] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [258915] = {
        ["source"] = "Child of Jani",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136018,
      },
      [222695] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unknownmad",
        ["npcID"] = 0,
      },
      [106951] = {
        ["source"] = "Møøsé-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270549] = {
        ["source"] = "Soulspitter Cobra",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 128356,
      },
      [270016] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Animated Guardian",
        ["npcID"] = 133935,
      },
      [19574] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [277181] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [250870] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [286393] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Brownye-Stormscale",
        ["npcID"] = 0,
      },
      [132169] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Droghas-Silvermoon",
        ["npcID"] = 0,
      },
      [185736] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [188290] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [186257] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [65081] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nepheria",
        ["npcID"] = 0,
      },
      [199042] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Thorour-Kilrogg",
        ["npcID"] = 0,
      },
      [271046] = {
        ["source"] = "Saltspine Krolusk",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 124016,
      },
      [302771] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grunkh-Ragnaros",
        ["npcID"] = 0,
      },
      [45438] = {
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [202225] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Battlerager-Hellscream",
        ["npcID"] = 0,
      },
      [271555] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Interment Construct",
        ["npcID"] = 137969,
      },
      [281402] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [302275] = {
        ["source"] = "Rumblerocks",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 150575,
      },
      [277185] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nène-Pozzodell'Eternità",
        ["npcID"] = 0,
      },
      [88423] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["encounterID"] = 2139,
      },
      [11426] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [48707] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krymming-Stormscale",
        ["npcID"] = 0,
      },
      [266951] = {
        ["npcID"] = 135470,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aka'ali the Conqueror",
        ["encounterID"] = 2140,
      },
      [298168] = {
        ["source"] = "Dronah",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [278124] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rainsoil-TwistingNether",
        ["npcID"] = 0,
      },
      [196741] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zhoulong-Nemesis",
        ["npcID"] = 0,
      },
      [131493] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tastyarrows-LaughingSkull",
        ["npcID"] = 0,
      },
      [280653] = {
        ["source"] = "Ghazzgul-Nemesis",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [271561] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Interment Construct",
        ["npcID"] = 137969,
      },
      [185358] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [84714] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [260242] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [259161] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ilushke",
        ["npcID"] = 0,
      },
      [196742] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [221562] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [282826] = {
        ["source"] = "Unknown",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 128554,
      },
      [258920] = {
        ["source"] = "Fàzzy-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280772] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [271049] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [261735] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ghost of the Deep",
        ["npcID"] = 138288,
      },
      [147362] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [280773] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [293671] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zhoulong-Nemesis",
        ["npcID"] = 0,
      },
      [298661] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Hussaryen-TwistingNether",
        ["npcID"] = 0,
      },
      [32645] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [221886] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [297662] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Glimmershell Crawler",
        ["npcID"] = 152445,
      },
      [255595] = {
        ["source"] = "Krolusk Sandhunter",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 135582,
      },
      [117952] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [271565] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Embalming Fluid",
        ["npcID"] = 137989,
      },
      [285381] = {
        ["source"] = "Crów",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [201350] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sniffydh-Stormscale",
        ["npcID"] = 0,
      },
      [179089] = {
        ["source"] = "Vilescale Warrior",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 123588,
      },
      [280776] = {
        ["source"] = "Greekpsycho",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [208772] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [277706] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luàna-Outland",
        ["npcID"] = 0,
      },
      [255852] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Irontide Mastiff",
        ["npcID"] = 135773,
      },
      [115804] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [186254] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [279754] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Subkrys-Hyjal",
        ["npcID"] = 0,
      },
      [167898] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Radheroman-Ragnaros",
        ["npcID"] = 0,
      },
      [271564] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [85739] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [212610] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Thorli-Ravencrest",
        ["npcID"] = 0,
      },
      [288455] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [198793] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Narvea-ChamberofAspects",
        ["npcID"] = 0,
      },
      [137639] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [3408] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Missvenom-TwistingNether",
        ["npcID"] = 0,
      },
      [296644] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [278733] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Ice Sickle",
        ["npcID"] = 141039,
      },
      [273104] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ørnn-Silvermoon",
        ["npcID"] = 0,
      },
      [206151] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [194153] = {
        ["source"] = "Thorús-Ragnaros",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [278734] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ice Sickle",
        ["npcID"] = 141039,
      },
      [197003] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Hèllheart",
        ["npcID"] = 0,
      },
      [81262] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Efflorescence",
        ["npcID"] = 47649,
      },
      [258925] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Svikari-Draenor",
        ["npcID"] = 0,
      },
      [303299] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Azsh'ari Invoker",
        ["npcID"] = 145326,
      },
      [275936] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [302276] = {
        ["source"] = "Rumblerocks",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 150575,
      },
      [96231] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Nène-Pozzodell'Eternità",
        ["npcID"] = 0,
      },
      [278736] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Swolee-Ragnaros",
        ["npcID"] = 0,
      },
      [277186] = {
        ["source"] = "Charged Sentinel",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136550,
      },
      [205448] = {
        ["source"] = "Valusia-DunModr",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [295337] = {
        ["source"] = "Velharia-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [236665] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [289467] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [210191] = {
        ["source"] = "Naxs-Ravencrest",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [263897] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bucktooth Beaver",
        ["npcID"] = 134359,
      },
      [303302] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Theurgist Nitara",
        ["npcID"] = 155836,
      },
      [188499] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [296138] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [242551] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cùrse-TwistingNether",
        ["npcID"] = 0,
      },
      [124506] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Nazedo",
        ["npcID"] = 0,
      },
      [30151] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krendhun",
        ["npcID"] = 17252,
      },
      [226943] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Prcdoom",
        ["npcID"] = 0,
      },
      [265923] = {
        ["npcID"] = 135322,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "The Golden Serpent",
        ["encounterID"] = 2139,
      },
      [280787] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Talaexx-Ragnaros",
        ["npcID"] = 0,
      },
      [45181] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [80240] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Myrìth-Nemesis",
        ["npcID"] = 0,
      },
      [270293] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Purification Construct",
        ["npcID"] = 134739,
      },
      [280788] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Talaexx-Ragnaros",
        ["npcID"] = 0,
      },
      [12323] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Battlerager-Hellscream",
        ["npcID"] = 0,
      },
      [268801] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sandfury Thug",
        ["npcID"] = 125460,
      },
      [255858] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Coldtooth Howler",
        ["npcID"] = 136205,
      },
      [288977] = {
        ["source"] = "Tombpwn-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [24394] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [279766] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Toska Eaglehorn",
        ["npcID"] = 140778,
      },
      [278231] = {
        ["source"] = "Kesanliali-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [191634] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kadaia-Blackhand",
        ["npcID"] = 0,
      },
      [288844] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Risen Soul",
        ["npcID"] = 148716,
      },
      [279767] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tala Rockwind",
        ["npcID"] = 140782,
      },
      [302796] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Necromastery-TwistingNether",
        ["npcID"] = 0,
      },
      [264415] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ashgriel-Silvermoon",
        ["npcID"] = 0,
      },
      [5143] = {
        ["source"] = "Nitradamus",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [298191] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ranursa-Stormscale",
        ["npcID"] = 0,
      },
      [302797] = {
        ["source"] = "Vernsey",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [297168] = {
        ["source"] = "Quando-Nemesis",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [288849] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [271581] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ashgriel-Silvermoon",
        ["npcID"] = 0,
      },
      [190356] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [186518] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grizzled Orcish Commander",
        ["npcID"] = 137088,
      },
      [57984] = {
        ["source"] = "Primal Fire Elemental",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 61029,
      },
      [5215] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [236021] = {
        ["source"] = "Møøsé-Stormscale",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [192225] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Jenkerbell-TwistingNether",
        ["npcID"] = 0,
      },
      [271071] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kiflex-TheMaelstrom",
        ["npcID"] = 0,
      },
      [277724] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [186263] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Pagane-Ravencrest",
        ["npcID"] = 0,
      },
      [295124] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yahtzee",
        ["npcID"] = 0,
      },
      [112042] = {
        ["source"] = "Unknown",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 1860,
      },
      [203407] = {
        ["source"] = "Madnuzzlol-Stormreaver",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [265910] = {
        ["npcID"] = 135322,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "The Golden Serpent",
        ["encounterID"] = 2139,
      },
      [264420] = {
        ["source"] = "Sayndk-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [278703] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Croaker",
        ["npcID"] = 140938,
      },
      [138927] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wuukeri",
        ["npcID"] = 0,
      },
      [304849] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Frenzied Elemental",
        ["npcID"] = 152164,
      },
      [117588] = {
        ["source"] = "Primal Fire Elemental",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 61029,
      },
      [256374] = {
        ["source"] = "Selrogue-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [114018] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [276192] = {
        ["source"] = "Tauko-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [273310] = {
        ["source"] = "Devotyon-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [31687] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [290469] = {
        ["source"] = "Iqp-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [116705] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Franga",
        ["npcID"] = 0,
      },
      [135831] = {
        ["source"] = "7th Legion Engineer",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 139505,
      },
      [272450] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Warbringer Hozzik",
        ["npcID"] = 129180,
      },
      [263400] = {
        ["source"] = "Keeper Vorrik",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 134067,
      },
      [51460] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [288988] = {
        ["source"] = "Slaycur-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [271077] = {
        ["source"] = "Brine Beetle",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 124019,
      },
      [276138] = {
        ["source"] = "Aminä-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [280413] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [288989] = {
        ["type"] = "DEBUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [294047] = {
        ["source"] = "Aldarana",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275684] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Doc Marrtens",
        ["npcID"] = 140925,
      },
      [274447] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [268520] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Thaunnan-TheMaelstrom",
        ["npcID"] = 0,
      },
      [69369] = {
        ["source"] = "Møøsé-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [35079] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [247677] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Shackals",
        ["npcID"] = 0,
      },
      [303320] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Theurgist Nitara",
        ["npcID"] = 155836,
      },
      [137619] = {
        ["source"] = "Poodlepump-Stormscale",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [17962] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [300762] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [7978] = {
        ["source"] = "Dark Iron Grenadier",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 131814,
      },
      [210320] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Iloveemaa-Ragnaros",
        ["npcID"] = 0,
      },
      [257657] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stone Golem",
        ["npcID"] = 137708,
      },
      [24331] = {
        ["source"] = "Child of Jani",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136018,
      },
      [295134] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Vizar-Pozzodell'Eternità",
        ["npcID"] = 0,
      },
      [256378] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Hexcrazed Greatstag",
        ["npcID"] = 128361,
      },
      [219788] = {
        ["source"] = "Nirvashka-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [270514] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Spectral Brute",
        ["npcID"] = 135231,
      },
      [154796] = {
        ["source"] = "Catrione-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [20572] = {
        ["source"] = "Soròush",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275689] = {
        ["source"] = "Greekpsycho",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [194249] = {
        ["source"] = "Valusia-DunModr",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [287771] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [256379] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Hexcrazed Greatstag",
        ["npcID"] = 128361,
      },
      [279194] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [264682] = {
        ["source"] = "Umbra'jin",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 122004,
      },
      [154797] = {
        ["source"] = "Málnaeper-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299743] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ankoan Bladesman",
        ["npcID"] = 154297,
      },
      [257659] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stone Golem",
        ["npcID"] = 137708,
      },
      [80353] = {
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [267257] = {
        ["npcID"] = 135761,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Thundering Totem",
        ["encounterID"] = 2140,
      },
      [81141] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krymming-Stormscale",
        ["npcID"] = 0,
      },
      [290467] = {
        ["source"] = "Crasyface",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [272733] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [268528] = {
        ["source"] = "Rinth-Silvermoon",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299745] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ankoan Bladesman",
        ["npcID"] = 154297,
      },
      [210657] = {
        ["source"] = "Sweetside-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [7814] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Domna",
        ["npcID"] = 120526,
      },
      [270576] = {
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [299746] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Waveblade Shaman",
        ["npcID"] = 154304,
      },
      [304037] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Landre-Stormscale",
        ["npcID"] = 0,
      },
      [280210] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [195182] = {
        ["source"] = "Kesanliali-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [299747] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Waveblade Shaman",
        ["npcID"] = 154304,
      },
      [193357] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [281744] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Missvenom-TwistingNether",
        ["npcID"] = 0,
      },
      [188370] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [256382] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Hexcrazed Doe",
        ["npcID"] = 129764,
      },
      [58729] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Taunka Spirit Guide",
        ["npcID"] = 31841,
      },
      [262161] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ryathan",
        ["npcID"] = 0,
      },
      [278767] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nazedo",
        ["npcID"] = 0,
      },
      [299749] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Waveblade Shaman",
        ["npcID"] = 154304,
      },
      [212792] = {
        ["type"] = "DEBUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [107428] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aestheticz",
        ["npcID"] = 0,
      },
      [299238] = {
        ["source"] = "Oksinn-LaughingSkull",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [299750] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Waveblade Hunter",
        ["npcID"] = 150202,
      },
      [77535] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Guiltykiller",
        ["npcID"] = 0,
      },
      [274242] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tidebound Corsair",
        ["npcID"] = 129981,
      },
      [25771] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Nkechi",
        ["npcID"] = 0,
      },
      [259454] = {
        ["source"] = "Puttanellaz",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275699] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [270070] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Usx-TwistingNether",
        ["npcID"] = 0,
      },
      [277574] = {
        ["source"] = "Captured Zandalari",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 137766,
      },
      [299752] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Waveblade Hunter",
        ["npcID"] = 150202,
      },
      [260734] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Frostyjackyy-Outland",
        ["npcID"] = 0,
      },
      [278931] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Myrìth-Nemesis",
        ["npcID"] = 0,
      },
      [55095] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Remorselessx",
        ["npcID"] = 0,
      },
      [259455] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Westel-Ragnaros",
        ["npcID"] = 0,
      },
      [8936] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [83958] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Stasha-Aggramar",
        ["npcID"] = 0,
      },
      [198121] = {
        ["source"] = "Rinth-Silvermoon",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275083] = {
        ["source"] = "Sentinel Aeolyn",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 140303,
      },
      [281843] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [20484] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [267402] = {
        ["source"] = "Macerafej-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [289520] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wababy-TwistingNether",
        ["npcID"] = 0,
      },
      [281844] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [272121] = {
        ["source"] = "Quando-Nemesis",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [214621] = {
        ["source"] = "Voidel-TheMaelstrom",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [289521] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Meowpower-Silvermoon",
        ["npcID"] = 0,
      },
      [272518] = {
        ["source"] = "Crimson Gnarlvine",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 137046,
      },
      [258945] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Faithless Bonepicker",
        ["npcID"] = 128683,
      },
      [278244] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Warius-Pozzodell'Eternità",
        ["npcID"] = 0,
      },
      [299757] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Waveblade Hunter",
        ["npcID"] = 150202,
      },
      [34767] = {
        ["source"] = "Primoaid",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [198368] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Yahtzee",
        ["npcID"] = 0,
      },
      [8220] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ludenjower-Stormscale",
        ["npcID"] = 0,
      },
      [256387] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Hexcrazed Greatstag",
        ["npcID"] = 128361,
      },
      [305249] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Syanide-TheMaelstrom",
        ["npcID"] = 0,
      },
      [272342] = {
        ["source"] = "Minor Azerite Infused Elemental",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136616,
      },
      [100784] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [299759] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Waveblade Hunter",
        ["npcID"] = 150202,
      },
      [198304] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [268419] = {
        ["npcID"] = 0,
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2143,
      },
      [272348] = {
        ["source"] = "Infused Crag",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136613,
      },
      [164273] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Proxery-ChamberofAspects",
        ["npcID"] = 0,
      },
      [300272] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wxq",
        ["npcID"] = 0,
      },
      [272126] = {
        ["source"] = "Aireliz",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [58180] = {
        ["source"] = "Møøsé-Stormscale",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [289526] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Ascaløn-TwistingNether",
        ["npcID"] = 0,
      },
      [267256] = {
        ["npcID"] = 135759,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Earthwall Totem",
        ["encounterID"] = 2140,
      },
      [102383] = {
        ["source"] = "Captdragun-Pozzodell'Eternità",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [198817] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Warriön-Nemesis",
        ["npcID"] = 0,
      },
      [299762] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Ankoan Bladesman",
        ["npcID"] = 154297,
      },
      [294133] = {
        ["source"] = "Chungo-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [272128] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kranman",
        ["npcID"] = 0,
      },
      [298606] = {
        ["source"] = "Rhaegoris-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [257413] = {
        ["source"] = "Unholycrixus-Runetotem",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [196447] = {
        ["source"] = "Axerontas-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [6343] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [270594] = {
        ["source"] = "Withered Lashling",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 130349,
      },
      [1079] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [269571] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Hiilton-Silvermoon",
        ["npcID"] = 0,
      },
      [287825] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [17] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nepheria",
        ["npcID"] = 0,
      },
      [271107] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Roffxd-TwistingNether",
        ["npcID"] = 0,
      },
      [245388] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [96243] = {
        ["type"] = "BUFF",
        ["source"] = "Water Elemental",
        ["npcID"] = 78116,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2140,
      },
      [305395] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Nène-Pozzodell'Eternità",
        ["npcID"] = 0,
      },
      [299766] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151300,
      },
      [46968] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [236298] = {
        ["source"] = "Nitradamus",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [118297] = {
        ["source"] = "Primal Fire Elemental",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 61029,
      },
      [257415] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [245389] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [288509] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Strrex-Stormscale",
        ["npcID"] = 0,
      },
      [270598] = {
        ["source"] = "Savage Fathomjaw",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 130916,
      },
      [213405] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [205473] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [116] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [199844] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [299769] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151300,
      },
      [269576] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [268403] = {
        ["npcID"] = 136160,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "King Dazar",
        ["encounterID"] = 2143,
      },
      [268553] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [299770] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151300,
      },
      [18972] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Tidesage Defector",
        ["npcID"] = 152301,
      },
      [556] = {
        ["source"] = "Ghazzgul-Nemesis",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [257161] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Scout Marlin",
        ["npcID"] = 153364,
      },
      [299771] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151300,
      },
      [203233] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sahrot-TarrenMill",
        ["npcID"] = 0,
      },
      [268616] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mentolka-Deathwing",
        ["npcID"] = 0,
      },
      [20271] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [299772] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Vim Brineheart",
        ["npcID"] = 151309,
      },
      [11366] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [297381] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fathom Ray Broodkeeper",
        ["npcID"] = 150696,
      },
      [295167] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Niyalor",
        ["npcID"] = 0,
      },
      [271115] = {
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [212640] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [272245] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Captain Stef \"Marrow\" Quin",
        ["npcID"] = 136346,
      },
      [268905] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [299774] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Vim Brineheart",
        ["npcID"] = 151309,
      },
      [546] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zorok-Outland",
        ["npcID"] = 0,
      },
      [268904] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [115308] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mistbourne-TwistingNether",
        ["npcID"] = 0,
      },
      [204197] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [298060] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [188389] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Plutonx-Stormscale",
        ["npcID"] = 0,
      },
      [300110] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Frenzied Elemental",
        ["npcID"] = 152164,
      },
      [299776] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151310,
      },
      [285959] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mistbourne-TwistingNether",
        ["npcID"] = 0,
      },
      [8679] = {
        ["source"] = "Chewkoks-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [48045] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Kmsx-TwistingNether",
        ["npcID"] = 0,
      },
      [257420] = {
        ["source"] = "Deatthbringe-Sylvanas",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [54216] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Harry",
        ["npcID"] = 134718,
      },
      [300801] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Huntirz-Ragnaros",
        ["npcID"] = 0,
      },
      [5277] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kõr",
        ["npcID"] = 0,
      },
      [6807] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Reyzo",
        ["npcID"] = 0,
      },
      [118038] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Warriön-Nemesis",
        ["npcID"] = 0,
      },
      [300802] = {
        ["source"] = "Pridel-Draenor",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [138439] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Captain Stef \"Marrow\" Quin",
        ["npcID"] = 136346,
      },
      [299779] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151310,
      },
      [296197] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [1776] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [295174] = {
        ["source"] = "Prcdoom",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299780] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151310,
      },
      [68996] = {
        ["source"] = "Axí-DefiasBrotherhood",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [183218] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [46924] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [299781] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151310,
      },
      [268887] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [186289] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [19236] = {
        ["source"] = "Moadmoad",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [53385] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lightbringér-TheMaelstrom",
        ["npcID"] = 0,
      },
      [79176] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Scuttlestep Crab",
        ["npcID"] = 123236,
      },
      [197548] = {
        ["source"] = "Pwnance-TwistingNether",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [276754] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Skrog Tidebreaker",
        ["npcID"] = 144805,
      },
      [299783] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Kelfin Scout",
        ["npcID"] = 151309,
      },
      [261773] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Faithless Warbringer",
        ["npcID"] = 128681,
      },
      [274814] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Asdwor",
        ["npcID"] = 0,
      },
      [276755] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Unknown",
        ["npcID"] = 141553,
      },
      [115385] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Riverbottom Hunter",
        ["npcID"] = 133285,
      },
      [273685] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Выжегалка-Гордунни",
        ["npcID"] = 0,
      },
      [193455] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [259479] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grimestone Thrower",
        ["npcID"] = 125469,
      },
      [245142] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Commander Naj'ezen",
        ["npcID"] = 148605,
      },
      [194223] = {
        ["source"] = "Chery-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [300809] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Fotmwalker-Ragnaros",
        ["npcID"] = 0,
      },
      [196782] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [30283] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Luàna-Outland",
        ["npcID"] = 0,
      },
      [271640] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Shadow of Zul",
        ["npcID"] = 138489,
      },
      [193456] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sniffydh-Stormscale",
        ["npcID"] = 0,
      },
      [280852] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luss-Nemesis",
        ["npcID"] = 0,
      },
      [39207] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ice Sickle",
        ["npcID"] = 141039,
      },
      [56862] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ice Sickle",
        ["npcID"] = 141039,
      },
      [286351] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Mozunu-ChamberofAspects",
        ["npcID"] = 0,
      },
      [288156] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Evoclap-Ragnaros",
        ["npcID"] = 0,
      },
      [290364] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Qln",
        ["npcID"] = 0,
      },
      [205369] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Prcdoom",
        ["npcID"] = 0,
      },
      [298894] = {
        ["source"] = "Malfunctioning Scraphound",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 151301,
      },
      [276760] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["npcID"] = 0,
      },
      [26573] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rhunok-Runetotem",
        ["npcID"] = 0,
      },
      [108853] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [139212] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Rastari Prelate",
        ["npcID"] = 151738,
      },
      [116847] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mistbourne-TwistingNether",
        ["npcID"] = 0,
      },
      [269085] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Khradok-Ragnaros",
        ["npcID"] = 0,
      },
      [152262] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [211881] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Demosoder-Ragnaros",
        ["npcID"] = 0,
      },
      [22703] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Luàna-Outland",
        ["npcID"] = 0,
      },
      [5176] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [263165] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Prcdoom",
        ["npcID"] = 0,
      },
      [51723] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Naíledx-Ravencrest",
        ["npcID"] = 0,
      },
      [256148] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Neilea-Mal'Ganis",
        ["npcID"] = 0,
      },
      [256404] = {
        ["source"] = "Bonebeak Vulture",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 136664,
      },
      [164545] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [199600] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [277511] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rewired Harvester",
        ["npcID"] = 137153,
      },
      [198065] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Aruál",
        ["npcID"] = 0,
      },
      [285976] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [269369] = {
        ["npcID"] = 136976,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "T'zala",
        ["encounterID"] = 2143,
      },
      [292675] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [162243] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [248473] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mørfer-Stormscale",
        ["npcID"] = 0,
      },
      [2645] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Bilgehanw-TwistingNether",
        ["npcID"] = 0,
      },
      [293142] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Wantez-TarrenMill",
        ["npcID"] = 0,
      },
      [853] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lightbringér-TheMaelstrom",
        ["npcID"] = 0,
      },
      [285978] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zhoulong-Nemesis",
        ["npcID"] = 0,
      },
      [153595] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Rikko-Thunderhorn",
        ["npcID"] = 0,
      },
      [280861] = {
        ["source"] = "Emerica-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [271138] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Bombarding Zeppelin",
        ["npcID"] = 136958,
      },
      [164547] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Gigabob",
        ["npcID"] = 0,
      },
      [228260] = {
        ["source"] = "Prcdoom",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [280862] = {
        ["source"] = "Emerica-Outland",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [301844] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Clockwork Giant",
        ["npcID"] = 153991,
      },
      [199736] = {
        ["source"] = "Gìngèr",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [223143] = {
        ["source"] = "Kyvani-Frostmane",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [303380] = {
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
        ["event"] = "SPELL_AURA_APPLIED",
        ["encounterID"] = 2139,
      },
      [231843] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cakalina",
        ["npcID"] = 0,
      },
      [285981] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [199603] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Unlove",
        ["npcID"] = 0,
      },
      [48018] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Therenor-Sylvanas",
        ["npcID"] = 0,
      },
      [259478] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Grimestone Bully",
        ["npcID"] = 125467,
      },
      [212653] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [270663] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Demolisher",
        ["npcID"] = 137622,
      },
      [80576] = {
        ["source"] = "Ku'shif the Cruel",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 137773,
      },
      [299800] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Waveblade Shaman",
        ["npcID"] = 154304,
      },
      [267560] = {
        ["source"] = "Wergum-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [178207] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lilnera-Silvermoon",
        ["npcID"] = 0,
      },
      [278962] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mozunu-ChamberofAspects",
        ["npcID"] = 0,
      },
      [285472] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Duracels-Nagrand",
        ["npcID"] = 0,
      },
      [265749] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Brørik-Pozzodell'Eternità",
        ["npcID"] = 0,
      },
      [270330] = {
        ["source"] = "Azerite Chunk",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 141973,
      },
      [272679] = {
        ["npcID"] = 0,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Aldarana",
        ["encounterID"] = 2139,
      },
      [299802] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [77505] = {
        ["source"] = "Nurke-Ragnaros",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [275481] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Duracels-Nagrand",
        ["npcID"] = 0,
      },
      [297244] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Fathom Ray",
        ["npcID"] = 145967,
      },
      [348] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Lockmaan-Blackhand",
        ["npcID"] = 0,
      },
      [253595] = {
        ["source"] = "Zombíe-LaughingSkull",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [246807] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Luciferlux-Ragnaros",
        ["npcID"] = 0,
      },
      [202028] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Meowpower-Silvermoon",
        ["npcID"] = 0,
      },
      [223658] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [11196] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Unknown",
        ["npcID"] = 136517,
      },
      [288546] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Magus of the Dead",
        ["npcID"] = 148797,
      },
      [202539] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Grommgár-Draenor",
        ["npcID"] = 0,
      },
      [293664] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mørfer-Stormscale",
        ["npcID"] = 0,
      },
      [187698] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Mythico-Stormscale",
        ["npcID"] = 0,
      },
      [257946] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Akahigee-TwistingNether",
        ["npcID"] = 0,
      },
      [2825] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Jorkki-Ragnaros",
        ["npcID"] = 0,
      },
      [19483] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Infernal",
        ["npcID"] = 89,
      },
      [85948] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Atomplague-GrimBatol",
        ["npcID"] = 0,
      },
      [270125] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Captain Leadfist",
        ["npcID"] = 135796,
      },
      [274731] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Darktide Sorceress",
        ["npcID"] = 144769,
      },
      [204213] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Ådelyn-TwistingNether",
        ["npcID"] = 0,
      },
      [273345] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Fallen Hullwarden",
        ["npcID"] = 137202,
      },
      [157644] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Lexz-TwistingNether",
        ["npcID"] = 0,
      },
      [303390] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Smo-Ragnaros",
        ["npcID"] = 0,
      },
      [57994] = {
        ["source"] = "Sweetside-Stormscale",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [256715] = {
        ["source"] = "Blood Crawg",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 128005,
      },
      [197561] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [49998] = {
        ["source"] = "Kesanliali-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [299809] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Whitewave Reefwalker",
        ["npcID"] = 152560,
      },
      [259739] = {
        ["source"] = "Charged Sentinel",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 136550,
      },
      [282295] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Faost-Silvermoon",
        ["npcID"] = 0,
      },
      [34428] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [279029] = {
        ["source"] = "Nurke-Ragnaros",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [1449] = {
        ["source"] = "Nitradamus",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [202188] = {
        ["source"] = "Sweetside-Stormscale",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [297252] = {
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [299811] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Emorneth",
        ["npcID"] = 153025,
      },
      [265524] = {
        ["source"] = "Mor'fani the Exile",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 134694,
      },
      [1459] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Cerene",
        ["npcID"] = 0,
      },
      [299300] = {
        ["source"] = "Güstaaf-Stormscale",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [289577] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Prcdoom",
        ["npcID"] = 0,
      },
      [234153] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Giadinius-TwistingNether",
        ["npcID"] = 0,
      },
      [97462] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [269231] = {
        ["npcID"] = 136984,
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Reban",
        ["encounterID"] = 2143,
      },
      [299434] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Emorneth",
        ["npcID"] = 153025,
      },
      [273714] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Выжегалка-Гордунни",
        ["npcID"] = 0,
      },
      [270132] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Captain Leadfist",
        ["npcID"] = 135796,
      },
      [274738] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Krawg-Stormscale",
        ["npcID"] = 0,
      },
      [280200] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Zoldyck-Terenas",
        ["npcID"] = 0,
      },
      [265527] = {
        ["source"] = "Mor'fani the Exile",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 134694,
      },
      [31884] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Tyrsfal-Silvermoon",
        ["npcID"] = 0,
      },
      [274739] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Krawg-Stormscale",
        ["npcID"] = 0,
      },
      [3110] = {
        ["source"] = "Keptoc",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 58959,
      },
      [265528] = {
        ["source"] = "Mor'fani the Exile",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 134694,
      },
      [213771] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Sansheewow-Ravencrest",
        ["npcID"] = 0,
      },
      [262094] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Vizn-GrimBatol",
        ["npcID"] = 0,
      },
      [199412] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Pagane-Ravencrest",
        ["npcID"] = 0,
      },
      [23920] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [276846] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Decento-Silvermoon",
        ["npcID"] = 0,
      },
      [108194] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Ëlito-Aggra(Português)",
        ["npcID"] = 0,
      },
      [257512] = {
        ["source"] = "Imprisoned Pterrordax",
        ["type"] = "DEBUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 129759,
      },
      [52174] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Blackcuga",
        ["npcID"] = 0,
      },
      [198589] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Toraskil-Hellscream",
        ["npcID"] = 0,
      },
      [299306] = {
        ["source"] = "Nightshiv-TwistingNether",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [285489] = {
        ["source"] = "Elben-Ravencrest",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [255941] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Valgoth-Dragonblight",
        ["npcID"] = 0,
      },
      [274231] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Abyssal Corruptor",
        ["npcID"] = 135000,
      },
      [299307] = {
        ["source"] = "Aldarana",
        ["event"] = "SPELL_CAST_SUCCESS",
        ["npcID"] = 0,
      },
      [257225] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Wildwood Slaverer",
        ["npcID"] = 137362,
      },
      [215479] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Mistbourne-TwistingNether",
        ["npcID"] = 0,
      },
      [278326] = {
        ["event"] = "SPELL_CAST_SUCCESS",
        ["source"] = "Выжегалка-Гордунни",
        ["npcID"] = 0,
      },
      [54861] = {
        ["source"] = "Arbalest-Hellscream",
        ["type"] = "BUFF",
        ["event"] = "SPELL_AURA_APPLIED",
        ["npcID"] = 0,
      },
      [279913] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "BUFF",
        ["source"] = "Luàna-Outland",
        ["npcID"] = 0,
      },
      [124275] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Nazedo",
        ["npcID"] = 0,
      },
      [113942] = {
        ["event"] = "SPELL_AURA_APPLIED",
        ["type"] = "DEBUFF",
        ["source"] = "Monsterlijk",
        ["npcID"] = 0,
      },
    },
    ["indicator_extra_raidmark"] = false,
    ["patch_version"] = 7,
    ["aura_timer_text_font"] = "Gilroy Bold",
    ["not_affecting_combat_alpha"] = 0,
    ["aura_height"] = 15,
    ["target_highlight_alpha"] = 1,
    ["aura2_x_offset"] = -43,
    ["target_indicator"] = "NONE",
    ["target_shady_alpha"] = 0.601965308189392,
    ["saved_cvars"] = {
      ["ShowClassColorInNameplate"] = "1",
      ["nameplateOverlapV"] = "1.1",
      ["ShowNamePlateLoseAggroFlash"] = "1",
      ["nameplateShowEnemyMinus"] = "1",
      ["nameplatePersonalShowAlways"] = "0",
      ["nameplateMotionSpeed"] = "0.05",
      ["nameplateGlobalScale"] = "1",
      ["nameplateShowFriendlyTotems"] = "0",
      ["nameplateShowEnemyMinions"] = "0",
      ["nameplateShowFriendlyPets"] = "0",
      ["nameplateShowFriendlyNPCs"] = "0",
      ["nameplateSelectedScale"] = "1.15",
      ["nameplatePersonalShowInCombat"] = "1",
      ["nameplatePersonalShowWithTarget"] = "0",
      ["nameplateShowSelf"] = "0",
      ["nameplateOtherTopInset"] = "0.08",
      ["nameplateResourceOnTarget"] = "0",
      ["nameplateMotion"] = "1",
      ["NamePlateHorizontalScale"] = "1",
      ["nameplateShowAll"] = "1",
      ["nameplateMaxDistance"] = "42",
      ["nameplateShowFriendlyMinions"] = "0",
      ["nameplateSelfScale"] = "1",
      ["nameplateSelfBottomInset"] = "0.2",
      ["nameplateSelfAlpha"] = "1",
      ["nameplateShowFriendlyGuardians"] = "0",
      ["nameplateOccludedAlphaMult"] = "1",
      ["nameplateMinScale"] = "1",
      ["nameplatePersonalHideDelaySeconds"] = "0.2",
      ["nameplateSelfTopInset"] = "0.5",
      ["NamePlateVerticalScale"] = "1",
    },
    ["extra_icon_caster_name"] = false,
    ["aura_cooldown_show_swipe"] = false,
    ["cast_statusbar_texture"] = "REEEE",
    ["aura_stack_font"] = "Gilroy Bold",
    ["cast_statusbar_color_interrupted"] = {
      nil, -- [1]
      0.101960784313725, -- [2]
      0.101960784313725, -- [3]
    },
    ["aura_show_enrage"] = true,
    ["aura_timer_text_size"] = 9,
    ["aura_stack_anchor"] = {
      ["y"] = 0.600000381469727,
      ["side"] = 13,
    },
    ["number_region_first_run"] = true,
    ["indicator_raidmark_scale"] = 0.799999952316284,
    ["cast_statusbar_spark_alpha"] = 0,
    ["target_highlight_height"] = 42,
    ["cast_statusbar_color_nointerrupt"] = {
      0.501960784313726, -- [1]
      0.501960784313726, -- [2]
      0.501960784313726, -- [3]
      1, -- [4]
    },
    ["hide_friendly_castbars"] = true,
    ["OptionsPanelDB"] = {
      ["PlaterOptionsPanelFrame"] = {
        ["scale"] = 1,
      },
    },
    ["cast_statusbar_use_fade_effects"] = false,
    ["color_override_colors"] = {
      [3] = {
        0.780392156862745, -- [1]
        0.250980392156863, -- [2]
        0.250980392156863, -- [3]
      },
      [4] = {
        0.854901960784314, -- [1]
        0.772549019607843, -- [2]
        0.36078431372549, -- [3]
      },
      [5] = {
        0.294117647058824, -- [1]
        0.686274509803922, -- [2]
        0.298039215686275, -- [3]
      },
    },
    ["aura_grow_direction"] = 1,
    ["dps"] = {
      ["colors"] = {
        ["notontank"] = {
          0.294117647058824, -- [1]
          0.686274509803922, -- [2]
          0.298039215686275, -- [3]
          1, -- [4]
        },
        ["aggro"] = {
          0.780392156862745, -- [1]
          0.250980392156863, -- [2]
          0.250980392156863, -- [3]
          1, -- [4]
        },
        ["noaggro"] = {
          0.294117647058824, -- [1]
          0.686274509803922, -- [2]
          0.298039215686275, -- [3]
          1, -- [4]
        },
        ["pulling"] = {
          nil, -- [1]
          0.458823529411765, -- [2]
          0.101960784313725, -- [3]
          1, -- [4]
        },
      },
    },
    ["castbar_target_font"] = "Gilroy Bold",
    ["aura_timer_text_shadow_color"] = {
      nil, -- [1]
      nil, -- [2]
      nil, -- [3]
      0, -- [4]
    },
    ["cast_statusbar_spark_width"] = 4,
    ["target_highlight_texture"] = "Interface\\AddOns\\Plater\\images\\selection_indicator6",
  }
end
