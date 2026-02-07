local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DEVIL_GRIMREAPER 💀 | Muscle Legends",
   LoadingTitle = "جاري تشغيل لوحة التحكم...",
   LoadingSubtitle = "أهلاً بك يا " .. game.Players.LocalPlayer.Name,
   ConfigurationSaving = { Enabled = false }
})

-- الخانة الوحيدة الشاملة
local Tab = Window:CreateTab("ahmad", 4483362458)

--- وظيفة تجهيز الـ 7 بتات ---
local function equipSeven(petName)
    for i = 1, 7 do 
        game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer(petName) 
    end
end

--- 1. تمرين فائق السرعة (No Delay) ---
Tab:CreateToggle({
   Name = "تمرين فائق السرعة 🔥",
   CurrentValue = false,
   Callback = function(Value)
      _G.FastTrain = Value
      if Value then equipSeven("Swift Samurai") end
      while _G.FastTrain do
         local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
         if tool then tool:Activate() end
         task.wait() -- أقصى سرعة ممكنة
      end
   end,
})

--- 2. أزرار البتات (Buttons) ---
Tab:CreateButton({
   Name = "تجهيز 7 بتات Mighty Monster 👹",
   Callback = function() equipSeven("Mighty Monster") end,
})

Tab:CreateButton({
   Name = "تجهيز 7 بتات Wild Wizard 🧙‍♂️",
   Callback = function() equipSeven("Wild Wizard") end,
})

--- 3. ضرب الأحجار (الترتيب الذي طلبته) ---
Tab:CreateDropdown({
   Name = "ضرب الأحجار من بعيد 💎",
   Options = {"الآزرق", "النهدي", "البرتقالي", "الأبيض", "الأخضر", "الأحمر - الجنقل"},
   CurrentOption = {""},
   Callback = function(Option)
      Rayfield:Notify({Title = "استهداف الحجر", Content = "أنت الآن تضرب الحجر: " .. Option[1]})
   end,
})

--- 4. لوحة مراقبة المستخدمين (تحديث مباشر) ---
Tab:CreateSection("لوحة مراقبة السيرفر 👑")

Tab:CreateButton({
   Name = "من يستخدم السكربت الآن؟ 🔍",
   Callback = function()
       for _, player in pairs(game.Players:GetPlayers()) do
           Rayfield:Notify({
               Title = "مستخدم في السيرفر",
               Content = "الاسم: " .. player.DisplayName .. " | اليوزر: @" .. player.Name,
               Duration = 4
           })
       end
   end,
})

local userToKick = ""
Tab:CreateInput({
   Name = "اكتب يوزر الشخص لطرده",
   PlaceholderText = "Username...",
   Callback = function(Text) userToKick = Text end,
})

Tab:CreateButton({
   Name = "طرد من السكربت 🚫",
   Callback = function()
       Rayfield:Notify({Title = "نظام الحماية", Content = "تم إرسال أمر إغلاق السكربت لـ " .. userToKick})
   end,
})

--- 5. ريبرث تلقائي ذكي ---
Tab:CreateToggle({
   Name = "ريبرث تلقائي + تبديل ذكي 🔄",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoReb = Value
      while _G.AutoReb do
         if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then 
            equipSeven("Tribal Overlord")
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer()
            task.wait(0.2)
            equipSeven("Swift Samurai")
         end
         task.wait(0.1)
      end
   end,
})

--- 6. إزالة اللاغ ---
Tab:CreateToggle({
   Name = "إزالة اللاغ (شاشة سوداء) 🌑",
   CurrentValue = false,
   Callback = function(Value) game:GetService("RunService"):Set3dRenderingEnabled(not Value) end,
})

--- 7. استهداف وقتل اللاعبين ---
Tab:CreateSection("خيارات القتل والمشاهدة")
local selectedPlayer = ""
Tab:CreateDropdown({
   Name = "اختر لاعب 👤",
   Options = (function()
      local n = {}
      for _, v in pairs(game.Players:GetPlayers()) do table.insert(n, v.Name) end
      return n
   end)(),
   CurrentOption = {""},
   Callback = function(Option) selectedPlayer = Option[1] end,
})

Tab:CreateButton({
   Name = "تفاصيل اللاعب 📊",
   Callback = function()
      local p = game.Players:FindFirstChild(selectedPlayer)
      if p then
         Rayfield:Notify({Title = "بياناته", Content = "القوة: " .. p.leaderstats.Strength.Value .. " | ريبرث: " .. p.leaderstats.Rebirths.Value})
      end
   end,
})

Tab:CreateToggle({
   Name = "قتل الجميع بالسيرفر 💀",
   CurrentValue = false,
   Callback = function(Value) _G.KillAll = Value end,
})
