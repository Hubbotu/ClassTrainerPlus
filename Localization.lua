local _, ctp = ...

local GetLocale = GetLocale

local localeText = {
    enUS = {
        IGNORED = "Ignored",
        TRAIN_ALL = "Train All"
    },
    frFR = {
        IGNORED = "Ignoré",
        TRAIN_ALL = "Tout entrainer"
    }
    }
	ruRU = {
        IGNORED = "Игнорируется",
        TRAIN_ALL = "Изучить все"
    }
}

ctp.L = localeText["enUS"]
local locale = GetLocale()
if (locale == "enUS" or locale == "enGB" or localeText[locale] == nil) then
    return
end
for k, v in pairs(localeText[locale]) do
    ctp.L[k] = v
end
