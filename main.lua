local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "سكربت DEVIL_GRIMREAPER | Muscle Legends",
   LoadingTitle = "جاري التحميل...",
   LoadingSubtitle = "بواسطة DEVIL_GRIMREAPER",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DevilGrimReaper_Configs", 
      FileName = "MainConfig"
   }
})

-- إنشاء الخانات الأربعة
local Tab1 = Window:CreateTab("FAST REB", 4483362458)
local Tab2 = Window:CreateTab("Fast Farm", 4483362458)
local Tab3 = Window:CreateTab("Misc", 4483362458)
local Tab4 = Window:CreateTab("Info", 4483362458)

--- وظيفة تجهيز الـ 7 بتات تلقائياً ---
local function equipSevenPets(petName)
    for i = 1, 7 do
        -- إرسال أمر التجهيز للماب 7 مرات (بافتراض أنك تملك 7 نسخ أو يسمح بتكرار النوع)
        game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer(petName)
    end
end

--- الخانة الأولى: FAST REB ---

-- 1. خيار ريبرث سريع (تبديل ذكي للبتات)
Tab1:CreateToggle({
   Name = "ريبرث سريع (تجهيز 7 بتات تلقائي)",
   CurrentValue = false,
   Flag = "AutoRebirthLogic",
   Callback = function(Value)
      _G.FastReb = Value
      while _G.FastReb do
         -- أولاً: تجهيز 7 بتات Swift Samurai للتمرين السريع
         equipSevenPets("Swift Samurai")
         
         -- تفعيل الأداة (الأثقال)
         local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
         if tool then tool:Activate() end
         
         -- ثانياً: عند الوصول لمرحلة الريبرث (تبديل لـ 7 بتات Tribal Overlord)
         -- ملاحظة: يمكنك إضافة شرط هنا لفحص القوة الحالية قبل التبديل
         -- equipSevenPets("Tribal Overlord")
         -- game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer()
         
         task.wait(0.01)
      end
   end,
})

-- 2. زر تمرين سريع فقط
Tab1:CreateButton({
   Name = "تمرين سريع (7x Swift Samurai)",
   Callback = function()
       equipSevenPets("Swift Samurai")
       Rayfield:Notify({
          Title = "تم التجهيز",
          Content = "تم وضع 7 بتات Swift Samurai بنجاح",
          Duration = 3,
          Image = 4483362458,
       })
   end,
})

--- الخانة الرابعة: Info ---
Tab4:CreateParagraph({Title = "المبرمج", Content = "هذا السكربت ملك لـ DEVIL_GRIMREAPER. يمنع النسخ بدون إذن."})

Rayfield:Notify({
   Title = "DEVIL_GRIMREAPER Ready!",
   Content = "السكربت جاهز للعمل الآن",
   Duration = 5,
   Image = 4483362458,
})
